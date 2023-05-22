If exists (Select name from sys.databases where name = 'SeniorCare')
Begin
  Use SeniorCare;

  Drop Proc if exists uspAddPType;

  Drop proc if exists uspValidCNP;

  Drop Proc if exists uspAddPersonTables;

  Drop Proc if exists uspAddMedicalTables;

  Drop Proc if exists uspAddKinetoTables;

  Drop Proc if exists uspAddFinancialTables;

  Drop Table if exists Financial.Payed;

  Drop Table if exists Financial.Payments;

  Drop Table if exists Financial.AmmountToPay;

  Drop Table if exists Kineto.ExerciseList;

  Drop Table if exists Kineto.Recurence;

  Drop Table if exists Kineto.Exercises;

  Drop Table if exists Medical.Emergencies;

  Drop Table if exists Medical.Health;

  Drop Table if exists Medical.Medication;

  Drop Table if exists Medical.MedicationHour;

  Drop Table if exists Medical.Medicines;

  Drop Table if exists Person.Login;

  Drop Table if exists Person.Email;

  Drop Table if exists Person.Phone;

  Drop Table if exists Person.ContactName;

  Drop Table if exists Person.Address;

  Drop Table if exists Person.Person;

  Drop Table if exists Person.Type;
  
  Drop Schema if exists Financial;  
  
  Drop Schema if exists Kineto;
  
  Drop Schema if exists Medical;  

  Drop Schema if exists Person;
End;
Go

Use master;
Go

Drop Database if exists SeniorCare;
Go
