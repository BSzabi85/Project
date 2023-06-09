use SeniorCare;
Go

RaisError ('Creating/altering procedures.',0 ,1) With NoWait;
Go

Create or Alter Proc uspAddPType
@TypeName NVarchar(64)
as
Begin
	If exists (Select 1 From Person.Type Where TypeName = @TypeName)
	Begin
		Print 'Duplicate found!!!';
	End;
	Else
	Begin
		Insert Into Person.Type
			(
			TypeName,
			DateModified
			)
			Values
			(
			@TypeName,
			GetDate()
			);
	End;
End;
GO

Create or Alter Proc uspValidCNP
@PNNTest Nvarchar(13),
@Result Int Output
as
Begin
	Declare @ConvDate Date = TRY_CONVERT(Date, SUBSTRING(@PNNTest,2,6),12);
	Declare @I Int = 1;
	Declare @PRes Int = 0;
	Declare @Pon NVarchar(12) = '279146358279'
	Set @Result = 0;
	If LEN(@PNNTest)<>13	   
		Begin	
			RaisError ('PNN lenght does not meet the required length!',0 ,1) With NoWait; --Lungime eronata.
  			Set @Result = 1;
			Return;
		End;
	Else
	If ISNUMERIC(@PNNTest)<>1 and @PNNTest like '%[^0-9]%' 
		Begin
			RaisError ('PNN must contain only numbers!',0 ,1) With NoWait;  --Nu este format doar din cifre.
   			Set @Result = 2;
			Return;
		End;
	Else	
	IF Left(@PNNTest,1) not like '[1-9]'
		Begin 
			RaisError ('First number can not be 0!',0 ,1) With NoWait; --Se verifica, daca prima cifra este intr 1 si 9
   			Set @Result = 3; 
			Return;
		End;
	Else
	IF @ConvDate is NULL Or @ConvDate < '1753-01-01' Or @ConvDate > '9999-12-31'
		Begin
			RaisError ('Invalid date!',0 ,1) With NoWait; --Se verifica daca data nasterii este valida
  			Set @Result = 4; 
			Return;
		End;
	Else
	IF CAST(SUBSTRING(@PNNTest,8,2) as TinyInt) not between 1 and 52
		Begin
			RaisError ('Invalid region code!',0 ,1) With NoWait; --Se verifica validitatea codului de judet
   			Set @Result = 5;
			Return;
		End;
	Else
	Begin
	While @I < LEN(@PNNTest)
		Begin
			Set @PRes = @PRes + (CAST(SUBSTRING(@PNNTest,@I,1) as Int) * CAST(SUBSTRING(@Pon,@I,1) as Int));
			Set @I += 1;
		End;
		
	While @PRes>=11
		Begin
			Set @PRes -= 11;
		End;
		
	If CAST(SUBSTRING(@PNNTest, 13,1) As TinyInt)<>@PRes 
		Begin			
			RaisError ('Invalid control number!',0 ,1) With NoWait; --Se verifica cifra de control
   			Set @Result = 6;
			Return;
		End;
	End;
End;
Go

Create or Alter Proc uspAddContact
@Id Int,
@CName as NVarchar(256)
as
Begin
	If Exists ( Select 1 From Person.Contact Where ContactName = @CName)
	Begin
		Print 'Duplicate found!!!';
	End
	Else
	Begin
		Insert Into Person.Contact 
			(
			PersonID,
			ContactName, 
			DateModified
			) 
			Values 
			(
			@Id,
			@CName,
			Getdate()
			);
	End
End;
Go

Create or Alter Proc uspAddAddress
@PID Int,
@ALine1 NVarchar(512) = NULL,
@ALine2 NVarchar(512) = NULL,
@City NVarchar(128) = NULL,
@Prov NVarchar(64) = NULL,
@Country NVarchar(64) = 'Romania',
@PCode NVarchar(32) = NULL
as
Begin
	Insert Into Person.Address
		(
		PersonID, 
		AddressLine1, 
		AddressLine2, 
		City,
		Province, 
		Country, 
		PostalCode, 
		DateModified
		) 
		Values
		(
		@PID, 
		@ALine1, 
		@ALine2, 
		@City,
		@Prov, 
		@Country, 
		@PCode, 
		Getdate()
		);
End;
Go

