Use SeniorCare;
Go

Print 'Creating views.';
Go

Create or Alter View vActivePacients
as
	Select 
		PersonID ID,
		FirstName,
		MiddleName,
		LastName
	From Person.Person
	Where Active = 1 and PersonType = 6;
Go

Create or Alter View vActiveStaff
as
	Select 
		P.PersonID ID,
		P.FirstName,
		P.MiddleName,
		P.LastName,
		T.TypeName Occupation
	From Person.Person P
	Join Person.Type T
	On P.PersonType = T.TypeID
	Where P.PersonType <> 6 and P.Active = 1;
Go

Create or Alter View vInactivePacients
as
	Select 
		PersonID ID,
		FirstName,
		MiddleName,
		LastName
	From Person.Person
	Where Active = 0 and PersonType = 6;
Go

Create or Alter View vInactiveStaff
as
	Select 
		P.PersonID ID,
		P.FirstName,
		P.MiddleName,
		P.LastName,
		T.TypeName Occupation
	From Person.Person P
	Join Person.Type T
	On P.PersonType = T.TypeID
	Where P.PersonType <> 6 and P.Active = 1;
Go

Create or Alter View vPacientDiagnose
as
	Select 
		P.FirstName,
		P.MiddleName,
		P.LastName,
		Dl.Code,
		Dl.Diagnose
	From Person.Person P
	Join Medical.PacientDiagnoses Pd
	on P.PersonID = Pd.PersonID
	Join Medical.DiagnoseList Dl
	on Dl.Code = Pd.DiagnoseID
	Where P.PersonType = 6 and P.Active = 1;
Go

Print 'Done.';
Go

Use master;
Go
