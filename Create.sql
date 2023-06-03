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

If not exists ( Select 1 From sys.tables Where Name='Person.Contact' and Type = 'U')
Begin
	Create Table Person.Contact
		(
		ContactID Int Primary Key Identity(1,1) not NULL,
		PersonID Int not NULL,
		ContactName NVarchar(256) not NULL,
		DateModified DateTime not NULL,
		Foreign Key (PersonID) References Person.Person(PersonID)
		);
	RaisError ('Person.ContactName table created successfully.',0 ,1) With NoWait;
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
		Country NVarchar(64) NULL,
		PostalCode NVarchar(32) NULL,
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
		ContactID Int not NULL,
		PhoneNO NVarchar(15) NULL,
		DateModified DateTime not NULL,
		Foreign Key (ContactID) References Person.Contact(ContactID)
		);
	RaisError ('Person.Phone table created successfully.',0 ,1) With NoWait;
End;
Go
	
If not exists ( Select 1 From sys.tables Where Name='Person.Email' and Type = 'U')
Begin
	Create Table Person.Email
		(
		EmailID Int Primary Key Identity(1,1) not NULL,
		ContactID Int not NULL,
		EmailAddress NVarchar(256) NULL,
		DateModified Datetime not NULL,
		Foreign Key (ContactID) References Person.Contact(ContactID)
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
		PasswordHash VarChar(128) not NULL,
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
		MedicineConcentration Decimal(10,2) NULL,
		ConcentrationType NVarchar(10) NULL,
		Description NVarchar(Max) NULL,
		ModifierID Int not NULL,
		DateModified DateTime not NULL,
		Foreign Key (ModifierID) References Person.Person(PersonID)
		);
	RaisError ('Medical.Medicines table created successfully.',0 ,1) With NoWait;
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Medical.MedicationHour' and Type = 'U')
Begin
Create Table Medical.MedicationHour(
	MedicationHourID Int Primary Key Identity not NULL,
	MedicationTime Time not NULL,
	DateModified Datetime not NULL);
	RaisError ('Medical.MedicionHour table created successfully.',0 ,1) With NoWait;
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
		Bandages NVarchar(512) NULL,
		LoginID Int not NULL,
		CheckDate Date not NULL,
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
		EmergencieDate Date not NULL,
		DateModified DateTime not NULL,
		Foreign Key (PersonID) References Person.Person(PersonID),
		Foreign Key (LoginID) References Person.Login(LoginID)
		);
	RaisError ('Medical.Emergencies table created successfully.',0 ,1) With NoWait;
End;
Go

Use master;
Go