Create or Alter Proc uspAddPhone
@ContID Int,
@PhNo NVarchar(15)
as
Begin
	Insert Into Person.Phone
		(
		ContactID,
		PhoneNo,
		DateModified
		)
		Values
		(
		@ContID,
		@PhNo,
		Getdate()
		);
End;
Go

Create or Alter Proc uspAddEmail
@ContID Int,
@Email NVarchar(256)
as
Begin
	Insert Into Person.Email
		(
		ContactID,
		EmailAddress,
		DateModified
		)
		Values
		(
		@ContId,
		@Email,
		Getdate()
		);
End;
Go

Create or Alter Proc uspAddLogin
@PID Int,
@User NVarchar(32),
@PHash Varchar(128)
as
Begin
	Insert Into Person.Login
		(
		PersonID,
		UserName,
		PasswordHash,
		DateModified 
		)
		Values
		(
		@PID,
		@User,
		HASHBYTES('SHA2_256', @PHash),
		Getdate()
		);
End;
Go

Create or Alter Proc uspAddPerson
@PType Tinyint,
@FName NVarchar(50),
@MName NVarchar(50) = '',
@LName Nvarchar(50),
@PNN NVarchar(13),
@ALine1 NVarchar(512) = NULL,
@ALine2 NVarchar(512) = NULL,
@City NVarchar(128) = NULL,
@Prov NVarchar(64) = NULL,
@Country NVarchar(64) = 'Romania',
@PCode NVarchar(32) = NULL,
@PhoneNo NVarchar(15) = NULL,
@Email NVarchar(256) = NULL,
@UserName NVarchar(32) = NULL,
@PHash Varchar(128)
as
Begin
	Declare @Res as Int;
	Declare @FullName as NVarchar(150) = '';
	Declare @CID as Int = 0;
	Declare @LastID Int;
	Set @Res = 0;
	--Exec uspValidCNP @PNNTest = @PNN, @Result = @Res Output; --Disabled due to sensitive data!!!
	If not exists ( Select 1 From Person.Person Where PNN = @PNN ) 
	Begin
		If @Res = 0 
			Begin
				If Len(RTrim(LTrim(IsNull(@MName,''))))<>0 
					Begin
						Set @FullName = RTrim(LTrim(@FName)) + ' ' + RTrim(LTrim(@MName)) + ' ' + RTrim(LTrim(@LName));
					End;
				Else
					Begin
						Set @FullName = RTrim(LTrim(@FName)) + ' ' + RTrim(LTrim(@LName));
					End;
	
				Insert Into Person.Person 
					(
					PersonType,	
					FirstName, 
					MiddleName, 
					LastName, 
					PNN, 
					DateModified
					) 
					Values
					(
					@PType, 
					@FName, 
					@MName, 
					@LName, 
					@PNN, 
					Getdate()
					);
				
				Select Top 1 @LastID = PersonID  from Person.Person Where PNN=@PNN
	
				Exec uspAddContact @ID = @LastID, @CName = @FullName;
	
				Select 
					@CID = PersonID 
				From
					Person.Person
				Where
					PNN = @PNN;
	
				Exec uspAddAddress @PID = @CID, @ALine1 = @ALine1, @ALine2 = @ALine2, 
				@City = @City, @Prov = @Prov, @Country = @Country, @PCode = @PCode;
	
				Select 
					@CID = ContactID
				From
					Person.Contact
				Where
					ContactName = @FullName;
	
				Exec uspAddPhone @ContID = @CID, @PhNo = @PhoneNo;
				
				If @PType = 6 Set @PHash = ' ';

				If @PType > 0 and @PType < 6
					Begin
						Exec uspAddLogin @PID = @CID, @User = @UserName, @PHash = @PHash
					End;
			End;
		End;
End	;
Go

Create or Alter Proc uspAddMedicines
@MedName NVarchar(128),
@MedCon Decimal(10,2) = NULL,
@ConType NVarchar(10) = NULL, 
@Desc NVarchar(Max) = NULL,
@Mod Int
as
Begin
	If not exists ( Select 1 From Medical.Medicines Where MedicineName = @MedName)
		Begin
			Insert Into Medical.Medicines
				(
				MedicineName,
				MedicineConcentration,
				ConcentrationType,
				Description,
				ModifierID,
				DateModified
				)
				Values
				(
				@MedName,
				@MedCon,
				@ConType,
				@Desc,
				@Mod,
				Getdate()
				);
		End;
	Else
		Begin
			RaisError(@Medname, 0, 1) With NoWait;
			RaisError('The medicine already exists...', 0, 1) With NoWait;
		End;
