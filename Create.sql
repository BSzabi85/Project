If not exists (Select name from sys.databases where name = 'SeniorCare')
	Begin
		Print 'Creating database "SeniorCare"...';
		Create Database SeniorCare;
		Print '"SeniorCare" database created successfully.';
	End;
Go

Use SeniorCare;
Go

Print 'Creating database schemas...';
Go

If not exists (Select 1 From INFORMATION_SCHEMA.SCHEMATA Where SCHEMA_NAME = 'Person')
	Begin
		Exec ('Create Schema Person Authorization dbo');
		Print '"Person" schema created successfully.';
	End;
Go

If not exists (Select 1 From INFORMATION_SCHEMA.SCHEMATA Where SCHEMA_NAME='Medical')
	Begin
		Exec('Create Schema Medical Authorization dbo');
		Print '"Medical" schema created successfully.';
	End;
Go

Print 'Creating database tables...';
Go

If not exists ( Select 1 From sys.tables Where Name='Person.Type' and Type = 'U')
Begin
	Create Table Person.[Type]
		(
		TypeID Tinyint Primary Key Identity(1,1) not NULL,
		TypeName NVarchar(64) not NULL,
		DateModified DateTime not NULL
		);
	Print 'Person.Type table created successfully.';
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
	Print 'Person.Person table created successfully.';
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
	Print 'Person.ContactName table created successfully.';
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
	Print 'Person.Address table created successfully.';
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
	Print 'Person.Phone table created successfully.';
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
	Print 'Person.Email table created successfully.';
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
	Print 'Person.Login table created successfully.';
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
	Print 'Medical.Medicines table created successfully.';
End;
Go

If not exists ( Select 1 From sys.tables Where Name='Medical.MedicationHour' and Type = 'U')
Begin
Create Table Medical.MedicationHour(
	MedicationHourID Int Primary Key Identity not NULL,
	MedicationTime Time not NULL,
	DateModified Datetime not NULL);
	Print 'Medical.MedicionHour table created successfully.';
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
		Dosage NVarchar(20) not NULL,
		Necessity TinyInt not NULL,
		DateModified Datetime not NULL,
		Foreign Key (PersonID) References Person.Person(PersonID),
		Foreign Key (MedicineID) References Medical.Medicines(MedicineID),
		Foreign Key (MedicationHourID) References Medical.MedicationHour(MedicationHourID)
		);
	Print 'Medical.Medication table created successfully.';
End;
Go

Print 'Done.';

Use master;
Go
