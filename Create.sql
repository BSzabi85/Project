RAISERROR ('Creating database "SeniorCare".',0 ,1) With NoWait;
Go

If not exists (Select name from sys.databases where name = 'SeniorCare')
	Begin
		Create Database SeniorCare;
		RAISERROR ('"SeniorCare" database created successfully.',0 ,1) With NoWait;
	End;
GO

RAISERROR ('Using "SeniorCare" database.',0 ,1) With NoWait;
Use SeniorCare;
GO

RAISERROR ('Creating database schemas.',0 ,1) With NoWait;
If not exists (Select 1 From INFORMATION_SCHEMA.SCHEMATA Where SCHEMA_NAME = 'Person')
	Begin
		Exec ('Create Schema Person Authorization dbo');
		RAISERROR ('"Person" schema created successfully.',0 ,1) With NoWait;
	End;
Go

If not exists (Select 1 From INFORMATION_SCHEMA.SCHEMATA Where SCHEMA_NAME='Medical')
	Begin
		Exec('Create Schema Medical Authorization dbo');
		RAISERROR ('"Medical" schema created successfully.',0 ,1) With NoWait;
	End;
Go

If not exists (Select 1 From INFORMATION_SCHEMA.SCHEMATA Where SCHEMA_NAME='Kineto')
	Begin
		Exec('Create Schema Kineto Authorization dbo');
		RAISERROR ('"Kineto" schema created successfully.',0 ,1) With NoWait;
	End;
Go

If not exists (Select 1 From INFORMATION_SCHEMA.SCHEMATA Where SCHEMA_NAME='Financial')
	Begin
		Exec('Create Schema Financial Authorization dbo');
		RAISERROR ('"Financial" schema created successfully.',0 ,1) With NoWait;
	End;
Go

RAISERROR ('Creating database tables.',0 ,1) With NoWait;
If not exists ( Select 1 From sys.tables Where Name='Person.Type' and Type = 'U')
Begin
	Create Table Person.[Type]
		(
		TypeID Tinyint Primary Key Identity(1,1) not NULL,
		TypeName NVarchar(64) not NULL,
		DateModified DateTime not NULL
		);
	RAISERROR ('Person.Type table created successfully.',0 ,1) With NoWait;
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
	RAISERROR ('Person.ContactName table created successfully.',0 ,1) With NoWait;
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
	RAISERROR ('Person.Person table created successfully.',0 ,1) With NoWait;
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
	RAISERROR ('Person.Address table created successfully.',0 ,1) With NoWait;
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
	RAISERROR ('Person.Phone table created successfully.',0 ,1) With NoWait;
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
	RAISERROR ('Person.Email table created successfully.',0 ,1) With NoWait;
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
	RAISERROR ('Person.Login table created successfully.',0 ,1) With NoWait;
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
	RAISERROR ('Medical.Medicines table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Medical.Medicines' and Type = 'U')
Begin
Create Table Medical.MedicationHour(
	MedicationHourID Int Primary Key Identity not NULL,
	MedicationTime Time not NULL,
	DateModified Datetime not NULL);
	RAISERROR ('Medical.Medicines table created successfully.',0 ,1) With NoWait;
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
	RAISERROR ('Medical.Medication table created successfully.',0 ,1) With NoWait;
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
	RAISERROR ('Medical.Health table created successfully.',0 ,1) With NoWait;
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
	RAISERROR ('Medical.Emergencies table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Kineto.Exercises' and Type = 'U')
Begin
	Create Table Kineto.Exercises
		(
		ExerciseID Int Primary Key Identity(1,1) not NULL,
		ExerciseName NVarchar not NULL,
		LoginID Int not NULL,
		DateModified Datetime not NULL,
		Foreign Key (LoginID) References Person.Login (LoginID)
		);
	RAISERROR ('Kineto.Exercises table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Kineto.Recurence' and Type = 'U')
Begin
	Create Table Kineto.Recurence
		(
		RecurenceID Int Primary Key Identity(1,1) not NULL,
		RecurenceName NVarchar(32) not NULL,
		DateModified DateTime not NULL
		);
	RAISERROR ('Kineto.Recurence table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Kineto.ExerciseList' and Type = 'U')