End;
Go

Create or Alter Proc uspAddMedHour
@MedTime Varchar(5)
as
Begin
	If not exists ( Select 1 From Medical.MedicationHour Where MedicationTime = @MedTime)
		Begin
			Insert Into Medical.MedicationHour
				(
				MedicationTime,
				DateModified
				)
				Values
				(
				Cast(@MedTime as time),
				GETDATE()
				);
		End;
	Else
		Begin
			RaisError ('The medication hour already exists!!!', 0, 1) With NoWait;
		End
End;
Go

Create or Alter Proc uspMedication
@PersID Int,
@MedID Int,
@MedHID Int,
@Dos NVarchar(10)
as
Begin
	Insert Into Medical.Medication
		(
		PersonID,
		MedicineID,
		MedicationHourID,
		Dosage,
		DateModified
		)
		Values
		(
		@PersID,
		@MedID,
		@MedHID,
		@Dos,
		GetDate()
		);
End;
Go

Create or Alter Proc uspHealth
@PersID Int,
@BloodPresHi Int = NULL,
@BloodPresLo Int = NULL,
@HeartRt Int = NULL,
@BloodSg Int = NULL,
@Temp Int = NULL,
@Satur Int = NULL,
@UrineQty Int = NULL,
@Band NVarchar(512) = NULL,
@LogID Int,
@ChkDt Date
as
Begin
	Insert Into Medical.Health
		(
		PersonID,
		BloodPressureHigh,
		BloodPressureLow,
		HeartRate,
		BloodSugar,
		Temperature,
		Saturation,
		UrineQTY,
		Bandages,
		LoginID,
		CheckDate,
		DateModified
		)
		Values
		(
		@PersID,
		@BloodPresHi,
		@BloodPresLo,
		@HeartRt,
		@BloodSg,
		@Temp,
		@Satur,
		@UrineQty,
		@Band,
		@LogID,
		@ChkDt,
		GetDate()
		);
End;
Go

Create or Alter Proc uspEmergencies
@PersID Int,
@BloodPresHi Int = NULL,
@BloodPresLo Int = NULL,
@HeartRt Int = NULL,
@BloodSg Int = NULL,
@Temp Int = NULL,
@Satur Int = NULL,
@Desc NVarchar(Max),
@LogID Int,
@EmgDt Date
as
Begin
	Insert Into Medical.Emergencies
		(
		PersonID,
		BloodPressureHigh,
		BloodPressureLow,
		HeartRate,
		BloodSugar,
		Temperature,
		Saturation,
		EmgDescription,
		LoginID,	
		EmergencieDate,
		DateModified
		)
		Values
		(
		@PersID,
		@BloodPresHi,
		@BloodPresLo,
		@HeartRt,
		@BloodSg,
		@Temp,
		@Satur,
		@Desc,
		@LogID,
		@EmgDt,
		GetDate()
		);
End;
Go

RaisError ('Done.',0 ,1) With NoWait;
Go

RaisError ('Creating views.',0 ,1) With NoWait;
Go

Create or Alter View vMedication
As
Select 
	Concat(Pp.FirstName ,
	Case When Pp.MiddleName <> '' 
		Then Concat(' ', Pp.MiddleName) 
		Else '' 
	End, 
	' ' , 
	Pp.LastName) As [Nume],
	Concat(
		MedC.MedicineName, 
		' ', 
		MedC.MedicineConcentration, 
		MedC.ConcentrationType) As [Medicament],
	Concat(
		Right('0' + Cast(Datepart(Hour, MedH.MedicationTime) As Varchar(2)),2), 
		':', 
		Right('0' + Cast(Datepart(Minute, MedH.MedicationTime) As Varchar(2)),2)) As [Ora],
	Med.Dosage As [Dozaj]
	From Person.Person Pp
	Join Medical.Medication Med
	On Pp.Personid = Med.Personid
	Join Medical.MedicationHour MedH
	On Med.MedicationHourID = MedH.MedicationHourID
	Join Medical.Medicines MedC
	On MedC.MedicineID = Med.MedicineID;
Go

RaisError ('Done.',0 ,1) With NoWait;
Go

Use master;
Go
