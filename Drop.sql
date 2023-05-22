Use SeniorCare;
GO

Drop Proc if exists uspAddPType;
Go

Drop proc if exists uspValidCNP;
Go

Drop Proc if exists uspAddPersonTables;
Go

Drop Proc if exists uspAddMedicalTables;
Go

Drop Proc if exists uspAddKinetoTables;
Go

Drop Proc if exists uspAddFinancialTables;
Go

Drop Table if exists Financial.Payed;
Go

Drop Table if exists Financial.Payments;
Go

Drop Table if exists Financial.AmmountToPay;
Go

Drop Schema if exists Financial;
Go

Drop Table if exists Kineto.ExerciseList;
Go

Drop Table if exists Kineto.Recurence;
Go

Drop Table if exists Kineto.Exercises;
Go

Drop Schema if exists Kineto;
Go

Drop Table if exists Medical.Emergencies;
Go

Drop Table if exists Medical.Health;
Go

Drop Table if exists Medical.Medication;
Go

Drop Table if exists Medical.MedicationHour;
Go

Drop Table if exists Medical.Medicines;
Go

Drop Schema if exists Medical;
Go

Drop Table if exists Person.Login;
Go

Drop Table if exists Person.Email;
Go

Drop Table if exists Person.Phone;
Go

Drop Table if exists Person.ContactName;
Go

Drop Table if exists Person.Address;
Go

Drop Table if exists Person.Person;
Go

Drop Table if exists Person.Type;
Go

Drop Schema if exists Person;
Go

Use master;
Go

Drop Database SeniorCare;
Go
