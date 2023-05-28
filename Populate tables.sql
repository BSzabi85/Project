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
	@Ptype = 1,
	@FName = 'Banyai',
	@LName = 'Szabolcs',
	@PNN = '1234567890123',
	@Aline1 = 'Str. Florilor',
	@City = 'Floresti',
	@Prov = 'Cluj',
	@PCode = '407280',
	@PhoneNo = '0040752486002',
	@Email = 'b*******5@gmail.com',
	@UserName = 'Bszabi85',
	@PHash = 'TestPassword';

Exec uspAddPerson
 @Ptype = 3,
 @FName = 'Banyai',
 @MName = 'Csilla',
 @LName = 'Andrea',
 @PNN = '2345678901234',
 @ALine1 = 'Str. Florilor',
 @City = 'Floresti',
 @Prov = 'Cluj',
 @PCode = '407280',
 @PhoneNo = '0040731452390',
 @Email = 'p_c***********a@yahoo.com',
 @UserName = 'Csilla85',
 @PHash = 'Testpass';
	
--Va genera eroare pentru ca @PNN nu este un CNP VALID. la mine pe calculator datele sunt corecte 

use master;
