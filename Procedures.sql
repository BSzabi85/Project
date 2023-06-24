use SeniorCare;
Go

Print 'Creating/altering procedures...';
Go

Create or Alter Proc uspAddPType
@TypeName NVarchar(64)
as
Begin
	If exists (Select 1 From Person.Type Where TypeName = @TypeName)
	Begin
		Print 'Warning!!! Person type ' + Upper(@TypeName) + ' already exists...';
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
			Print 'Warning!!! Personal Numeric Number (PNN/CNP) lenght does not meet the required length...'; --Lungime eronata.
  			Set @Result = 1;
			Return;
		End;
	Else
	If ISNUMERIC(@PNNTest)<>1 and @PNNTest like '%[^0-9]%' 
		Begin
			Print 'Warning!!! Personal Numeric Number (PNN/CNP) must contain only numbers...';  --Nu este format doar din cifre.
   			Set @Result = 2;
			Return;
		End;
	Else	
	IF Left(@PNNTest,1) not like '[1-9]'
		Begin 
			Print 'Warning!!! First number can not be 0...'; --Se verifica, daca prima cifra este intr 1 si 9
   			Set @Result = 3; 
			Return;
		End;
	Else
	IF @ConvDate is NULL Or @ConvDate < '1753-01-01' Or @ConvDate > '9999-12-31'
		Begin
			Print 'Warning!!! Invalid date...'; --Se verifica daca data nasterii este valida
  			Set @Result = 4; 
			Return;
		End;
	Else
	IF CAST(SUBSTRING(@PNNTest,8,2) as TinyInt) not between 1 and 52
		Begin
			Print 'Warning!!! Invalid region code...'; --Se verifica validitatea codului de judet
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
			Print 'Warning!!! Invalid control number...'; --Se verifica cifra de control
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
		Print 'Warning!!! The contact ' + Upper(@CName) + ' already exists...';
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
			Print 'Warning!!! The medicine ' + upper(@MedName) + ' already exists...';
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
			Print 'Warning!!! The medication hour already exists...';
		End
End;
Go

Create or Alter Proc uspMedication
	@PersID Int,
	@MedID Int,
	@MedHID Int,
	@Dos NVarchar(20),
	@Nec TinyInt = 1
	as
	Begin
		Insert Into Medical.Medication
			(
			PersonID,
			MedicineID,
			MedicationHourID,
			Dosage,
			Necessity,
			DateModified
			)
			Values
			(
			@PersID,
			@MedID,
			@MedHID,
			@Dos,
			@Nec,
			GetDate()
			);
	End;
Go

Create or Alter Proc uspGetPersonName
@PersID Int,
@PersName NVarchar(256) Output
As
Begin
	Set @PersName = (
		Select 
			Concat(p.FirstName ,
			Case When p.MiddleName <> '' 
				Then Concat(' ',p. MiddleName) 
				Else '' 
			End, 
			' ' , 
			p.LastName) 
		From Person.Person p
		Where p.PersonID = @PersID
	)
End;
Go

Create Or Alter Proc uspGetMedName
@MedID Int,
@MediName NVarchar(256) Output
As
Begin
	Set @MediName = (
	Select 
		Concat
		(
		MedicineName, 
		' ', 
		MedicineConcentration, 
		ConcentrationType
		) 
	From Medical.Medicines 
	Where MedicineID = @MedID);
End;
Go

Create or Alter Proc uspCreateDynamicView
as
Begin
    Declare @Columns NVarchar(MAX);
    Declare @Sql NVarchar(MAX);

    -- Generate the list of columns excluding ID, PersonID, and MedID.

    Select @Columns = STRING_AGG(QUOTENAME(COLUMN_NAME), ', ')
    From INFORMATION_SCHEMA.COLUMNS
    Where TABLE_NAME = 'TempTbl'
        and COLUMN_NAME not in ('ID', 'PersonID', 'MedicineID');

    -- Create the dynamic SQL statement for the view.

    Set @Sql = N'Create or Alter View vViewMedicationList AS
                 Select ' + @Columns + N'
                 From Medical.TempTbl;';

    -- Execute the dynamic SQL.

    Exec sp_executesql @Sql;
End;
Go

