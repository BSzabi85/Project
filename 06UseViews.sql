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