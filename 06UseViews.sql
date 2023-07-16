Use SeniorCare;
Go

--See list of active pacients.

Select *
From vActivePacients V
Order by V.FirstName, V.MiddleName, V.LastName;
Go

--See list of active staff.

Select *
From vActiveStaff V
Order by V.FirstName, V.MiddleName, V.LastName;
Go

--See list of inactive pacients.

Select *
From vInactivePacients V
Order by V.FirstName, V.MiddleName, V.LastName;
Go

--See lIst if inactive Staff.

Select *
From vInactiveStaff V
Order by V.FirstName, V.MiddleName, V.LastName;
Go

--See medication list

Exec uspCreateDynamicView;
Select *
From vMedicationList V
Order by V.Nume_Persoana, V.Medicament;
Go

--See pacients diagnose list

Select *
From vPacientDiagnose V
Order by V.FirstName, V.LastName;
Go

Exec uspCreateTempTbl;
Go

Select * 
From vMedicationList v
Order by v.Nume_Persoana, v.Medicament;

exec uspChangeStatus @Id = 39, @Act = 1

select * from person.Person order by FirstName
select * from Medical.DiagnoseList
