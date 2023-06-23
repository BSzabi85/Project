use SeniorCare;
Go

Set NoCount On;

Print 'Populating table "Person.Type"...';

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

Print 'Done.';

Print 'Populating table "Person.Person"...';

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
	@PNN = '2234567890001',
	@Aline1 = 'Str. Dorobantilor',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --5
	@Ptype = 6,
	@FName = 'Rosca',
	@LName = 'Doina',
	@PNN = '2234567890002',
	@Aline1 = 'Str. Frunzisului',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --6
	@Ptype = 6,
	@FName = 'Calacean',
	@LName = 'Leontina',
	@PNN = '2234567890003',
	@Aline1 = 'Str. Almasului',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --7
	@Ptype = 6,
	@FName = 'Baritchi',
	@LName = 'Rozalia',
	@PNN = '2234567890007',
	@Aline1 = 'Str. Piezisa',
	@City = 'Turda',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --8
	@Ptype = 6,
	@FName = 'Gal',
	@LName = 'Eva',
	@PNN = '2234567890008',
	@Aline1 = 'Str. Ciocarliei',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --9
	@Ptype = 6,
	@FName = 'Cenan',
	@LName = 'Ana',
	@PNN = '2234567890009',
	@Aline1 = 'Str. Meses',
	@City = 'Zalau',
	@Prov = 'Salaj',
	@PHash = ' ';
Go

