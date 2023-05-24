If exists (Select name from sys.databases where name = 'SeniorCare')
Begin
  Use SeniorCare;

  Drop Proc if exists uspAddPType;

  Drop proc if exists uspValidCNP;

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
End;
Go

Use master;
Go

Drop Database if exists SeniorCare;
Go
