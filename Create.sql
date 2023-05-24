If not exists (Select name from sys.databases where name = 'SeniorCare')
	Begin
		RaisError ('Creating database "SeniorCare".',0 ,1) With NoWait;
		Create Database SeniorCare;
		RaisError ('"SeniorCare" database created successfully.',0 ,1) With NoWait;
	End;
Go

RaisError ('Using "SeniorCare" database.',0 ,1) With NoWait;
Use SeniorCare;
Go

RaisError ('Creating database schemas.',0 ,1) With NoWait;
Go

If not exists (Select 1 From INFORMATION_SCHEMA.SCHEMATA Where SCHEMA_NAME = 'Person')
	Begin
		Exec ('Create Schema Person Authorization dbo');
		RaisError ('"Person" schema created successfully.',0 ,1) With NoWait;
	End;
Go

If not exists (Select 1 From INFORMATION_SCHEMA.SCHEMATA Where SCHEMA_NAME='Medical')
	Begin
		Exec('Create Schema Medical Authorization dbo');
		RaisError ('"Medical" schema created successfully.',0 ,1) With NoWait;
	End;
Go

RaisError ('Creating database tables.',0 ,1) With NoWait;
Go

If not exists ( Select 1 From sys.tables Where Name='Person.Type' and Type = 'U')
Begin
	Create Table Person.[Type]
		(
		TypeID Tinyint Primary Key Identity(1,1) not NULL,
		TypeName NVarchar(64) not NULL,
		DateModified DateTime not NULL
		);
	RaisError ('Person.Type table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Person.ContactName' and Type = 'U')
Begin
	Create Table Person.ContactName
		(
		ContactID Int Primary Key Identity(1,1) not NULL,
		ContactName NVarchar(256) not NULL,
		DateModified DateTime not NULL
		);
	RaisError ('Person.ContactName table created successfully.',0 ,1) With NoWait;
End;
Go
	
If not exists ( Select 1 From sys.tables Where Name='Person.Person' and Type = 'U')
Begin
	Create Table Person.Person
		(
		PersonID Int Primary Key Identity(1,1) not NULL,
		PersonType Tinyint not NULL,
		FirstName NVarchar(50) not NULL,
		MiddleName NVarchar(50) NULL,
		LastName NVarchar(50) not NULL,
		PNN NVarchar(13) not NULL,
		DateModified Datetime not NULL,
		Foreign Key (PersonType) References Person.Type(TypeID)
		);
	RaisError ('Person.Person table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Person.Address' and Type = 'U')
Begin
	Create Table Person.Address
		(
		AddressID Int Primary Key Identity(1,1) not NULL,
		PersonID Int not NULL,
		AddressLine1 NVarchar(512) NULL,
		AddressLine2 NVarchar(512) NULL,
		City NVarchar(128) NULL,
		Province NVarchar(64) NULL,
		PostalCode NVarchar(30) NULL,
		DateModified DateTime not NULL,
		Foreign Key (PersonID) References Person.Person(PersonID)
		);
	RaisError ('Person.Address table created successfully.',0 ,1) With NoWait;
End;
Go
	
If not exists ( Select 1 From sys.tables Where Name='Person.Phone' and Type = 'U')
Begin
	Create Table Person.Phone
		(
		PhoneID Int Primary Key Identity(1,1) not NULL,
		PersonID Int not NULL,
		ContactID Int not NULL,
		PhoneNO NVarchar(15) NULL,
		DateModified DateTime not NULL,
		Foreign Key (PersonID) References Person.Person(PersonID),
		Foreign Key (ContactID) References Person.ContactName(ContactID)
		);
	RaisError ('Person.Phone table created successfully.',0 ,1) With NoWait;
End;
Go
	
If not exists ( Select 1 From sys.tables Where Name='Person.Email' and Type = 'U')
Begin
	Create Table Person.Email
		(
		EmailID Int Primary Key Identity(1,1) not NULL,
		PersonID Int not NULL,
		ContactID Int not NULL,
		EmailAddress NVarchar(256) NULL,
		DateModified Datetime not NULL,
		Foreign Key (PersonID) References Person.Person(PersonID),
		Foreign Key (ContactID) References Person.ContactName(ContactID)
		);
	RaisError ('Person.Email table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Person.Login' and Type = 'U')
Begin
	Create Table Person.Login
		(
		LoginID Int Primary Key Identity(1,1) not NULL,
		PersonID Int not NULL,
		UserName NVarchar(32) not NULL,
		PasswordHash Varchar(64) not NULL,
		DateModified DateTime not NULL,
		Foreign Key (PersonID) References Person.Person(PersonID)
		);
	RaisError ('Person.Login table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Medical.Medicines' and Type = 'U')
