use SeniorCare;
Go

RaisError ('Populating table "Person.Type",0 ,1) With NoWait;

Exec uspAddType @TypeName = 'Database Admin';
Go

Exec uspAddType @TypeName = 'Administrator';
Go

Exec uspAddType @TypeName = 'Asistent social';
Go

Exec uspAddType @TypeName = 'Financiar contabil';
Go

Exec uspAddType @TypeName = 'Medical';
Go

Exec uspAddType @TypeName = 'Terapeut';
Go

Exec uspAddType @TypeNamr = 'Ingrijitor';
Go

Exec uspAddType @TypeName = 'Bucatar';
Go

Exec uspAddType @TypeName = 'Personal curatenie';
Go

Exec uspAddType @TypeName = 'Personal intretinere';
Go

Exec uspAddType @TypeName = 'Portar';
Go

RaisError ('Done.',0, 1) With NoWait;

use master;