Create or Alter Proc uspCreateTempTbl
As
Begin

	--Declare general variables.

	Declare @ColName Varchar(20);
	Declare @RowCount Int;
	Declare @CCount Int;
	Declare @Sql NVARCHAR(Max);
	Declare @Dosage NVarchar(20);

	Set NoCount On;

	Print 'Preparing temporary table...';

	Set @CCount = 1;

	--Erase old table if exists.

	Drop Table if exists Medical.TempTbl;

	Set @RowCount = (Select Max(MedicationHourID) From Medical.MedicationHour);

	-- Count Medication Hours to create the propper ammount of columns.

	While @CCount <= @RowCount
	Begin

		Set @ColName = 
			(
			SELECT CONCAT
				(
				RIGHT('0' + CAST(DATEPART(Hour, MedicationTime) AS VARCHAR(2)), 2),
				':',
				RIGHT('0' + CAST(DATEPART(Minute, MedicationTime) AS VARCHAR(2)), 2)
				)
			FROM Medical.MedicationHour
			Where MedicationHourID = @CCount
			);

		-- Create the temporary table with the necessary columns.

		If not exists (Select 1 From sys.tables Where Name='TempTbl' and Type = 'U') 
			Begin
				Set @Sql = 
					N'Create Table Medical.TempTbl
						(
						ID Int Primary Key Identity(1,1) not null, 
						PersonID Int not null, 
						MedicineID Int not null, 
						Nume_Persoana NVarChar(256) not null, 
						Medicament Varchar(128) not null,
						' + QUOTENAME(@ColName) + ' NVarchar(20))';
				Exec sp_executesql @Sql;
			End;
		Else
			Begin
				Set @Sql = 
					N'Alter Table Medical.TempTbl Add ' + QUOTENAME(@ColName) + ' NVarchar(20)';
				Exec sp_executesql @Sql;
			End;

		Set @CCount += 1;
	End;

	Alter Table Medical.Temptbl Add Necesitate Tinyint;

	-- Get number of patients.

	Declare @PCount Int = 1;
	Set @Sql = '';	
	Set @RowCount = 
		(
		Select count(distinct PersonID)
		From Medical.Medication
		);
		
	While @PCount <= @RowCount
	Begin

		Declare @PName NVarchar(256) = '';
		Declare @Medicament NVarChar(256) = '';
		Declare @PID Int;
		Declare @MCount Int = 1;

		With NmbRows as
			(
			Select distinct MyTbl.PersonID as RowNum
			From Medical.Medication	MyTbl
			) 

		Select @Pid = RowNum
		From  (
			Select 
			*,
			ROW_NUMBER() Over (Order by RowNum) as RowNr 
			From NmbRows) as NewTbl
		Where NewTbl.RowNr = @PCount;
		
		--Get pacient name

		Exec uspGetPersonName @PersID = @PID, @PersName = @PName Output;
		
		--Count the number of medicines for current pacient.

		While @MCount <= 
			(
			Select Count(Distinct MedicineID) 
			From Medical.Medication 
			Where PersonID = @PID
			)
		Begin

			Declare @HCount int = 1;
			Declare @MID Int;

			Set @MID = 
				(
				Select MedicineID 
				From 
					(
					Select 
					distinct t.MedicineID, 
					ROW_NUMBER () over(order by t.MedicineID) as RowNr
					From Medical.Medication t 
					Where t.PersonID = @PID 
					group by t.MedicineID
					) MedID
				Where MedID.RowNr = @MCount
				);

			-- Get medicine name

			Exec uspGetMedName @MedID = @MID, @MediName = @Medicament Output;

			-- Insert pacient ID, medicine ID, patient name and medicine name into temporary table.

			Insert Into Medical.TempTbl 
				(
				PersonID,
				MedicineID,
				Nume_Persoana, 
				Medicament
				)
				Values 
				(
				@PID,
				@MID,
				@PName,
				@Medicament
				);

			-- Get dosage of medicine for each medication hour.

			While @HCount <= 
				(
				Select 
				Max(MedicationHourID) 
				From Medical.MedicationHour
				)
				Begin
				
					Select @ColName = Column_Name
					From INFORMATION_SCHEMA.COLUMNS
					Where TABLE_NAME = 'TempTbl' and ORDINAL_POSITION = @HCount + 5;

					Select @Dosage = Isnull((
										Select Top 1 m.Dosage
										From Medical.Medication m
										Join Medical.MedicationHour h
										On m.MedicationHourID = h.MedicationHourID
										Where h.MedicationHourID = @HCount and m.PersonID = @PID and m.MedicineID = @MID
										),0);

					-- Insert dosage into table depending on medication hour.

					Set @Sql = 
						N'Update Medical.TempTbl Set ' + QUOTENAME(@ColName) + N' = @Dosage
						Where PersonID = @PID and MedicineID = @MID';

					Exec sp_executesql @Sql, N'@Dosage NVarchar(20), @MID Int, @Pid Int', @Dosage, @MID, @PID;

					Set @HCount += 1;
				End; 

				-- Get and add medicine Necesitate for current patient and medicine
				-- Some medicines are taken only if needed, and asuming a medication is either mandatory or only when needed through the whole day.
				
				Update Medical.TempTbl  
				Set Necesitate = 
					(
					Select distinct Necessity 
					From Medical.Medication 
					Where PersonID = @Pid and MedicineID = @MID
					)
				Where PersonID = @PID and MedicineID = @MID;

			Set @MCount += 1;
		End;
		Set @PCount += 1;
	End;
	Exec uspCreateDynamicView
	Print 'Done.';
End;
Go

Print 'Done.';

Use master;
Go