Begin
	Create Table Medical.Medicines
		(
		MedicineID Int Primary Key Identity(1,1) not NULL,
		MedicineName NVarchar(128) not NULL,
		MedicineConcentration Int not NULL,
		Description NVarchar(Max) NULL,
		DateModified DateTime not NULL,
		ModifierID Int not NULL,
		Foreign Key (ModifierID) References Person.Person(PersonID)
		);
	RaisError ('Medical.Medicines table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Medical.Medicines' and Type = 'U')
Begin
Create Table Medical.MedicationHour(
	MedicationHourID Int Primary Key Identity not NULL,
	MedicationTime Time not NULL,
	DateModified Datetime not NULL);
	RaisError ('Medical.Medicines table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Medical.Medication' and Type = 'U')
Begin
	Create Table Medical.Medication
		(
		MedicationID Int Primary Key Identity(1,1) not NULL,
		PersonID Int not NULL,
		MedicineID Int not NULL,
		MedicationHourID Int not NULL,
		DateModified Datetime not NULL,
		Foreign Key (PersonID) References Person.Person(PersonID),
		Foreign Key (MedicineID) References Medical.Medicines(MedicineID),
		Foreign Key (MedicationHourID) References Medical.MedicationHour(MedicationHourID)
		);
	RaisError ('Medical.Medication table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Medical.Health' and Type = 'U')
Begin
	Create Table Medical.Health
		(
		HealthID Int Primary Key Identity(1,1) not NULL,
		PersonID Int not NULL,
		BloodPressureHigh Int NULL,
		BloodPressureLow Int NULL,
		HeartRate Int NULL,
		BloodSugar Int NULL,
		Temperature Tinyint NULL,
		Saturation Tinyint NULL,
		UrineQTY Int NULL,
		Bandages NVarchar(128) NULL,
		LoginID Int not NULL,
		DateModified Datetime not NULL,
		Foreign Key (PersonID) References Person.Person(PersonID),
		Foreign Key (LoginID) References Person.Login(LoginID)
		);
	RaisError ('Medical.Health table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Medical.Emergencies' and Type = 'U')
Begin
	Create Table Medical.Emergencies
		(
		EmergencyID Int Primary Key Identity(1,1) not NULL,
		PersonID Int not NULL,
		BloodPressureHigh Int NULL,
		BloodPressureLow Int NULL,
		HeartRate Int NULL,
		BloodSugar Int NULL,
		Temperature Tinyint NULL,
		Saturation Tinyint NULL,
		EmgDescription NVarchar(Max) not NULL,
		LoginID Int not NULL,
		DateModified DateTime not NULL,
		Foreign Key (PersonID) References Person.Person(PersonID),
		Foreign Key (LoginID) References Person.Login(LoginID)
		);
	RaisError ('Medical.Emergencies table created successfully.',0 ,1) With NoWait;
End;
Go

RaisError ('Creating procedures.',0 ,1) With NoWait;
Go

Create or Alter Proc uspAddPType
@TypeName NVarchar(64)
as
Begin
	If exists (Select 1 From Person.Type Where TypeName=@TypeName)
	Begin
		Print 'Duplicate found!!!';
	End;
	Else
	Begin
		Insert Into Person.Type(TypeName,DateModified) Values
			(@TypeName,GetDate());
	End;
End;
GO

Create or Alter Proc uspValidCNP
@PNNTest Nvarchar(13),
@Result Bit = 0
as
Begin
	Declare @ConvDate Date = TRY_CONVERT(Date, SUBSTRING(@PNNTest,2,6),12);
	Declare @I Int = 1;
	Declare @PRes Int = 0;
	Declare @Pon NVarchar(12) = '279146358279'

	If LEN(@PNNTest)<>13	   
		Begin	
			RaisError ('PNN lenght does not meet the required length!',0 ,1) With NoWait; --Lungime eronata.
  			Set @Result = 1;
			Return;
		End;
		
	If ISNUMERIC(@PNNTest)<>1 and @PNNTest like '%[^0-9]%' 
		Begin
			RaisError ('PNN must contain only numbers!',0 ,1) With NoWait;  --Nu este format doar din cifre.
   			Set @Result = 2;
			Return;
		End;
		
	IF Left(@PNNTest,1) not like '[1-9]'
		Begin 
			RaisError ('First number can not be 0!',0 ,1) With NoWait; --Se verifica, daca prima cifra este intr 1 si 9
   			Set @Result = 3; 
			Return;
		End;
	IF @ConvDate is NULL Or @ConvDate < '1753-01-01' Or @ConvDate > '9999-12-31'
		Begin
			RaisError ('Invalid date!',0 ,1) With NoWait; --Se verifica daca data nasterii este valida
  			Set @Result = 4; 
			Return;
		End;
		
	IF CAST(SUBSTRING(@PNNTest,8,2) as TinyInt) not between 1 and 52
		Begin
			RaisError ('Invalid region code!',0 ,1) With NoWait; --Se verifica validitatea codului de judet
   			Set @Result = 5;
			Return;
		End;
		
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
Go

RaisError ('Done.',0 ,1) With NoWait;
Go

Use master;
Go
