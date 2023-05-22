use SeniorCare;
Go


RaisError ('Populating table "Person.Type",0 ,1) With NoWait;

Exec uspAddType @TypeName = 'Database Admin';
Exec uspAddType @TypeName = 'Administrator';
Exec uspAddType @TypeName = 'Asistent social';
Exec uspAddType @TypeName = 'Financiar contabil';
Exec uspAddType @TypeName = 'Medical';
Exec uspAddType @TypeName = 'Terapeut';
Exec uspAddType @TypeNamr = 'Ingrijitor';
Exec uspAddType @TypeName = 'Bucatar';
Exec uspAddType @TypeName = 'Personal curatenie';
Exec uspAddType @TypeName = 'Personal intretinere';
Exec uspAddType @TypeName = 'Portar';

RaisError ('Done.',0, 1) With NoWait;