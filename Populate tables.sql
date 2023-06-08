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

Exec uspAddPerson  --1
	@Ptype = 1,
	@FName = 'Banyai',
	@LName = 'Szabolcs',
	@PNN = '1234567890123',
	@Aline1 = 'Str. Florilor',
	@City = 'Floresti',
	@Prov = 'Cluj',
	@PCode = '407280',
	@PhoneNo = '0040712345678',
	@Email = 'testmail1@gmail.com',
	@UserName = 'Bszabi85',
	@PHash = 'P@ssw0rd';
Go

	Exec uspAddPerson --2
	@Ptype = 3,
	@FName = 'Banyai',
	@MName = 'Csilla',
	@LName = 'Andrea',
	@PNN = '1234567890124',
	@Aline1 = 'Str. Florilor',
	@City = 'Floresti',
	@Prov = 'Cluj',
	@PCode = '407280',
	@PhoneNo = '0040712345679',
	@Email = 'testmail2@gmail.com',
	@UserName = 'BCSilla',
	@PHash = 'P@ssw0rd1';
Go

Exec uspAddPerson --3
	@Ptype = 4,
	@FName = 'Oltean',
	@LName = 'Emese',
	@PNN = '1234567890125',
	@Aline1 = 'Str. Eroilor',
	@City = 'Floresti',
	@Prov = 'Cluj',
	@PCode = '407280',
	@PhoneNo = '0040712345610',
	@Email = 'mailtest3@gmail.com',
	@UserName = 'OEmese',
	@PHash = 'P@ssw0rd2';
Go

Exec uspAddPerson --4
	@Ptype = 6,
	@FName = 'Szatmari',
	@LName = 'Ilona',
	@PNN = '1234567890001',
	@Aline1 = 'Str. Dorobantilor',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

RaisError ('Done.',0 ,1) With NoWait;

RaisError ('Populating table "Medical.MedicationHour and other dependencie tables',0 ,1) With NoWait;

Exec uspAddMedHour @MedTime = '09:00';
Go

Exec uspAddMedHour @MedTime = '13:00';
Go

Exec uspAddMedHour @MedTime = '19:00';
Go

RaisError ('Done.',0 ,1) With NoWait;

RaisError ('Populating table "Medical.Medicines and other dependencie tables',0 ,1) With NoWait;

Exec uspAddMedicines @MedName = 'Bisoprolol', @MedCon = 2.5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Bilobil', @MedCon = 40, @ConType = 'mg', @Mod = 1;
Go

Exec uspAddMedicines @MedName = 'Urozenal', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Vitamina D3', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Alpha D3', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Vitamina C', @MedCon = 1000, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Eliquis', @MedCon = 2.5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Perindopril', @MedCon = 5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Nitromint', @MedCon = 2.6, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Amlodipin', @MedCon = 5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Nicervolin', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Cavinton', @MedCon = 10, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Imovane', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Stilnox', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Sanval', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Algoxib', @MedCon = 100, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Betaserc', @MedCon = 2.4, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Siofor', @MedCon = 1000, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Alprazolam', @MedCon = 0.5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Gerodorm', @MedCon = 40, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Fevarin', @MedCon = 100, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Atacand', @MedCon = 8, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Tertensif', @MedCon = 1.5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Cymbalta', @MedCon = 30, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Concor', @MedCon = 2.5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Sermion', @MedCon = 30, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Doreta', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Coaxil', @MedCon = 12.5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Tenaxum', @MedCon = 1, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Co-Prenessa', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Omez', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Conrtoloc', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Omeran', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Nitrozepam', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Extraveral', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Tanacan', @MedCon = 40, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Clopridogrel', @MedCon = 75, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Sortis', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Rosuvastatin', @MedCon = 20, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Metoprolol', @MedCon = 25, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Tandesar', @MedCon = 8, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Euthirox', @MedCon = 50, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Bolimag', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Indapamid', @MedCon = 1.5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Ferrum', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Sorbifer', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Algocalmin', @MedCon = 500, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Diclofenac', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Tramadol', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Noliterax', @MedCon = 10, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Atoris', @MedCon = 10, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Aspenter', @MedCon = 75, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Bisogama', @MedCon = 5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Diurex', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Trittico', @MedCon = 150, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Gabaram', @MedCon = 300, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Thrombostop', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Prestarium', @MedCon = 5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Piracetam', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Tiapridal', @MedCon = 100, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Anxiar', @MedCon = 1, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Stresclin', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Hepatoprotect', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Furosemid', @MedCon = 40, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Grimodin', @MedCon = 100, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Zolpidem', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Spironolacton', @MedCon = 15, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Quatiapin', @MedCon = 300, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Detrical', @MedCon = 2000, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Enap', @MedCon = 10, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Olicard', @MedCon = 40, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Leridip', @MedCon = 10, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Simvacard', @MedCon = 2, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Lioresal', @MedCon = 25, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Omnic', @MedCon = 0.4, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Avodart', @MedCon = 0.5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Mega B Complex', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Memantim', @MedCon = 10, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Pramistar', @MedCon = 600, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Pentoxifilin', @MedCon = 600, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Fokusin', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Depakine', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Digoxin', @MedCon = 0.25, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Carvedilol', @MedCon = 12.5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Thiossen', @MedCon = 600, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Oxiflux', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Detralex', @MedCon = 100, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Azarga', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Propafenon', @MedCon = 150, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Nimvastid', @MedCon = 3, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Isicom', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Milgamma', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Nitrazepam', @MedCon = 5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Atorvastatina', @MedCon = 10, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Carbamazapin', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Levomepromazin', @MedCon = 25, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Bromazepam', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Xanax', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Yasnal', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Romparkin', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Fluanxol', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Paracetamol', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Plendil', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Acid Folic', @MedCon = 5, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Vitamina B12', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Roswera', @MedCon = 20, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Immuno C', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Levodopa', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Diaprel', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Sunvert', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Scaptopril', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Clexane', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Relaxirem', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Inkonten', @MedCon = 15, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Feminost', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Lorista', @MedCon = 150, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Sennalax', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Uractiv', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Haloperidol', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Lagosa', @Mod = 3;
Go

Exec uspMedication @PersID = 4, @MedID = 1, @MedHID = 1, @Dos = '1';
Go

Exec uspMedication @PersID = 4, @MedID = 1, @MedHID = 3, @Dos = '1';
Go

Exec uspMedication @PersID = 4, @MedID = 2, @MedHID = 1, @Dos = '1';
Go

Exec uspMedication @PersID = 4, @MedID = 3, @MedHID = 1, @Dos = '1';
Go

Exec uspMedication @PersID = 4, @MedID = 3, @MedHID = 3, @Dos = '1';
Go

Exec uspMedication @PersID = 4, @MedID = 4, @MedHID = 1, @Dos = '1';
Go

Exec uspMedication @PersID = 4, @MedID = 5, @MedHID = 1, @Dos = '1';
Go

Exec uspMedication @PersID = 4, @MedID = 6, @MedHID = 1, @Dos = '1';
Go

Exec uspMedication @PersID = 4, @MedID = 7, @MedHID = 1, @Dos = '1';
Go

Exec uspMedication @PersID = 4, @MedID = 7, @MedHID = 3, @Dos = '1';
Go

Exec uspMedication @PersID = 4, @MedID = 8, @MedHID = 1, @Dos = '1/2';
Go

Exec uspMedication @PersID = 4, @MedID = 9, @MedHID = 1, @Dos = '1';
Go

Exec uspMedication @PersID = 4, @MedID = 9, @MedHID = 1, @Dos = '1';
Go

use master;