Exec uspAddPerson --10
	@Ptype = 6,
	@FName = 'Vass',
	@LName = 'Istvan',
	@PNN = '1234567890010',
	@Aline1 = 'Str. Eremia Grigorescu',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --11  
	@Ptype = 6,
	@FName = 'Zsido',
	@Mname = 'Nagy',
	@LName = 'Joka',
	@PNN = '2234567890011',
	@Aline1 = 'Cal. Clujului',
	@City = 'Turda',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --12
	@Ptype = 6,
	@FName = 'Farcane',
	@LName = 'Susana',
	@PNN = '2234567890012',
	@Aline1 = 'Str. Izlazului',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --13
	@Ptype = 6,
	@FName = 'Costea',
	@LName = 'Constantin',
	@PNN = '1234567890012',
	@Aline1 = 'Str. Cetatii',
	@City = 'Floresti',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --14
	@Ptype = 6,
	@FName = 'Kiss',
	@LName = 'Margit',
	@PNN = '2234567890014',
	@Aline1 = 'Str. Viilor',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --15
	@Ptype = 6,
	@FName = 'Peter',
	@LName = 'Jozsef',
	@PNN = '1234567890015',
	@Aline1 = 'B-Dul 21 Decembrie 1989',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --16
	@Ptype = 6,
	@FName = 'Crisan',
	@LName = 'Mircea',
	@PNN = '1234567890016',
	@Aline1 = 'Str. Donath',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --17
	@Ptype = 6,
	@FName = 'Szabo',
	@LName = 'Jolan',
	@PNN = '2234567890017',
	@Aline1 = 'Str. Florilor',
	@City = 'Floresti',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --18
	@Ptype = 6,
	@FName = 'Strachinesiu',
	@LName = 'Aurelia',
	@PNN = '2234567890018',
	@Aline1 = 'Str. Fabricii de Zahar',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --19
	@Ptype = 6,
	@FName = 'Narovici',
	@LName = 'Silvia',
	@PNN = '2234567890019',
	@Aline1 = 'Str. Bistritei',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --20
	@Ptype = 6,
	@FName = 'Broscoi',
	@LName = 'Varvara',
	@PNN = '2234567890020',
	@Aline1 = 'Str. Dorobantilor',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --21
	@Ptype = 6,
	@FName = 'Voisan',
	@LName = 'Edit',
	@PNN = '2234567890021',
	@Aline1 = 'Str. Mehedinti',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --22
	@Ptype = 6,
	@FName = 'Czimbalmos',
	@LName = 'Gergely',
	@PNN = '1234567890022',
	@Aline1 = 'Str. Tecuci',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --23
	@Ptype = 6,
	@FName = 'Juhos',
	@LName = 'Marta',
	@PNN = '2234567890023',
	@Aline1 = 'Calea Turzii',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --24
	@Ptype = 6,
	@FName = 'Jozan',
	@LName = 'Ilona',
	@PNN = '2234567890024',
	@Aline1 = 'Str. Andrei Muresanu',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --25
	@Ptype = 6,
	@FName = 'Gostar',
	@LName = 'Aniko',
	@PNN = '2234567890025',
	@Aline1 = 'Str. Garii',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --26
	@Ptype = 6,
	@FName = 'Saramet',
	@LName = 'Bozske',
	@PNN = '2234567890026',
	@Aline1 = 'Str. Taberei',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --27
	@Ptype = 6,
	@FName = 'Olah',
	@LName = 'Gyula',
	@PNN = '1234567890027',
	@Aline1 = 'Str. plopilor',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --28
	@Ptype = 6,
	@FName = 'Hagan',
	@LName = 'Florica',
	@PNN = '2234567890028',
	@Aline1 = 'Str. Trascaului',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --29
	@Ptype = 6,
	@FName = 'Popovici',
	@LName = 'Violina',
	@PNN = '2234567890029',
	@Aline1 = 'Str. Iuliu Maniu',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --30
	@Ptype = 6,
	@FName = 'Bagameri',
	@LName = 'Tibor',
	@PNN = '1234567890030',
	@Aline1 = 'Str. Morii',
	@City = 'Gilau',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --31
	@Ptype = 6,
	@FName = 'Simon',
	@LName = 'Zsofia',
	@PNN = '2234567890031',
	@Aline1 = 'Str. Graului',
	@City = 'Baciu',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --32
	@Ptype = 6,
	@FName = 'Lupu',
	@LName = 'Maria',
	@PNN = '2234567890032',
	@Aline1 = 'Str. Visinilor',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --33
	@Ptype = 6,
	@FName = 'Goia',
	@LName = 'Viorica',
	@PNN = '2234567890033',
	@Aline1 = 'Str. Paris',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --34
	@Ptype = 6,
	@FName = 'Marusciac',
	@LName = 'Victoria',
	@PNN = '2234567890034',
	@Aline1 = 'Str. Artelor',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --35
	@Ptype = 6,
	@FName = 'Bodea',
	@LName = 'Ioan',
	@PNN = '1234567890035',
	@Aline1 = 'Str. Galaxiei',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --36
	@Ptype = 6,
	@FName = 'Mihet',
	@LName = 'Nikodim',
	@PNN = '1234567890036',
	@Aline1 = 'Str. Rapsodiei',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --38
	@Ptype = 6,
	@FName = 'Laszlo',
	@LName = 'Adel',
	@PNN = '2234567890038',
	@Aline1 = 'Str. Gheorghe Dima',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --39
	@Ptype = 6,
	@FName = 'Boer',
	@LName = 'Ilona',
	@PNN = '2234567890039',
	@Aline1 = 'Str. Salciilor',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --40
	@Ptype = 6,
	@FName = 'Barta',
	@LName = 'Margit',
	@PNN = '2234567890040',
	@Aline1 = 'Str. Lacului',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --41
	@Ptype = 6,
	@FName = 'Studnicska',
	@LName = 'Vilmos',
	@PNN = '1234567890041',
	@Aline1 = 'Str. Dornei',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --42
	@Ptype = 6,
	@FName = 'Szekely',
	@LName = 'Paraschiva',
	@PNN = '2234567890042',
	@Aline1 = 'Str. Constanta',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Print 'Done.';

Print 'Populating table "Medical.MedicationHour"...';

Exec uspAddMedHour @MedTime = '09:00';
Go

Exec uspAddMedHour @MedTime = '13:00';
Go

Exec uspAddMedHour @MedTime = '19:00';
Go