Begin
	Create Table Kineto.ExerciseList
		(
		ExerciseListID Int Primary Key Identity(1,1) not NULL,
		PersonID Int Not NULL,
		ExerciseID Int not NULL,
		RecurenceID Int not NULL,
		ExerciseDescription NVarchar(Max) not NULL,
		LoginID INT not NULL,
		DateModified Datetime not NULL,
		Foreign Key (PersonID) References Person.Person(PersonID),
		Foreign Key (ExerciseID) References Kineto.Exercises(ExerciseID),
		Foreign Key (RecurenceID) References Kineto.Recurence(RecurenceID),
		Foreign Key (LoginID) References Person.Login(LoginID)
		);
	RAISERROR ('Kineto.ExercisesList table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Financial.AmmountToPay' and Type = 'U')
Begin
	Create Table Financial.AmmountToPay
		(
		AmmountToPayID Int Primary Key Identity(1,1) not NULL,
		PersonID Int not NULL,
		DateFrom Date not NULL,
		Ammount Decimal(12,2) not NULL,
		LoginID Int not NULL,
		DateModified DateTime not NULL,
		Foreign Key (PersonID) References Person.Person(PersonID),
		Foreign Key (LoginID) References Person.Login(LoginID)
		);
	RAISERROR ('Financial.AmmountToPay table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Financial.Payments' and Type = 'U')
Begin
	Create Table Financial.Payments
		(
		PaymentID Int Primary Key Identity(1,1) not NULL,
		PersonID int not NULL,
		PaymentStatusID Tinyint not NULL,
		AmmountToPayID Int NULL,
		AmmountPayedID Int NULL,
		DueDate Date not NULL,
		DateModified Datetime not NULL,
		Foreign Key (PersonID) References Person.Person(PersonID),
		Foreign Key (AmmountToPayID) References Financial.AmmountToPay(AmmountToPayID)
		);
	RAISERROR ('Financial.Payments table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Financial.Payed' and Type = 'U')
Begin
	Create Table Financial.Payed
		(
		PayedID Int Primary Key Identity(1,1) not NULL,
		PersonID Int not NULL,
		PaymentID Int NULL,
		PayedAmmount Decimal(12,2) not NULL,
		LoginID Int not NULL,
		DateModified Datetime not NULL,
		Foreign Key (PersonID) References Person.Person(PersonID),
		Foreign Key (PaymentID) References Financial.Payments(PaymentID),
		Foreign Key (LoginID) References Person.Login(LoginID)
		);
	RAISERROR ('Financial.Payed table created successfully.',0 ,1) With NoWait;
End;
Go

RAISERROR ('Creating procedures.',0 ,1) With NoWait;
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
			Print 'PNN lenght does not meet the required length!'; --Lungime eronata.
  Set @Result = 1;
			Return;
		End;
	If ISNUMERIC(@PNNTest)<>1 and @PNNTest like '%[^0-9]%' 
		Begin
		 Print 'PNN must contain only numbers!'; --Nu este format doar din cifre.
   Set @Result = 1;
			Return;
		End
	IF Left(@PNNTest,1) not like '[1-9]'
		Begin
			Print 'First number can not be 0!'; --Se verifica, daca prima cifra este intr 1 si 9
   Set @Result = 1; 
			Return;
		End;
	IF @ConvDate is NULL Or @ConvDate < '1753-01-01' Or @ConvDate > '9999-12-31'
		Begin
			Print 'Invalid date!'; --Se verifica daca data nasterii este valida
  Set @Result = 1; 
			Return;
		End
	IF CAST(SUBSTRING(@PNNTest,8,2) as TinyInt) not between 1 and 52
		Begin
			Print 'Invalid region code!'; --Se verifica validitatea codului de judet
   Set @Result = 1;
			Return;
		End
	While @I < LEN(@PNNTest)
		Begin
			Set @PRes = @PRes + (CAST(SUBSTRING(@PNNTest,@I,1) as Int) * CAST(SUBSTRING(@Pon,@I,1) as Int));
			Set @I += 1;
		End
	While @PRes>=11
		Begin
			Set @PRes -= 11;
		End
	If CAST(SUBSTRING(@PNNTest, 13,1) As TinyInt)<>@PRes 
		Begin
			Print 'Invalid control number!';	--Se verifica cifra de control
   Set @Result = 1;
			Return;
		End;
End;
Go

RAISERROR ('Done.',0 ,1) With NoWait;

Use master;