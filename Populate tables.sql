use SeniorCare;
Go

RaisError ('Populating table "Person.Type',0 ,1) With NoWait;

Exec uspAddType @TypeName = 'Administrator baza date';
Go

Exec uspAddType @TypeName = 'Administrator';
Go

Exec uspAddType @TypeName = 'Asistent social';
Go

Exec uspAddType @TypeName = 'Medical';
Go

Exec uspAddType @TypeName = 'Ingrijitor';
Go

Exec uspAddType @TypeName = 'Ingrijit';
Go

RaisError ('Done.',0, 1) With NoWait;

use master;