Print 'Done.';

Print 'Populating table "Medical.Medicines"...';

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

Exec uspAddMedicines @MedName = 'Betaloc', @MedCon = 150, @ConType = 'mg', @Mod = 3;
Go

Exec uspAddMedicines @MedName = 'Simvastatin', @MedCon = 10, @ConType = 'mg', @Mod = 3;
Go

Print 'Populating table "Medical.Medication"...';

Exec uspMedication @PersID = 4, @MedID = 1, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 1, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 2, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 3, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 3, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 4, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 5, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 6, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 7, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 7, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 8, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 9, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 9, @MedHID = 3, @Dos = '1', @Nec = 1;
Go
--
Exec uspMedication @PersID = 4, @MedID = 10, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 10, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 11, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 12, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 13, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 16, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 17, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 4, @MedID = 17, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 5, @MedID = 25, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 5, @MedID = 26, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 5, @MedID = 14, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 5, @MedID = 27, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 5, @MedID = 28, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 5, @MedID = 28, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 5, @MedID = 29, @MedHID = 3, @Dos = '1', @Nec = 0;
Go

Exec uspMedication @PersID = 5, @MedID = 30, @MedHID = 1, @Dos = '1', @Nec = 0;
Go

Exec uspMedication @PersID = 6, @MedID = 18, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 6, @MedID = 18, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 6, @MedID = 19, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 6, @MedID = 19, @MedHID = 2, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 6, @MedID = 20, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 6, @MedID = 21, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 6, @MedID = 21, @MedHID = 2, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 6, @MedID = 22, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 6, @MedID = 23, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 6, @MedID = 24, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 7, @MedID = 6, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 7, @MedID = 31, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 7, @MedID = 35, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 36, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 36, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 37, @MedHID = 1, @Dos = '2', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 38, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 40, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 40, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 41, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 42, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 14, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 2, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 44, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 45, @MedHID = 2, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 35, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 47, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 47, @MedHID = 2, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 8, @MedID = 47, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 9, @MedID = 50, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 9, @MedID = 10, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 9, @MedID = 51, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 9, @MedID = 52, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 9, @MedID = 53, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 9, @MedID = 54, @MedHID = 1, @Dos = '1 la 2 zile', @Nec = 1;
Go

Exec uspMedication @PersID = 9, @MedID = 55, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 9, @MedID = 56, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 9, @MedID = 29, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 9, @MedID = 17, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 9, @MedID = 17, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 9, @MedID = 57, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 10, @MedID = 12, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 10, @MedID = 12, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 10, @MedID = 7, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 10, @MedID = 7, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 10, @MedID = 58, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 10, @MedID = 39, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 10, @MedID = 59, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 10, @MedID = 13, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 11, @MedID = 59, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 11, @MedID = 25, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 11, @MedID = 67, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 11, @MedID = 7, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 11, @MedID = 7, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 11, @MedID = 39, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 11, @MedID = 68, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 11, @MedID = 68, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 11, @MedID = 69, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 11, @MedID = 70, @MedHID = 1, @Dos = '1', @Nec = 0;
Go

Exec uspMedication @PersID = 11, @MedID = 70, @MedHID = 3, @Dos = '1', @Nec = 0;
Go

Exec uspMedication @PersID = 11, @MedID = 44, @MedHID = 1, @Dos = '1', @Nec = 0;
Go

Exec uspMedication @PersID = 12, @MedID = 60, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 12, @MedID = 61, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 12, @MedID = 61, @MedHID = 2, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 12, @MedID = 62, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 12, @MedID = 62, @MedHID = 2, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 12, @MedID = 10, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 12, @MedID = 63, @MedHID = 2, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 12, @MedID = 64, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 12, @MedID = 33, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 12, @MedID = 29, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 12, @MedID = 65, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 12, @MedID = 65, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 12, @MedID = 66, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 13, @MedID = 74, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 13, @MedID = 74, @MedHID = 2, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 13, @MedID = 74, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 13, @MedID = 52, @MedHID = 2, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 13, @MedID = 58, @MedHID = 2, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 13, @MedID = 75, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 13, @MedID = 76, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 13, @MedID = 77, @MedHID = 1, @Dos = '1(10/luna)', @Nec = 1;
Go

