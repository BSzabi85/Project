If exists (Select name From sys.databases Where name = 'SeniorCare')
Begin
	Exec('

		Set Nocount On;

		Print ''Deleting procedures...'';

		Use SeniorCare;

		Drop Proc if exists uspAddPType;

		Drop Proc if exists uspValidCNP;

		Drop Proc if exists uspAddContact;

		Drop Proc if exists uspAddAddress;

		Drop Proc if exists uspAddPhone;

		Drop Proc if exists uspAddEmail;

		Drop Proc if exists uspAddLogin;

		Drop Proc if exists uspAddPerson;

		Drop Proc if exists uspAddMedicines;

		Drop Proc if exists uspAddMedHour;

		Drop Proc if exists uspMedication;

		Drop Proc if exists uspGetPersonName;

		Drop Proc if exists uspGetMedName;

		Drop Proc if exists uspCreateDynamicView;

		Drop Proc if exists uspChangeStatus;

		Drop Proc if exists uspAddDiagnoseList;

		Drop Proc if exists uspAddPacientDiagnose;

		Print ''Done.'';

		Print ''Deleting views...'';

		Drop View if exists vMedicationList;

		Drop View if exists vActivePacients;

		Drop View if exists vActiveStaff;

		Drop View if exists vInactivePacients;

		Drop View if exists vInactiveStaff;

		Print ''Done.'';

		Print ''Deleting tables...'';

		Drop Table if exists Medical.Emergencies;

		Drop Table if exists Medical.Health;

		Drop Table if exists Medical.Medication;

		Drop Table if exists Medical.MedicationHour;

		Drop Table if exists Medical.Medicines;

		Drop Table if Exists Medical.TempTbl;

		Drop Table if exists Person.Login;

		Drop Table if exists Person.Email;

		Drop Table if exists Person.Phone;

		Drop Table if exists Person.Contact;

		Drop Table if exists Person.Address;

		Drop Table if exists Person.Person;

		Drop Table if exists Person.Type;

		Print ''Done.'';

		Print ''Deleting schemas...'';
	
		Drop Schema if exists Medical;  

		Drop Schema if exists Person;

		Print ''Done.'';
	');

End;
Go

Use master;
Go

Print 'Deleting database...';

Drop Database if exists SeniorCare;
Go
Print 'Done.';