use SeniorCare;
Go

Set NoCount On

RaisError ('Populating table "Person.Type',0 ,1) With NoWait;

Exec uspAddPType @TypeName = 'Administrator baza date';
Go

Exec uspAddPType @TypeName = 'Administrator';
Go

Exec uspAddPType @TypeName = 'Asistent social';
Go

Exec uspAddPType @TypeName = 'Medical';
Go

Exec uspAddPType @TypeName = 'Ingrijitor';
Go

Exec uspAddPType @TypeName = 'Ingrijit';
Go

RaisError ('Done.',0, 1) With NoWait;

RaisError ('Populating table "Person.Person and other dependencie tables',0 ,1) With NoWait;


Exec uspAddPerson 
	@Ptype = 2,
	@FName = 'Banyai',
	@LName = 'Szabolcs',
	@PNN = '1234567890123',
	@Aline1 = 'Str. Florilor ',
	@City = 'Floresti',
	@Prov = 'Cluj',
	@PCode = '407280',
	@PhoneNo = '0040752486002',
	@Email = 'banyaisz85@gmail.com',
	@UserName = 'Bszabi85',
	@PHash = 'TestPassword';
	
--Va genera eroare pentru ca @PNN nu este un CNP VALID. la mine pe calculator datele sunt corecte 

use master;