Exec uspMedication @PersID = 14, @MedID = 71, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 14, @MedID = 32, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 14, @MedID = 73, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 14, @MedID = 72, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 14, @MedID = 72, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 14, @MedID = 40, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 14, @MedID = 40, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 14, @MedID = 66, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 15, @MedID = 52, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 15, @MedID = 12, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 15, @MedID = 12, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 15, @MedID = 78, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 15, @MedID = 78, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 15, @MedID = 85, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 15, @MedID = 6, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 15, @MedID = 13, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 78, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 67, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 67, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 52, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 79, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 51, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 7, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 7, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 80, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 80, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 58, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 58, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 81, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 121, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 82, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 82, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 64, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 64, @MedHID = 2, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 84, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 84, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 60, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 16, @MedID = 60, @MedHID = 2, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 17, @MedID = 7, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 17, @MedID = 7, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 17, @MedID = 89, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 17, @MedID = 89, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 17, @MedID = 58, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 17, @MedID = 40, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 17, @MedID = 40, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 17, @MedID = 78, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 17, @MedID = 78, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 17, @MedID = 65, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 17, @MedID = 55, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 17, @MedID = 23, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 18, @MedID = 78, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 18, @MedID = 90, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 18, @MedID = 91, @MedHID = 1, @Dos = '1/4', @Nec = 1;
Go

Exec uspMedication @PersID = 18, @MedID = 91, @MedHID = 2, @Dos = '1/4', @Nec = 1;
Go

Exec uspMedication @PersID = 18, @MedID = 91, @MedHID = 3, @Dos = '1/4', @Nec = 1;
Go

Exec uspMedication @PersID = 18, @MedID = 52, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 18, @MedID = 8, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 18, @MedID = 39, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 18, @MedID = 35, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 26, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 26, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 86, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 86, @MedHID = 2, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 86, @MedHID = 3, @Dos = '3', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 79, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 79, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 39, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 87, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 87, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 14, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 56, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 58, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 58, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 25, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 19, @MedID = 25, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 20, @MedID = 44, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 20, @MedID = 122, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 20, @MedID = 1, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 20, @MedID = 79, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 20, @MedID = 5, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 20, @MedID = 17, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 20, @MedID = 17, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 20, @MedID = 37, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 20, @MedID = 92, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 20, @MedID = 93, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 21, @MedID = 23, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 21, @MedID = 94, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 21, @MedID = 91, @MedHID = 1, @Dos = '1/4', @Nec = 1;
Go

Exec uspMedication @PersID = 21, @MedID = 91, @MedHID = 3, @Dos = '1/4', @Nec = 1;
Go

Exec uspMedication @PersID = 21, @MedID = 95, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 21, @MedID = 95, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 22, @MedID = 82, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 22, @MedID = 52, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 22, @MedID = 6, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 23, @MedID = 95, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 23, @MedID = 95, @MedHID = 3, @Dos = '2', @Nec = 1;
Go

Exec uspMedication @PersID = 23, @MedID = 6, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 23, @MedID = 96, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 23, @MedID = 13, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 23, @MedID = 97, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 24, @MedID = 80, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 24, @MedID = 80, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 24, @MedID = 26, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 24, @MedID = 56, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 24, @MedID = 79, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 24, @MedID = 79, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 24, @MedID = 55, @MedHID = 1, @Dos = '1/3', @Nec = 1;
Go

Exec uspMedication @PersID = 24, @MedID = 55, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 24, @MedID = 6, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspCreateTempTbl;
Go

Print 'Done.';
Go

Select * from vViewMedicationList order by Nume_Persoana, Medicament

use master;
