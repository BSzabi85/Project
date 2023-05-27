If exists (Select name From sys.databases Where name = 'SeniorCare')
Begin
	Exec('
		Set Nocount On

		RaisError (''Deleting procedures...'',0 ,1) With NoWait;

		Use SeniorCare;

		Drop Proc if exists uspAddPType;

		Drop proc if exists uspValidCNP;

		RaisError (''Deleting tables...'',0 ,1) With NoWait;

		Drop Table if exists Medical.Emergencies;

		Drop Table if exists Medical.Health;

		Drop Table if exists Medical.Medication;

		Drop Table if exists Medical.MedicationHour;

		Drop Table if exists Medical.Medicines;

		Drop Table if exists Person.Login;

		Drop Table if exists Person.Email;

		Drop Table if exists Person.Phone;

		Drop Table if exists Person.Contact;

		Drop Table if exists Person.Address;

		Drop Table if exists Person.Person;

		Drop Table if exists Person.Type;
	
		Drop Schema if exists Medical;  

		Drop Schema if exists Person;

		RaisError (''Done.'',0 ,1) With NoWait;
	');

End;
Go

Use master;
Go

Drop Database if exists SeniorCare;
Go
