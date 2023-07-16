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
	@FName = 'Marusciac',
	@LName = 'Victoria',
	@PNN = '2234567890034',
	@Aline1 = 'Str. Artelor',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --34
	@Ptype = 6,
	@FName = 'Bodea',
	@LName = 'Ioan',
	@PNN = '1234567890035',
	@Aline1 = 'Str. Galaxiei',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --35
	@Ptype = 6,
	@FName = 'Mihet',
	@LName = 'Nikodim',
	@PNN = '1234567890036',
	@Aline1 = 'Str. Rapsodiei',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --36
	@Ptype = 6,
	@FName = 'Laszlo',
	@LName = 'Adel',
	@PNN = '2234567890038',
	@Aline1 = 'Str. Gheorghe Dima',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --37
	@Ptype = 6,
	@FName = 'Boer',
	@LName = 'Ilona',
	@PNN = '2234567890039',
	@Aline1 = 'Str. Salciilor',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --38
	@Ptype = 6,
	@FName = 'Barta',
	@LName = 'Margit',
	@PNN = '2234567890040',
	@Aline1 = 'Str. Lacului',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ';
Go

Exec uspAddPerson --39
	@Ptype = 6,
	@FName = 'Studnicska',
	@LName = 'Vilmos',
	@PNN = '1234567890041',
	@Aline1 = 'Str. Dornei',
	@City = 'Cluj-Napoca',
	@Prov = 'Cluj',
	@PHash = ' ',
	@Act = 0;
Go

Print 'Done.';


Print 'Populating table "Medical.MedicationHour"...';

Exec uspAddMedHour @MedTime = '09:00';
Go

Exec uspAddMedHour @MedTime = '13:00';
Go

Exec uspAddMedHour @MedTime = '19:00';

Print 'Done.';

Print 'Populating table "Medical.DiagnoseList"...';

Exec uspAddDiagnoseList @Code = 1 , @Diag = 'Holera';
Go

Exec uspAddDiagnoseList @Code = 2 , @Diag = 'Febra tifoida';
Go

Exec uspAddDiagnoseList @Code = 3 , @Diag = 'Paratifos';
Go

Exec uspAddDiagnoseList @Code = 4 , @Diag = 'Salmoneloze';
Go

Exec uspAddDiagnoseList @Code = 5 , @Diag = 'Shigelloze';
Go

Exec uspAddDiagnoseList @Code = 6 , @Diag = 'Alte infectii intestinale bacteriene';
Go

Exec uspAddDiagnoseList @Code = 7 , @Diag = 'Botulismul';
Go

Exec uspAddDiagnoseList @Code = 8 , @Diag = 'Alte intoxicatii alimentare de origine bacteriana';
Go

Exec uspAddDiagnoseList @Code = 9 , @Diag = 'Amibiaza';
Go

Exec uspAddDiagnoseList @Code = 10 , @Diag = 'Giardiaza (lambliaza)';
Go

Exec uspAddDiagnoseList @Code = 11 , @Diag = 'Alte boli intestinale prin protozoare';
Go

Exec uspAddDiagnoseList @Code = 12 , @Diag = 'Alte infectii virale si intestinale, precizate';
Go

Exec uspAddDiagnoseList @Code = 13 , @Diag = 'Diareea si gastroenterita (probabil infectioasa)';
Go

Exec uspAddDiagnoseList @Code = 14 , @Diag = 'Tuberculoza aparatului respirator';
Go

Exec uspAddDiagnoseList @Code = 15 , @Diag = 'Tuberculoza sistemului nervos';
Go

Exec uspAddDiagnoseList @Code = 16 , @Diag = 'Tuberculoza altor organe';
Go

Exec uspAddDiagnoseList @Code = 17 , @Diag = 'Tuberculoza miliara';
Go

Exec uspAddDiagnoseList @Code = 18 , @Diag = 'Antraxul';
Go

Exec uspAddDiagnoseList @Code = 19 , @Diag = 'Brucelloza';
Go

Exec uspAddDiagnoseList @Code = 20 , @Diag = 'Leptospiroza';
Go

Exec uspAddDiagnoseList @Code = 21 , @Diag = 'Alte antropo-zoonoze bacteriene';
Go

Exec uspAddDiagnoseList @Code = 22 , @Diag = 'Lepra';
Go

Exec uspAddDiagnoseList @Code = 23 , @Diag = 'Tetanosul neonatorum';
Go

Exec uspAddDiagnoseList @Code = 24 , @Diag = 'Tetanosul obstetrical';
Go

Exec uspAddDiagnoseList @Code = 25 , @Diag = 'Alte forme de tetanos';
Go

Exec uspAddDiagnoseList @Code = 26 , @Diag = 'Difteria';
Go

Exec uspAddDiagnoseList @Code = 27 , @Diag = 'Tusea convulsiva';
Go

Exec uspAddDiagnoseList @Code = 28 , @Diag = 'Scarlatina';
Go

Exec uspAddDiagnoseList @Code = 29 , @Diag = 'infectia cu meningococi';
Go

Exec uspAddDiagnoseList @Code = 30 , @Diag = 'Erizipelul';
Go

Exec uspAddDiagnoseList @Code = 31 , @Diag = 'Alte boli neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 32 , @Diag = 'Sifilisul congenital';
Go

Exec uspAddDiagnoseList @Code = 33 , @Diag = 'Sifilisul recent (primar, secundar)';
Go

Exec uspAddDiagnoseList @Code = 34 , @Diag = 'Sifilisul tardiv';
Go

Exec uspAddDiagnoseList @Code = 35 , @Diag = 'Alte forme de sifilis, fara precizare';
Go

Exec uspAddDiagnoseList @Code = 36 , @Diag = 'Infectia gonococica';
Go

Exec uspAddDiagnoseList @Code = 37 , @Diag = 'Sancrul moale';
Go

Exec uspAddDiagnoseList @Code = 38 , @Diag = 'Trichomoniaza';
Go

Exec uspAddDiagnoseList @Code = 39 , @Diag = 'Alte boli precizate al caror mod de transmitere este in special sexual';
Go

Exec uspAddDiagnoseList @Code = 40 , @Diag = 'Trahomul';
Go

Exec uspAddDiagnoseList @Code = 41 , @Diag = 'Alte boli prin Chlamidia';
Go

Exec uspAddDiagnoseList @Code = 42 , @Diag = 'Tifosul exantematic';
Go

Exec uspAddDiagnoseList @Code = 43 , @Diag = 'Tifosul recrudescent (boala Brill)';
Go

Exec uspAddDiagnoseList @Code = 44 , @Diag = 'Alte rickettsioze';
Go

Exec uspAddDiagnoseList @Code = 45 , @Diag = 'Poliomielita acuta';
Go

Exec uspAddDiagnoseList @Code = 46 , @Diag = 'Rabia';
Go

Exec uspAddDiagnoseList @Code = 47 , @Diag = 'Encefalita si meningita virala';
Go

Exec uspAddDiagnoseList @Code = 48 , @Diag = 'Alte infectii virale ale sistemului nervos';
Go

Exec uspAddDiagnoseList @Code = 49 , @Diag = 'Varicela';
Go

Exec uspAddDiagnoseList @Code = 50 , @Diag = 'Zona (herpes zoster)';
Go

Exec uspAddDiagnoseList @Code = 51 , @Diag = 'Rujeola';
Go

Exec uspAddDiagnoseList @Code = 52 , @Diag = 'Rubeola';
Go

Exec uspAddDiagnoseList @Code = 53 , @Diag = 'Alte infectii virale cu leziuni cutaneo-mucoase';
Go

Exec uspAddDiagnoseList @Code = 54 , @Diag = 'Hepatita virala A';
Go

Exec uspAddDiagnoseList @Code = 55 , @Diag = 'Hepatita acuta B';
Go

Exec uspAddDiagnoseList @Code = 56 , @Diag = 'Alte hepatite virale';
Go

Exec uspAddDiagnoseList @Code = 57 , @Diag = 'Imunodeficienta umana virala (VIH) cu unele boli infectioase si parazitare';
Go

Exec uspAddDiagnoseList @Code = 58 , @Diag = 'Imunodeficienta umana virala (VIH) cu tumori maligne';
Go

Exec uspAddDiagnoseList @Code = 59 , @Diag = 'Imunodeficienta virala umana (VIH) cu alte boli specificate';
Go

Exec uspAddDiagnoseList @Code = 60 , @Diag = 'Imunodeficienta umana (VIH) in alte afectiuni';
Go

Exec uspAddDiagnoseList @Code = 61 , @Diag = 'Imunodeficienta umana (VIH) fara precizare';
Go

Exec uspAddDiagnoseList @Code = 62 , @Diag = 'Oreionul';
Go

Exec uspAddDiagnoseList @Code = 63 , @Diag = 'Mononucleoza infectioasa';
Go

Exec uspAddDiagnoseList @Code = 64 , @Diag = 'Alte boli cu virus, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 65 , @Diag = 'Dermatofitoze';
Go

Exec uspAddDiagnoseList @Code = 66 , @Diag = 'Candidiaza';
Go

Exec uspAddDiagnoseList @Code = 67 , @Diag = 'Alte micoze';
Go

Exec uspAddDiagnoseList @Code = 68 , @Diag = 'Malaria';
Go

Exec uspAddDiagnoseList @Code = 69 , @Diag = 'Toxoplasmoza';
Go

Exec uspAddDiagnoseList @Code = 70 , @Diag = 'Alte boli prin protozoare';
Go

Exec uspAddDiagnoseList @Code = 71 , @Diag = 'Echinococoza';
Go

Exec uspAddDiagnoseList @Code = 72 , @Diag = 'Teniaza';
Go

Exec uspAddDiagnoseList @Code = 73 , @Diag = 'Trichineloza';
Go

Exec uspAddDiagnoseList @Code = 74 , @Diag = 'Ascaridiaza';
Go

Exec uspAddDiagnoseList @Code = 75 , @Diag = 'Oxiuraza';
Go

Exec uspAddDiagnoseList @Code = 76 , @Diag = 'Alte helmintiaze';
Go

Exec uspAddDiagnoseList @Code = 77 , @Diag = 'Scabia';
Go

Exec uspAddDiagnoseList @Code = 78 , @Diag = 'Alte infestatii (inclusiv pediculoza)';
Go

Exec uspAddDiagnoseList @Code = 79 , @Diag = 'Boli infectioase, alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 80 , @Diag = 'Tumora maligna a buzei';
Go

Exec uspAddDiagnoseList @Code = 81 , @Diag = 'Tumora maligna a bazei limbii';
Go

Exec uspAddDiagnoseList @Code = 82 , @Diag = 'Tumora maligna a limbii, alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 83 , @Diag = 'Tumora maligna a gingiei';
Go

Exec uspAddDiagnoseList @Code = 84 , @Diag = 'Tumora maligna a planseului gurii';
Go

Exec uspAddDiagnoseList @Code = 85 , @Diag = 'Tumora maligna a palatului';
Go

Exec uspAddDiagnoseList @Code = 86 , @Diag = 'Tumora maligna a gurii, alte si fara precizare';
Go

Exec uspAddDiagnoseList @Code = 87 , @Diag = 'Tumora maligna a glandei parotide';
Go

Exec uspAddDiagnoseList @Code = 88 , @Diag = 'Tumora maligna a glandelor salivare principale; altele si fara precizare';
Go

Exec uspAddDiagnoseList @Code = 89 , @Diag = 'Tumora maligna a amigdalei';
Go

Exec uspAddDiagnoseList @Code = 90 , @Diag = 'Tumora maligna a orofaringelui';
Go

Exec uspAddDiagnoseList @Code = 91 , @Diag = 'Tumora maligna a rinofaringelui';
Go

Exec uspAddDiagnoseList @Code = 92 , @Diag = 'Tumora maligna a sinusului piriform';
Go

Exec uspAddDiagnoseList @Code = 93 , @Diag = 'Tumora maligna a hipofaringelui';
Go

Exec uspAddDiagnoseList @Code = 94 , @Diag = 'Tumora maligna a buzei, cavitatii bucale si a faringelui cu alte localizari si rau definite';
Go

Exec uspAddDiagnoseList @Code = 95 , @Diag = 'Tumori maligne ale esofagului';
Go

Exec uspAddDiagnoseList @Code = 96 , @Diag = 'Tumori maligne ale stomacului';
Go

Exec uspAddDiagnoseList @Code = 97 , @Diag = 'Tumora maligna a intestinului subtire';
Go

Exec uspAddDiagnoseList @Code = 98 , @Diag = 'Tumora maligna a colonului';
Go

Exec uspAddDiagnoseList @Code = 99 , @Diag = 'Tumora maligna a jonctiunii rectosigmoidiene';
Go

Exec uspAddDiagnoseList @Code = 100 , @Diag = 'Tumora maligna a rectului';
Go

Exec uspAddDiagnoseList @Code = 101 , @Diag = 'Tumora maligna a anusului si canalului anal';
Go

Exec uspAddDiagnoseList @Code = 102 , @Diag = 'Tumora maligna a ficatului si canalelor biliare intrahepatice';
Go

Exec uspAddDiagnoseList @Code = 103 , @Diag = 'Tumora maligna a veziculei biliare';
Go

Exec uspAddDiagnoseList @Code = 104 , @Diag = 'Tumori maligne ale cailor biliare, alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 105 , @Diag = 'Tumori maligne ale pancreasului';
Go

Exec uspAddDiagnoseList @Code = 106 , @Diag = 'Tumora maligna a organelor digestive cu alta localizare si rau definita';
Go

Exec uspAddDiagnoseList @Code = 107 , @Diag = 'Tumora maligna a foselor nazale si a urechii medii';
Go

Exec uspAddDiagnoseList @Code = 108 , @Diag = 'Tumora maligna a sinusurilor fetei';
Go

Exec uspAddDiagnoseList @Code = 109 , @Diag = 'Tumori maligne ale laringelui';
Go

Exec uspAddDiagnoseList @Code = 110 , @Diag = 'Tumora maligna a traheei';
Go

Exec uspAddDiagnoseList @Code = 111 , @Diag = 'Tumora maligna a bronhiilor si pulmonului';
Go

Exec uspAddDiagnoseList @Code = 112 , @Diag = 'Tumora maligna a timusului';
Go

Exec uspAddDiagnoseList @Code = 113 , @Diag = 'Tumora maligna a inimii, mediastinului si pleurei';
Go

Exec uspAddDiagnoseList @Code = 114 , @Diag = 'Tumora maligna a aparatului respirator si a organelor intratoracice cu alte localizari si rau definite';
Go

Exec uspAddDiagnoseList @Code = 115 , @Diag = 'Tumora maligna a oaselor si cartilagiilor articulare ale membrelor';
Go

Exec uspAddDiagnoseList @Code = 116 , @Diag = 'Tumori maligne ale oaselor si cartilagiilor articulare, cu alte localizari si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 117 , @Diag = 'Melanomul malign al pielii';
Go

Exec uspAddDiagnoseList @Code = 118 , @Diag = 'Alte tumori maligne ale pielii';
Go

Exec uspAddDiagnoseList @Code = 119 , @Diag = 'Mesotheliomul';
Go

Exec uspAddDiagnoseList @Code = 120 , @Diag = 'Sarcomul Kaposi';
Go

Exec uspAddDiagnoseList @Code = 121 , @Diag = 'Tumora maligna a nervilor periferici si a sistemului nervos autonom';
Go

Exec uspAddDiagnoseList @Code = 122 , @Diag = 'Tumora maligna a retroperitoneului si a peritonelui';
Go

Exec uspAddDiagnoseList @Code = 123 , @Diag = 'Tumora maligna a tesutului conjunctiv si a altor tesuturi moi';
Go

Exec uspAddDiagnoseList @Code = 124 , @Diag = 'Tumori maligne ale sinului';
Go

Exec uspAddDiagnoseList @Code = 125 , @Diag = 'Tumora maligna a vulvei';
Go

Exec uspAddDiagnoseList @Code = 126 , @Diag = 'Tumora maligna a vaginului';
Go

Exec uspAddDiagnoseList @Code = 127 , @Diag = 'Tumora maligna a colului uterin';
Go

Exec uspAddDiagnoseList @Code = 128 , @Diag = 'Tumora maligna a corpului uterin';
Go

Exec uspAddDiagnoseList @Code = 129 , @Diag = 'Tumora maligna a uterului, localizare neprecizata';
Go

Exec uspAddDiagnoseList @Code = 130 , @Diag = 'Tumora maligna a ovarului';
Go

Exec uspAddDiagnoseList @Code = 131 , @Diag = 'Tumora maligna a organelor genitale la femeie, alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 132 , @Diag = 'Tumora maligna a placentei';
Go

Exec uspAddDiagnoseList @Code = 133 , @Diag = 'Tumora maligna a penisului';
Go

Exec uspAddDiagnoseList @Code = 134 , @Diag = 'Tumora maligna a prostatei';
Go

Exec uspAddDiagnoseList @Code = 135 , @Diag = 'Tumora maligna a testicolului';
Go

Exec uspAddDiagnoseList @Code = 136 , @Diag = 'Tumori maligne ale organelor genitale la barbat, alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 137 , @Diag = 'Tumora maligna a rinichiului, cu exceptia bazinetului renal';
Go

Exec uspAddDiagnoseList @Code = 138 , @Diag = 'Tumora maligna a bazinetului renal';
Go

Exec uspAddDiagnoseList @Code = 139 , @Diag = 'Tumora maligna a ureterului';
Go

Exec uspAddDiagnoseList @Code = 140 , @Diag = 'Tumora maligna a vezicii urinare';
Go

Exec uspAddDiagnoseList @Code = 141 , @Diag = 'Tumora maligna a organelor urinare, alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 142 , @Diag = 'Tumora maligna a ochiului si anexelor sale';
Go

Exec uspAddDiagnoseList @Code = 143 , @Diag = 'Tumora maligna a meningelui';
Go

Exec uspAddDiagnoseList @Code = 144 , @Diag = 'Tumora maligna a creierului';
Go

Exec uspAddDiagnoseList @Code = 145 , @Diag = 'Tumora maligna a maduvei spinarii, a nervilor cranieni si alte parti ale sistemului nervos central';
Go

Exec uspAddDiagnoseList @Code = 146 , @Diag = 'Tumora maligna a tiroidei';
Go

Exec uspAddDiagnoseList @Code = 147 , @Diag = 'Tumora maligna asuprarenalei';
Go

Exec uspAddDiagnoseList @Code = 148 , @Diag = 'Tumora maligna a altor glande endocrine si structuri inrudite';
Go

Exec uspAddDiagnoseList @Code = 149 , @Diag = 'Tumora maligna cu alte localizari si nespecificate';
Go

Exec uspAddDiagnoseList @Code = 150 , @Diag = 'Tumora maligna a ganglionilor limfatici, secundara si neprecizata';
Go

Exec uspAddDiagnoseList @Code = 151 , @Diag = 'Tumora maligna secundara a organelor respiratorii si digestive';
Go

Exec uspAddDiagnoseList @Code = 152 , @Diag = 'Tumora maligna secundara cu alte localizari';
Go

Exec uspAddDiagnoseList @Code = 153 , @Diag = 'Tumori maligne cu sediu neprecizat';
Go

Exec uspAddDiagnoseList @Code = 154 , @Diag = 'Boala Hodgkin';
Go

Exec uspAddDiagnoseList @Code = 155 , @Diag = 'Limfom folicular (nodular) non-Hodgkin';
Go

Exec uspAddDiagnoseList @Code = 156 , @Diag = 'Limfom difuz non-Hodgkin';
Go

Exec uspAddDiagnoseList @Code = 157 , @Diag = 'Limfoame periferice si cutanate cu celule T';
Go

Exec uspAddDiagnoseList @Code = 158 , @Diag = 'Limfom non-Hodgkin, de alte tipuri si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 159 , @Diag = 'Boli imunoproliferative maligne';
Go

Exec uspAddDiagnoseList @Code = 160 , @Diag = 'Mielom multiplu si tumori maligne cu plasmocite';
Go

Exec uspAddDiagnoseList @Code = 161 , @Diag = 'Leucemia limfoida';
Go

Exec uspAddDiagnoseList @Code = 162 , @Diag = 'Leucemia mieloida';
Go

Exec uspAddDiagnoseList @Code = 163 , @Diag = 'Leucemia monocitara';
Go

Exec uspAddDiagnoseList @Code = 164 , @Diag = 'Alte leucemii cu celule precizate';
Go

Exec uspAddDiagnoseList @Code = 165 , @Diag = 'Leucemia cu celule neprecizate';
Go

Exec uspAddDiagnoseList @Code = 166 , @Diag = 'Tumori maligne ale tesutului limfoid, hematopoietic si inrudite, alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 167 , @Diag = 'Tumori maligne cu localizari multiple independente (primare)';
Go

Exec uspAddDiagnoseList @Code = 168 , @Diag = 'Carcinom in situ al cavitatii bucale, al esofagului si stomacului';
Go

Exec uspAddDiagnoseList @Code = 169 , @Diag = 'Carcinom in situ al organelor digestive, alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 170 , @Diag = 'Carcinom in situ al urechii mijlocii si al aparatului respirator';
Go

Exec uspAddDiagnoseList @Code = 171 , @Diag = 'Melanom in situ';
Go

Exec uspAddDiagnoseList @Code = 172 , @Diag = 'Carcinom in situ al pielii';
Go

Exec uspAddDiagnoseList @Code = 173 , @Diag = 'Carcinom in situ al sinului';
Go

Exec uspAddDiagnoseList @Code = 174 , @Diag = 'Carcinom in situ al colului uterin';
Go

Exec uspAddDiagnoseList @Code = 175 , @Diag = 'Carcinom in situ al organelor genitale, alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 176 , @Diag = 'Carcinom in situ cu alte localizari si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 177 , @Diag = 'Tumori benigne cu alte localizari si rau definite ale aparatului digestiv';
Go

Exec uspAddDiagnoseList @Code = 178 , @Diag = 'Tumora benigna a urechii mijlocii si a aparatului respirator';
Go

Exec uspAddDiagnoseList @Code = 179 , @Diag = 'Tumora benigna a organelor intratoracice alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 180 , @Diag = 'Tumora benigna a osului si a cartilajului articular';
Go

Exec uspAddDiagnoseList @Code = 181 , @Diag = 'Tumora lipomatoasa benigna';
Go

Exec uspAddDiagnoseList @Code = 182 , @Diag = 'Hemangiom si limfangiom, toate localizarile';
Go

Exec uspAddDiagnoseList @Code = 183 , @Diag = 'Tumori benigne ale pielii';
Go

Exec uspAddDiagnoseList @Code = 184 , @Diag = 'Tumora benigna a sinului';
Go

Exec uspAddDiagnoseList @Code = 185 , @Diag = 'Leiomiomul uterului';
Go

Exec uspAddDiagnoseList @Code = 186 , @Diag = 'Alte tumori benigne ale uterului';
Go

Exec uspAddDiagnoseList @Code = 187 , @Diag = 'Tumora benigna a ovarului';
Go

Exec uspAddDiagnoseList @Code = 188 , @Diag = 'Tumora benigna a organelor genitale la femeie, alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 189 , @Diag = 'Tumora benigna a organelor urinare';
Go

Exec uspAddDiagnoseList @Code = 190 , @Diag = 'Tumora benigna a creierului si altor portiuni ale sistemului nervos central';
Go

Exec uspAddDiagnoseList @Code = 191 , @Diag = 'Tumora benigna a glandelor endocrine, alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 192 , @Diag = 'Tumora benigna cu alte localizari si fara precizare';
Go

Exec uspAddDiagnoseList @Code = 193 , @Diag = 'Tumora cavitatii bucale si a organelor digestive, cu evolutie imprevizibila si necunoscuta';
Go

Exec uspAddDiagnoseList @Code = 194 , @Diag = 'Tumora urechii mijlocii, a organelor respiratorii si intratoracice, cu evolutie imprevizibila si necunoscuta';
Go

Exec uspAddDiagnoseList @Code = 195 , @Diag = 'Tumora organelor genitale la femeie, cu evolutie imprevizibila si necunoscuta';
Go

Exec uspAddDiagnoseList @Code = 196 , @Diag = 'Tumora organelor genitale la barbat, cu evolutie imprevizibila si necunoscuta';
Go

Exec uspAddDiagnoseList @Code = 197 , @Diag = 'Tumora organelor urinare, cu evolutie imprevizibila si necunoscuta';
Go

Exec uspAddDiagnoseList @Code = 198 , @Diag = 'Tumora creierului si sistemului nervos central, cu evolutie imprevizibila si necunoscuta';
Go

Exec uspAddDiagnoseList @Code = 199 , @Diag = 'Tumora glandelor endocrine, cu evolutie imprevizibila si necunoscuta';
Go

Exec uspAddDiagnoseList @Code = 200 , @Diag = 'Poliglobulia esentiala';
Go

Exec uspAddDiagnoseList @Code = 201 , @Diag = 'Alte tumori de tesut limfoid, hematopoietic si inrudite, cu evolutie imprevizibila si necunoscuta';
Go

Exec uspAddDiagnoseList @Code = 202 , @Diag = 'Tumora cu alte localizari si neprecizata, cu evolutie imprevizibila si necunoscuta';
Go

Exec uspAddDiagnoseList @Code = 203 , @Diag = 'Anemia prin carenta de fier';
Go

Exec uspAddDiagnoseList @Code = 204 , @Diag = 'Anemia prin carenta de vitamina B12';
Go

Exec uspAddDiagnoseList @Code = 205 , @Diag = 'Anemia prin carenta de acid folic';
Go

Exec uspAddDiagnoseList @Code = 206 , @Diag = 'Alte anemii de nutritie';
Go

Exec uspAddDiagnoseList @Code = 207 , @Diag = 'Anemia datorita tulburarilor enzimatice';
Go

Exec uspAddDiagnoseList @Code = 208 , @Diag = 'Thalassemia';
Go

Exec uspAddDiagnoseList @Code = 209 , @Diag = 'Afectiuni cu hematii falciforme (drepanocitoze)';
Go

Exec uspAddDiagnoseList @Code = 210 , @Diag = 'Alte anemii hemolitice ereditare';
Go

Exec uspAddDiagnoseList @Code = 211 , @Diag = 'Anemia hemolitica dobandita';
Go

Exec uspAddDiagnoseList @Code = 212 , @Diag = 'Aplazia medulara dobandita pura (eritroblastopenia)';
Go

Exec uspAddDiagnoseList @Code = 213 , @Diag = 'Alte aplazii medulare';
Go

Exec uspAddDiagnoseList @Code = 214 , @Diag = 'Anemia posthemoragica acuta';
Go

Exec uspAddDiagnoseList @Code = 215 , @Diag = 'Alte anemii';
Go

Exec uspAddDiagnoseList @Code = 216 , @Diag = 'Coagularea intravasculara diseminata (sindromul de defibrinare)';
Go

Exec uspAddDiagnoseList @Code = 217 , @Diag = 'Carenta ereditara in factorul VIII';
Go

Exec uspAddDiagnoseList @Code = 218 , @Diag = 'Carenta ereditara in factorul IX';
Go

Exec uspAddDiagnoseList @Code = 219 , @Diag = 'Alte anomalii de coagulare';
Go

Exec uspAddDiagnoseList @Code = 220 , @Diag = 'Purpura si alte afectiuni hemoragice';
Go

Exec uspAddDiagnoseList @Code = 221 , @Diag = 'Agranulocitoza';
Go

Exec uspAddDiagnoseList @Code = 222 , @Diag = 'Tulburari functionale ale polinuclearelor neutrofile';
Go

Exec uspAddDiagnoseList @Code = 223 , @Diag = 'Alte anomalii ale leucocitelor';
Go

Exec uspAddDiagnoseList @Code = 224 , @Diag = 'Bolile splinei';
Go

Exec uspAddDiagnoseList @Code = 225 , @Diag = 'Alte boli ale sangelui si ale organelor hematopoietice';
Go

Exec uspAddDiagnoseList @Code = 226 , @Diag = 'Unele boli ale tesutului limforeticular si ale sistemului reticulo-histocitar';
Go

Exec uspAddDiagnoseList @Code = 227 , @Diag = 'Imunodeficienta cu predominarea anomaliilor de anticorpi';
Go

Exec uspAddDiagnoseList @Code = 228 , @Diag = 'Imunodeficiente combinate';
Go

Exec uspAddDiagnoseList @Code = 229 , @Diag = 'Deficit imunitar asociat altor anomalii majore';
Go

Exec uspAddDiagnoseList @Code = 230 , @Diag = 'Imunodeficienta comuna variabila';
Go

Exec uspAddDiagnoseList @Code = 231 , @Diag = 'Alte imunodeficiente';
Go

Exec uspAddDiagnoseList @Code = 232 , @Diag = 'Sarcoidoza';
Go

Exec uspAddDiagnoseList @Code = 233 , @Diag = 'Alte tulburari implicand sistemul imunitar, neclasificate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 234 , @Diag = 'Sindromul insuficientei tiroide congenitale';
Go

Exec uspAddDiagnoseList @Code = 235 , @Diag = 'Afectiuni tiroidiene si inrudite, legate de carenta in iod';
Go

Exec uspAddDiagnoseList @Code = 236 , @Diag = 'Hipotiroidia prin carenta subclinica de iod';
Go

Exec uspAddDiagnoseList @Code = 237 , @Diag = 'Alte guse netoxice';
Go

Exec uspAddDiagnoseList @Code = 238 , @Diag = 'Tireotoxicoza (hipertiroidia)';
Go

Exec uspAddDiagnoseList @Code = 239 , @Diag = 'Tiroidita';
Go

Exec uspAddDiagnoseList @Code = 240 , @Diag = 'Alte afectiuni ale tiroidei';
Go

Exec uspAddDiagnoseList @Code = 241 , @Diag = 'Diabetul zaharat insulino-dependent';
Go

Exec uspAddDiagnoseList @Code = 242 , @Diag = 'Diabetul zaharat neinsulino-dependent';
Go

Exec uspAddDiagnoseList @Code = 243 , @Diag = 'Diabetul zaharat de malnutritie';
Go

Exec uspAddDiagnoseList @Code = 244 , @Diag = 'Alte forme de diabet zaharat';
Go

Exec uspAddDiagnoseList @Code = 245 , @Diag = 'Diabet zaharat fara precizare';
Go

Exec uspAddDiagnoseList @Code = 246 , @Diag = 'Coma hipoglicemica non-diabetica';
Go

Exec uspAddDiagnoseList @Code = 247 , @Diag = 'Alte tulburari ale secretiei pancreatice interne';
Go

Exec uspAddDiagnoseList @Code = 248 , @Diag = 'Hipoparatiroidia';
Go

Exec uspAddDiagnoseList @Code = 249 , @Diag = 'Hipoparatiroidia si alte boli ale glandei paratiroide';
Go

Exec uspAddDiagnoseList @Code = 250 , @Diag = 'Hipersecretia glandei hipofizare (pituitara)';
Go

Exec uspAddDiagnoseList @Code = 251 , @Diag = 'Hiposecretia si alte tulburari ale glandei hipofizare';
Go

Exec uspAddDiagnoseList @Code = 252 , @Diag = 'Sindromul Cushing';
Go

Exec uspAddDiagnoseList @Code = 253 , @Diag = 'Tulburari adreno-genitale';
Go

Exec uspAddDiagnoseList @Code = 254 , @Diag = 'Hiperaldosteronismul';
Go

Exec uspAddDiagnoseList @Code = 255 , @Diag = 'Alte tulburari ale glandei suprarenale';
Go

Exec uspAddDiagnoseList @Code = 256 , @Diag = 'Disfunctia ovariana';
Go

Exec uspAddDiagnoseList @Code = 257 , @Diag = 'Disfunctia testiculara';
Go

Exec uspAddDiagnoseList @Code = 258 , @Diag = 'Tulburarile pubertatii neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 259 , @Diag = 'Disfunctiuni pluriglandurale';
Go

Exec uspAddDiagnoseList @Code = 260 , @Diag = 'Bolile timusului';
Go

Exec uspAddDiagnoseList @Code = 261 , @Diag = 'Alte tulburari endocrine';
Go

Exec uspAddDiagnoseList @Code = 262 , @Diag = 'Malnutritia proteino-energetica grava fara precizare';
Go

Exec uspAddDiagnoseList @Code = 263 , @Diag = 'Malnutritia proteino-energetica usoara sau moderata';
Go

Exec uspAddDiagnoseList @Code = 264 , @Diag = 'Intarzierea de dezvoltare datorita malnutritiei proteino-energetice';
Go

Exec uspAddDiagnoseList @Code = 265 , @Diag = 'Malnutritia proteino-energetica, fara precizare';
Go

Exec uspAddDiagnoseList @Code = 266 , @Diag = 'Avitaminoza A';
Go

Exec uspAddDiagnoseList @Code = 267 , @Diag = 'Carenta de tiamina';
Go

Exec uspAddDiagnoseList @Code = 268 , @Diag = 'Carenta in acid nicotinic (pelagra)';
Go

Exec uspAddDiagnoseList @Code = 269 , @Diag = 'Alte avitaminoze din grupa B';
Go

Exec uspAddDiagnoseList @Code = 270 , @Diag = 'Carenta de acid ascorbic';
Go

Exec uspAddDiagnoseList @Code = 271 , @Diag = 'Rahitismul evolutiv';
Go

Exec uspAddDiagnoseList @Code = 272 , @Diag = 'Carenta in vitamina D fara precizare';
Go

Exec uspAddDiagnoseList @Code = 273 , @Diag = 'Alte avitaminoze';
Go

Exec uspAddDiagnoseList @Code = 274 , @Diag = 'Carenta alimentara in calciu';
Go

Exec uspAddDiagnoseList @Code = 275 , @Diag = 'Carenta alimentara in seleniu';
Go

Exec uspAddDiagnoseList @Code = 276 , @Diag = 'Carenta in zinc';
Go

Exec uspAddDiagnoseList @Code = 277 , @Diag = 'Carenta in alte elemente nutritionale';
Go

Exec uspAddDiagnoseList @Code = 278 , @Diag = 'Alte carente nutritionale';
Go

Exec uspAddDiagnoseList @Code = 279 , @Diag = 'Obezitatea';
Go

Exec uspAddDiagnoseList @Code = 280 , @Diag = 'Alte excese de aport';
Go

Exec uspAddDiagnoseList @Code = 281 , @Diag = 'Fenilcetonuria';
Go

Exec uspAddDiagnoseList @Code = 282 , @Diag = 'Tulburari de metabolism ale acizilor aminati aromatici';
Go

Exec uspAddDiagnoseList @Code = 283 , @Diag = 'Alte tulburari de metabolism ale acizilor aminati';
Go

Exec uspAddDiagnoseList @Code = 284 , @Diag = 'Intoleranta la lactoza';
Go

Exec uspAddDiagnoseList @Code = 285 , @Diag = 'Alte tulburari de metabolism al hidratilor de carbon';
Go

Exec uspAddDiagnoseList @Code = 286 , @Diag = 'Tulburari de metabolism al sfingolipidelor si al altor lipide de rezerva';
Go

Exec uspAddDiagnoseList @Code = 287 , @Diag = 'Tulburari de metabolism al glicosiaminoglicani';
Go

Exec uspAddDiagnoseList @Code = 288 , @Diag = 'Tulburari de metabolism al glicoproteinelor';
Go

Exec uspAddDiagnoseList @Code = 289 , @Diag = 'Tulburari de metabolism al lipoproteinelor si alte lipidemii';
Go

Exec uspAddDiagnoseList @Code = 290 , @Diag = 'Tulburari de metabolism al purinelor si al pirimidinei';
Go

Exec uspAddDiagnoseList @Code = 291 , @Diag = 'Tulburari de metabolism al porfirinei si bilirubinei';
Go

Exec uspAddDiagnoseList @Code = 292 , @Diag = 'Tulburari de metabolism al mineralelor';
Go

Exec uspAddDiagnoseList @Code = 293 , @Diag = 'Fibroza chistica';
Go

Exec uspAddDiagnoseList @Code = 294 , @Diag = 'Amiloidoza';
Go

Exec uspAddDiagnoseList @Code = 295 , @Diag = 'Hipovolemia deshidratara';
Go

Exec uspAddDiagnoseList @Code = 296 , @Diag = 'Alte tulburari de echilibru acido-bazic hidric si electrolitic';
Go

Exec uspAddDiagnoseList @Code = 297 , @Diag = 'Alte tulburari de metabolism';
Go

Exec uspAddDiagnoseList @Code = 298 , @Diag = 'Tulburari metabolice si endocrine dupa o prestatie medicala in vederea diagnosticului si tratamentului, neclasate in alte locuri';
Go

Exec uspAddDiagnoseList @Code = 299 , @Diag = 'Dementa vasculara';
Go

Exec uspAddDiagnoseList @Code = 300 , @Diag = 'Dementa fara precizare (presenila, senila)';
Go

Exec uspAddDiagnoseList @Code = 301 , @Diag = 'S+A2060indrom amnezic organic, neindus de alcool si alte substante psiho-afective';
Go

Exec uspAddDiagnoseList @Code = 302 , @Diag = 'Delir neindus de alcool si alte substante psihoactive';
Go

Exec uspAddDiagnoseList @Code = 303 , @Diag = 'Alte tulburari mentale datorate unei leziuni cerebrale, unei disfunctii cerebrale si unei afectiuni somatice';
Go

Exec uspAddDiagnoseList @Code = 304 , @Diag = 'Tulburari ale personalitatii si comportamentului datorate unei afectiuni, leziuni si disfunctii cerebrale';
Go

Exec uspAddDiagnoseList @Code = 305 , @Diag = 'Tulburare mentala organica sau simptomatica, fara precizare';
Go

Exec uspAddDiagnoseList @Code = 306 , @Diag = 'Tulburari mentale si de comportament legate de consumul de alcool';
Go

Exec uspAddDiagnoseList @Code = 307 , @Diag = 'Tulburari mentale si de comportament legate de consumul opiaceelor si derivatelor de cannabis, cocaina si halucinogene';
Go

Exec uspAddDiagnoseList @Code = 308 , @Diag = 'Tulburari mentale si de comportament legate de consumul sedativelor sau hipnoticelor';
Go

Exec uspAddDiagnoseList @Code = 309 , @Diag = 'Tulburari mentale si de comportament legate de consumul altor stimulente, inclusiv cofeina';
Go

Exec uspAddDiagnoseList @Code = 310 , @Diag = 'Tulburari mentale si de comportament legate de consumul tutunului';
Go

Exec uspAddDiagnoseList @Code = 311 , @Diag = 'Tulburari mentale si de comportament legate de consumul solventilor volatili';
Go

Exec uspAddDiagnoseList @Code = 312 , @Diag = 'Schizofrenia';
Go

Exec uspAddDiagnoseList @Code = 313 , @Diag = 'Tulburare schizotipala';
Go

Exec uspAddDiagnoseList @Code = 314 , @Diag = 'Tulburari delirante persistente';
Go

Exec uspAddDiagnoseList @Code = 315 , @Diag = 'Tulburari psihotice acute si tranzitorii';
Go

Exec uspAddDiagnoseList @Code = 316 , @Diag = 'Tulburare deliranta indusa';
Go

Exec uspAddDiagnoseList @Code = 317 , @Diag = 'Tulburari schizoafective';
Go

Exec uspAddDiagnoseList @Code = 318 , @Diag = 'Alte tulburari psihotice neorganice';
Go

Exec uspAddDiagnoseList @Code = 319 , @Diag = 'Episod maniacal';
Go

Exec uspAddDiagnoseList @Code = 320 , @Diag = 'Tulburare afectiva bipolara';
Go

Exec uspAddDiagnoseList @Code = 321 , @Diag = 'Episod depresiv';
Go

Exec uspAddDiagnoseList @Code = 322 , @Diag = 'Tulburari ale dispozitiei afectivitatii';
Go

Exec uspAddDiagnoseList @Code = 323 , @Diag = 'Alte tulburari ale dispozitiei afectivitatii';
Go

Exec uspAddDiagnoseList @Code = 324 , @Diag = 'Tulburari ale dispoziitei afectivitatii fara precizare';
Go

Exec uspAddDiagnoseList @Code = 325 , @Diag = 'Tulburari anxioase';
Go

Exec uspAddDiagnoseList @Code = 326 , @Diag = 'Tulburare obsesionala-compulsiva';
Go

Exec uspAddDiagnoseList @Code = 327 , @Diag = 'Reactia la un factor de stress important si tulburari de adaptare';
Go

Exec uspAddDiagnoseList @Code = 328 , @Diag = 'Tulburari disociative (de conversie)';
Go

Exec uspAddDiagnoseList @Code = 329 , @Diag = 'Tulburari somatice';
Go

Exec uspAddDiagnoseList @Code = 330 , @Diag = 'Alte tulburari nevrotice';
Go

Exec uspAddDiagnoseList @Code = 331 , @Diag = 'Tulburari de alimentatie';
Go

Exec uspAddDiagnoseList @Code = 332 , @Diag = 'Tulburari de somn neorganice';
Go

Exec uspAddDiagnoseList @Code = 333 , @Diag = 'Disfunctie sexuala, nedatorata unei tulburari sau boli organice';
Go

Exec uspAddDiagnoseList @Code = 334 , @Diag = 'Tulburari mentale si de comportament asociate cu puerperiu, necalsate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 335 , @Diag = 'Factori psihologici si comportamentali asociati bolilor sau tulburari clasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 336 , @Diag = 'Abuz de substanta nedeterminand dependenta';
Go

Exec uspAddDiagnoseList @Code = 337 , @Diag = 'sindroame comportamentale neprecizate asociate perturbarilor fiziologice si factorilor fizici';
Go

Exec uspAddDiagnoseList @Code = 338 , @Diag = 'Tulburari specifice ale personalitatii';
Go

Exec uspAddDiagnoseList @Code = 339 , @Diag = 'Tulburari de identitate sexuala si de preferinta sexuala';
Go

Exec uspAddDiagnoseList @Code = 340 , @Diag = 'Probleme psihologice si comportamentale asociate dezvoltarii sexuale si orientarii';
Go

Exec uspAddDiagnoseList @Code = 341 , @Diag = 'Alte tulburari ale personalitati si a comportamentului la adulti';
Go

Exec uspAddDiagnoseList @Code = 342 , @Diag = 'intarziere mentala uSoara';
Go

Exec uspAddDiagnoseList @Code = 343 , @Diag = 'intarziere mentala medie';
Go

Exec uspAddDiagnoseList @Code = 344 , @Diag = 'intarziere mentala grava';
Go

Exec uspAddDiagnoseList @Code = 345 , @Diag = 'intarziere mentala profunda';
Go

Exec uspAddDiagnoseList @Code = 346 , @Diag = 'Alte forme de intarziere mentala si fara precizare';
Go

Exec uspAddDiagnoseList @Code = 347 , @Diag = 'Tulburari specifice de dezvoltarea vorbirii si limbajului, achizitiilor scolare';
Go

Exec uspAddDiagnoseList @Code = 348 , @Diag = 'Tulburari specifice de dezvoltare motorie';
Go

Exec uspAddDiagnoseList @Code = 349 , @Diag = 'Alte tulburari ale dezvoltarii psihologice si fara precizare';
Go

Exec uspAddDiagnoseList @Code = 350 , @Diag = 'Tulburari hiperchinetice';
Go

Exec uspAddDiagnoseList @Code = 351 , @Diag = 'Tulburari de conduita';
Go

Exec uspAddDiagnoseList @Code = 352 , @Diag = 'Tulburari emotionale cu aparitia in special in copilarie';
Go

Exec uspAddDiagnoseList @Code = 353 , @Diag = 'Tulburari ale functiei sociale, cu aparitia specifica in perioada copilariei si adolescentei';
Go

Exec uspAddDiagnoseList @Code = 354 , @Diag = 'Alte tulburari de comportament si tulburari emotionale aparand de obicei in perioada copilariei si adolescentei';
Go

Exec uspAddDiagnoseList @Code = 355 , @Diag = 'Tulburare mentala fara alte indicatii';
Go

Exec uspAddDiagnoseList @Code = 356 , @Diag = 'Meningita bacteriana, neclasata in alte locuri';
Go

Exec uspAddDiagnoseList @Code = 357 , @Diag = 'Meningita datorita altor cauze si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 358 , @Diag = 'Encefalita, mielita, encefalomielita';
Go

Exec uspAddDiagnoseList @Code = 359 , @Diag = 'Abces si granulom intracranian si intrarahidian';
Go

Exec uspAddDiagnoseList @Code = 360 , @Diag = 'Flebita si tromboflebita intracraniana si intrarahidiana';
Go

Exec uspAddDiagnoseList @Code = 361 , @Diag = 'Coreea Huntington';
Go

Exec uspAddDiagnoseList @Code = 362 , @Diag = 'Ataxia ereditara';
Go

Exec uspAddDiagnoseList @Code = 363 , @Diag = 'Amiotrofia spinala si sindroame inrudite';
Go

Exec uspAddDiagnoseList @Code = 364 , @Diag = 'Boala Parkinson';
Go

Exec uspAddDiagnoseList @Code = 365 , @Diag = 'Sindrom parkinsonian secundar';
Go

Exec uspAddDiagnoseList @Code = 366 , @Diag = 'Alte boli degenerative ale nucleilor centrali cenusii';
Go

Exec uspAddDiagnoseList @Code = 367 , @Diag = 'Alte sindroame extrapiramidale si tulburari de motricitate';
Go

Exec uspAddDiagnoseList @Code = 368 , @Diag = 'Boala Alzheimer';
Go

Exec uspAddDiagnoseList @Code = 369 , @Diag = 'Alte afectiuni degenerative ale sistemului nervos, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 370 , @Diag = 'Scleroza multipla';
Go

Exec uspAddDiagnoseList @Code = 371 , @Diag = 'Alte afectiuni demielinizante acute diseminate';
Go

Exec uspAddDiagnoseList @Code = 372 , @Diag = 'Alte afectiuni demielinizante ale sistemului nervos central';
Go

Exec uspAddDiagnoseList @Code = 373 , @Diag = 'Epilepsia';
Go

Exec uspAddDiagnoseList @Code = 374 , @Diag = 'Stare de rau epileptic';
Go

Exec uspAddDiagnoseList @Code = 375 , @Diag = 'sindroame de algii cefalice';
Go

Exec uspAddDiagnoseList @Code = 376 , @Diag = 'Accidente ischemice cerebrale tranzitorii si sindroame inrudite';
Go

Exec uspAddDiagnoseList @Code = 377 , @Diag = 'Tulburari de somn';
Go

Exec uspAddDiagnoseList @Code = 378 , @Diag = 'Afectiunile nervilor cranieni';
Go

Exec uspAddDiagnoseList @Code = 379 , @Diag = 'Afectiunile radacinilor si plexurilor nervoase';
Go

Exec uspAddDiagnoseList @Code = 380 , @Diag = 'Mononevrite';
Go

Exec uspAddDiagnoseList @Code = 381 , @Diag = 'Neuropatia ereditara si idiopatica';
Go

Exec uspAddDiagnoseList @Code = 382 , @Diag = 'Polinevrite inflamatorii';
Go

Exec uspAddDiagnoseList @Code = 383 , @Diag = 'Alte polinevrite';
Go

Exec uspAddDiagnoseList @Code = 384 , @Diag = 'Alte afectiuni ale sistemului nervos periferic';
Go

Exec uspAddDiagnoseList @Code = 385 , @Diag = 'Miastenia si alte afectiuni neuromusculare';
Go

Exec uspAddDiagnoseList @Code = 386 , @Diag = 'Afectiuni musculare primitive (Distrofia musculara Duchenne)';
Go

Exec uspAddDiagnoseList @Code = 387 , @Diag = 'Alte afectiuni musculare';
Go

Exec uspAddDiagnoseList @Code = 388 , @Diag = 'Paralizia cerebrala infantila';
Go

Exec uspAddDiagnoseList @Code = 389 , @Diag = 'Hemiplegia';
Go

Exec uspAddDiagnoseList @Code = 390 , @Diag = 'Paraplegia, tetraplegia';
Go

Exec uspAddDiagnoseList @Code = 391 , @Diag = 'Alte sindroame paralitice';
Go

Exec uspAddDiagnoseList @Code = 392 , @Diag = 'Afectiuni ale sistemului nervos autonom';
Go

Exec uspAddDiagnoseList @Code = 393 , @Diag = 'Hidrocefalia';
Go

Exec uspAddDiagnoseList @Code = 394 , @Diag = 'Encefalopatia toxica si alte afectiuni ale creierului';
Go

Exec uspAddDiagnoseList @Code = 395 , @Diag = 'Alte afectiuni ale maduvei spinarii';
Go

Exec uspAddDiagnoseList @Code = 396 , @Diag = 'Alte afectiuni ale sistemului nervos central';
Go

Exec uspAddDiagnoseList @Code = 397 , @Diag = 'Afectiunile sistemului nervos dupa un act medical in vederea diagnosticului si tratamentului neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 398 , @Diag = 'Orgelet si chalazion';
Go

Exec uspAddDiagnoseList @Code = 399 , @Diag = 'Alte afectiuni ale pleoapei';
Go

Exec uspAddDiagnoseList @Code = 400 , @Diag = 'Afectiuni ale aparatului lacrimal';
Go

Exec uspAddDiagnoseList @Code = 401 , @Diag = 'Afectiuni ale orbitei';
Go

Exec uspAddDiagnoseList @Code = 402 , @Diag = 'Conjunctivita';
Go

Exec uspAddDiagnoseList @Code = 403 , @Diag = 'Alte afectiuni ale conjunctivei';
Go

Exec uspAddDiagnoseList @Code = 404 , @Diag = 'Afectiuni ale scleroticei';
Go

Exec uspAddDiagnoseList @Code = 405 , @Diag = 'Cheratita';
Go

Exec uspAddDiagnoseList @Code = 406 , @Diag = 'Cicatrice, opacitati si alte afectiuni ale corneei';
Go

Exec uspAddDiagnoseList @Code = 407 , @Diag = 'Iridociclita';
Go

Exec uspAddDiagnoseList @Code = 408 , @Diag = 'Alte afectiuni ale irisului si corpilor ciliari';
Go

Exec uspAddDiagnoseList @Code = 409 , @Diag = 'Cataracta senila';
Go

Exec uspAddDiagnoseList @Code = 410 , @Diag = 'Alte cataracte';
Go

Exec uspAddDiagnoseList @Code = 411 , @Diag = 'Alte afectiuni ale cristalinului';
Go

Exec uspAddDiagnoseList @Code = 412 , @Diag = 'Chorioretinita si alte afectiuni ale choroidei';
Go

Exec uspAddDiagnoseList @Code = 413 , @Diag = 'Dezlipirea si ruptura retinei';
Go

Exec uspAddDiagnoseList @Code = 414 , @Diag = 'Alte afectiuni retiniene';
Go

Exec uspAddDiagnoseList @Code = 415 , @Diag = 'Glaucomul';
Go

Exec uspAddDiagnoseList @Code = 416 , @Diag = 'Afectiuni ale corpului vitros';
Go

Exec uspAddDiagnoseList @Code = 417 , @Diag = 'Afectiuni ale globului ocular';
Go

Exec uspAddDiagnoseList @Code = 418 , @Diag = 'Nevrita optica';
Go

Exec uspAddDiagnoseList @Code = 419 , @Diag = 'Alte afectiuni ale nervului si cailor optice';
Go

Exec uspAddDiagnoseList @Code = 420 , @Diag = 'Strabism paralitic';
Go

Exec uspAddDiagnoseList @Code = 421 , @Diag = 'Alte anomalii de miscare binoculara';
Go

Exec uspAddDiagnoseList @Code = 422 , @Diag = 'Vicii de refractie si tulburari de acomodare';
Go

Exec uspAddDiagnoseList @Code = 423 , @Diag = 'Tulburari de vedere';
Go

Exec uspAddDiagnoseList @Code = 424 , @Diag = 'Cecitatea si scaderea vazului';
Go

Exec uspAddDiagnoseList @Code = 425 , @Diag = 'Nistagmus si alte miscari anormale';
Go

Exec uspAddDiagnoseList @Code = 426 , @Diag = 'Alte afectiuni ale ochiului si anexelor sale';
Go

Exec uspAddDiagnoseList @Code = 427 , @Diag = 'Afectiuni ale ochiului si anexelor sale in vederea dg si trat. neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 428 , @Diag = 'Otita externa';
Go

Exec uspAddDiagnoseList @Code = 429 , @Diag = 'Alte afectiuni ale urechii externe';
Go

Exec uspAddDiagnoseList @Code = 430 , @Diag = 'Otita medie nesupurata';
Go

Exec uspAddDiagnoseList @Code = 431 , @Diag = 'Otita medie supurativa fara precizare';
Go

Exec uspAddDiagnoseList @Code = 432 , @Diag = 'Inflamatia, obstructia si alte afectiuni ale trompei Eustachio';
Go

Exec uspAddDiagnoseList @Code = 433 , @Diag = 'Mastoidita si afectiuni asociate';
Go

Exec uspAddDiagnoseList @Code = 434 , @Diag = 'Colesteatomul urechii medii';
Go

Exec uspAddDiagnoseList @Code = 435 , @Diag = 'Perforatia si alte afectiuni ale timpanului';
Go

Exec uspAddDiagnoseList @Code = 436 , @Diag = 'Alte afectiuni ale urechii medii si apofizei mastoide';
Go

Exec uspAddDiagnoseList @Code = 437 , @Diag = 'Otoscleroza';
Go

Exec uspAddDiagnoseList @Code = 438 , @Diag = 'Afectiunile functiei vestibulare si sindroame de vertij';
Go

Exec uspAddDiagnoseList @Code = 439 , @Diag = 'Alte boli ale urechii interne';
Go

Exec uspAddDiagnoseList @Code = 440 , @Diag = 'Surditate de transmisie si neurosenzoriala';
Go

Exec uspAddDiagnoseList @Code = 441 , @Diag = 'Alte pierderi ale auzului si surdomutitatea';
Go

Exec uspAddDiagnoseList @Code = 442 , @Diag = 'Otalgia si otoreea';
Go

Exec uspAddDiagnoseList @Code = 443 , @Diag = 'Alte afectiuni ale urechii, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 444 , @Diag = 'Afectiuni dupa un act medical de dg. si trat. la nivelul urechii si apof. Mastoide, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 445 , @Diag = 'Reumatismul articular acut fara mentionarea complicatiilor cardiace';
Go

Exec uspAddDiagnoseList @Code = 446 , @Diag = 'Reumatismul articular acut cu complicatii cardiace';
Go

Exec uspAddDiagnoseList @Code = 447 , @Diag = 'Coreeea reumatismala';
Go

Exec uspAddDiagnoseList @Code = 448 , @Diag = 'Boli ale valvulei mitrale, reumatismale';
Go

Exec uspAddDiagnoseList @Code = 449 , @Diag = 'Boli ale valvulei aortice, reumatismale';
Go

Exec uspAddDiagnoseList @Code = 450 , @Diag = 'Boli ale valvulei tricuspide, reumatismale';
Go

Exec uspAddDiagnoseList @Code = 451 , @Diag = 'Boli multiple valvulare';
Go

Exec uspAddDiagnoseList @Code = 452 , @Diag = 'Alte boli reumatice ale inimii';
Go

Exec uspAddDiagnoseList @Code = 453 , @Diag = 'Hipertensiunea esentiala (primara)';
Go

Exec uspAddDiagnoseList @Code = 454 , @Diag = 'Cardiopatia hipertensiva';
Go

Exec uspAddDiagnoseList @Code = 455 , @Diag = 'Nefropatia hipertensiva';
Go

Exec uspAddDiagnoseList @Code = 456 , @Diag = 'Cario-nefropatia hipertensiva';
Go

Exec uspAddDiagnoseList @Code = 457 , @Diag = 'Hipertensiunea secundar?';
Go

Exec uspAddDiagnoseList @Code = 458 , @Diag = 'Angina pectorala';
Go

Exec uspAddDiagnoseList @Code = 459 , @Diag = 'Infarct miocardic acut';
Go

Exec uspAddDiagnoseList @Code = 460 , @Diag = 'Infarct miocardic ulterior';
Go

Exec uspAddDiagnoseList @Code = 461 , @Diag = 'Alte boli ischemice acute cardiace';
Go

Exec uspAddDiagnoseList @Code = 462 , @Diag = 'Cardiopatie ischemica cronica';
Go

Exec uspAddDiagnoseList @Code = 463 , @Diag = 'Embolia vaselor pulmonare';
Go

Exec uspAddDiagnoseList @Code = 464 , @Diag = 'Alte cardiopatii pulmonare';
Go

Exec uspAddDiagnoseList @Code = 465 , @Diag = 'Cord pulmonar cronic';
Go

Exec uspAddDiagnoseList @Code = 466 , @Diag = 'Alte boli ale vaselor pulmonare';
Go

Exec uspAddDiagnoseList @Code = 467 , @Diag = 'Pericardita acuta';
Go

Exec uspAddDiagnoseList @Code = 468 , @Diag = 'Alte boli ale pericardului';
Go

Exec uspAddDiagnoseList @Code = 469 , @Diag = 'Endocardita acuta si subacuta';
Go

Exec uspAddDiagnoseList @Code = 470 , @Diag = 'Afectiuni nereumatice ale valvei mitrale';
Go

Exec uspAddDiagnoseList @Code = 471 , @Diag = 'Afectiuni nereumatice ale valvei aortice';
Go

Exec uspAddDiagnoseList @Code = 472 , @Diag = 'Afectiuni nereumatice ale valvei tricuspide';
Go

Exec uspAddDiagnoseList @Code = 473 , @Diag = 'Afectiunile valvei pulmonare';
Go

Exec uspAddDiagnoseList @Code = 474 , @Diag = 'Endocardita, valvula nespecificata';
Go

Exec uspAddDiagnoseList @Code = 475 , @Diag = 'Miocardita acuta';
Go

Exec uspAddDiagnoseList @Code = 476 , @Diag = 'Cardiomiopatia';
Go

Exec uspAddDiagnoseList @Code = 477 , @Diag = 'Hemoragia subarahnoida';
Go

Exec uspAddDiagnoseList @Code = 478 , @Diag = 'Hemoragia intracerebrala si alte hemoragii intracraniene netraumatice';
Go

Exec uspAddDiagnoseList @Code = 479 , @Diag = 'Infarct cerebral';
Go

Exec uspAddDiagnoseList @Code = 480 , @Diag = 'Accident cerebral nespecificat ca hemoragie sau infarct';
Go

Exec uspAddDiagnoseList @Code = 481 , @Diag = 'Alte boli cerebrovasculare';
Go

Exec uspAddDiagnoseList @Code = 482 , @Diag = 'Ateroscleroza';
Go

Exec uspAddDiagnoseList @Code = 483 , @Diag = 'Anevrismul si disectia de aorta';
Go

Exec uspAddDiagnoseList @Code = 484 , @Diag = 'Alte anevrisme';
Go

Exec uspAddDiagnoseList @Code = 485 , @Diag = 'Alte boli vasculare periferice';
Go

Exec uspAddDiagnoseList @Code = 486 , @Diag = 'Embolia si tromboza arteriala';
Go

Exec uspAddDiagnoseList @Code = 487 , @Diag = 'Alte afectiuni ale arterelor si arteriolelor';
Go

Exec uspAddDiagnoseList @Code = 488 , @Diag = 'Bolile capilarelor';
Go

Exec uspAddDiagnoseList @Code = 489 , @Diag = 'Flebita si tromboflebita';
Go

Exec uspAddDiagnoseList @Code = 490 , @Diag = 'Embolia si tromboza venoasa';
Go

Exec uspAddDiagnoseList @Code = 491 , @Diag = 'Vene varicoase ale membrelor inferioare';
Go

Exec uspAddDiagnoseList @Code = 492 , @Diag = 'Hemoroizi';
Go

Exec uspAddDiagnoseList @Code = 493 , @Diag = 'Varice esofagiene si alte afectiuni ale venelor';
Go

Exec uspAddDiagnoseList @Code = 494 , @Diag = 'Limfadenita nespecifica, exceptind cea acuta';
Go

Exec uspAddDiagnoseList @Code = 495 , @Diag = 'Hipotensiunea';
Go

Exec uspAddDiagnoseList @Code = 496 , @Diag = 'Afectiuni postchirurgicale sau proceduri pe aparatul circulator FAI';
Go

Exec uspAddDiagnoseList @Code = 497 , @Diag = 'Alte afectiuni nespecificate ale aparatului circulator';
Go

Exec uspAddDiagnoseList @Code = 498 , @Diag = 'Rino-faringita acuta';
Go

Exec uspAddDiagnoseList @Code = 499 , @Diag = 'sinuzita acuta';
Go

Exec uspAddDiagnoseList @Code = 500 , @Diag = 'faringita si amigdalita acuta';
Go

Exec uspAddDiagnoseList @Code = 501 , @Diag = 'laringita si traheita acuta';
Go

Exec uspAddDiagnoseList @Code = 502 , @Diag = 'laringita obstructiva acuta si epiglotita acuta';
Go

Exec uspAddDiagnoseList @Code = 503 , @Diag = 'infectii acute ale cailor respiratorii superioare cu localizari multiple si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 504 , @Diag = 'gripa, cu virus identificat';
Go

Exec uspAddDiagnoseList @Code = 505 , @Diag = 'gripa, cu virus neidentificat';
Go

Exec uspAddDiagnoseList @Code = 506 , @Diag = 'pneumonia virala, neclasata la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 507 , @Diag = 'pneumonia prin streptococus pneumoniae';
Go

Exec uspAddDiagnoseList @Code = 508 , @Diag = 'pneumonia prin haemophilus influenzae';
Go

Exec uspAddDiagnoseList @Code = 509 , @Diag = 'pneumonii bacteriene, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 510 , @Diag = 'pneumonia datorita altor microorganisme infectioase, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 511 , @Diag = 'Pneumonii cu microorganisme neprecizate';
Go

Exec uspAddDiagnoseList @Code = 512 , @Diag = 'Bronsita si bronsiolita acuta';
Go

Exec uspAddDiagnoseList @Code = 513 , @Diag = 'I+A3359nfectii acute ale cailor respiratorii inferioare fara precizare';
Go

Exec uspAddDiagnoseList @Code = 514 , @Diag = 'Rinita alergica si vazomotorie';
Go

Exec uspAddDiagnoseList @Code = 515 , @Diag = 'Rinita, rinofaringita si faringita cronica';
Go

Exec uspAddDiagnoseList @Code = 516 , @Diag = 'Sinuzita cronica';
Go

Exec uspAddDiagnoseList @Code = 517 , @Diag = 'Bolile cronice ale amigdalelor si vegetatiilor adenoide';
Go

Exec uspAddDiagnoseList @Code = 518 , @Diag = 'Angina flegmonoasa';
Go

Exec uspAddDiagnoseList @Code = 519 , @Diag = 'Laringita si laringo-traheita cronica';
Go

Exec uspAddDiagnoseList @Code = 520 , @Diag = 'Bolile corzilor voale si ale laringelui, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 521 , @Diag = 'Alteboli ale cailor respiratorii superioare';
Go

Exec uspAddDiagnoseList @Code = 522 , @Diag = 'Bronsita neprecizata ca acuta sau cronica';
Go

Exec uspAddDiagnoseList @Code = 523 , @Diag = 'Bronsita cronica simpla si mucopurulenta';
Go

Exec uspAddDiagnoseList @Code = 524 , @Diag = 'Bronsita cronica FAI';
Go

Exec uspAddDiagnoseList @Code = 525 , @Diag = 'Emfizemul';
Go

Exec uspAddDiagnoseList @Code = 526 , @Diag = 'Alte boli pulmonare obstructive cronice';
Go

Exec uspAddDiagnoseList @Code = 527 , @Diag = 'Astmul';
Go

Exec uspAddDiagnoseList @Code = 528 , @Diag = 'Bronsiectazia';
Go

Exec uspAddDiagnoseList @Code = 529 , @Diag = 'Pneumoconioza de carbune a minerilor';
Go

Exec uspAddDiagnoseList @Code = 530 , @Diag = 'Pneumodonioza datorata azbestului si altor fibre minerale';
Go

Exec uspAddDiagnoseList @Code = 531 , @Diag = 'Pneumoconioza datorata pulberii de siliciu';
Go

Exec uspAddDiagnoseList @Code = 532 , @Diag = 'Pneumoconioza datorata altor pulberi neorganice si fara precizare';
Go

Exec uspAddDiagnoseList @Code = 533 , @Diag = 'Pneumoconioza asociata cu tuberculoza';
Go

Exec uspAddDiagnoseList @Code = 534 , @Diag = 'Afectiuni ale cailor aeriene datorate pulberilor organice precizate';
Go

Exec uspAddDiagnoseList @Code = 535 , @Diag = 'Afectiuni respiratorii datorate altor agenti externi';
Go

Exec uspAddDiagnoseList @Code = 536 , @Diag = 'Edem pulmonar';
Go

Exec uspAddDiagnoseList @Code = 537 , @Diag = 'Alte afectiuni pulmonare interstitiale';
Go

Exec uspAddDiagnoseList @Code = 538 , @Diag = 'Abcesul pulmonar si al mediastinului';
Go

Exec uspAddDiagnoseList @Code = 539 , @Diag = 'Pneumothorax';
Go

Exec uspAddDiagnoseList @Code = 540 , @Diag = 'Afectiuni pleurale';
Go

Exec uspAddDiagnoseList @Code = 541 , @Diag = 'Tulburari respiratorii dupa un act medical privind diagnosticul si tratamentul, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 542 , @Diag = 'Alte tulburari respiratorii';
Go

Exec uspAddDiagnoseList @Code = 543 , @Diag = 'Tulburari de ontogeneza si de eruptie';
Go

Exec uspAddDiagnoseList @Code = 544 , @Diag = 'Carii dentare';
Go

Exec uspAddDiagnoseList @Code = 545 , @Diag = 'Alte boli ale tesutului dentar dur';
Go

Exec uspAddDiagnoseList @Code = 546 , @Diag = 'Afectiuni ale gingiei si crestei alveolare edentate';
Go

Exec uspAddDiagnoseList @Code = 547 , @Diag = 'Anomalii dento-faciale (inclusiv malocluzia)';
Go

Exec uspAddDiagnoseList @Code = 548 , @Diag = 'Alte boli ale maxilarelor';
Go

Exec uspAddDiagnoseList @Code = 549 , @Diag = 'Bolile glandelor salivare';
Go

Exec uspAddDiagnoseList @Code = 550 , @Diag = 'Stomatitele si afectiunile inrudite';
Go

Exec uspAddDiagnoseList @Code = 551 , @Diag = 'Alte boli ale buzelor si mucoasei bucale';
Go

Exec uspAddDiagnoseList @Code = 552 , @Diag = 'Bolile limbii';
Go

Exec uspAddDiagnoseList @Code = 553 , @Diag = 'Esofagita';
Go

Exec uspAddDiagnoseList @Code = 554 , @Diag = 'Alte boli ale esofagului';
Go

Exec uspAddDiagnoseList @Code = 555 , @Diag = 'Ulcerul gastric';
Go

Exec uspAddDiagnoseList @Code = 556 , @Diag = 'Ulcerul duodenal';
Go

Exec uspAddDiagnoseList @Code = 557 , @Diag = 'Ulcerul peptic cu localizare neprecizata';
Go

Exec uspAddDiagnoseList @Code = 558 , @Diag = 'Ulcerul gastro-jejunal';
Go

Exec uspAddDiagnoseList @Code = 559 , @Diag = 'Gastrita si duodenita';
Go

Exec uspAddDiagnoseList @Code = 560 , @Diag = 'Dispepsia';
Go

Exec uspAddDiagnoseList @Code = 561 , @Diag = 'Alte boli ale stomacului si duodenului';
Go

Exec uspAddDiagnoseList @Code = 562 , @Diag = 'Apendicita acuta';
Go

Exec uspAddDiagnoseList @Code = 563 , @Diag = 'Alte boli ale apendicelui';
Go

Exec uspAddDiagnoseList @Code = 564 , @Diag = 'Hernia inghinala';
Go

Exec uspAddDiagnoseList @Code = 565 , @Diag = 'Hernia diafragmatica';
Go

Exec uspAddDiagnoseList @Code = 566 , @Diag = 'Alte hernii abdominale';
Go

Exec uspAddDiagnoseList @Code = 567 , @Diag = 'Boala Crohn (enterita regionala)';
Go

Exec uspAddDiagnoseList @Code = 568 , @Diag = 'Rectocolita hemoragica (colita ulceroasa)';
Go

Exec uspAddDiagnoseList @Code = 569 , @Diag = 'Alte gastroenterite si colite neinfectioase';
Go

Exec uspAddDiagnoseList @Code = 570 , @Diag = 'Tulburari vasculare ale intestinului';
Go

Exec uspAddDiagnoseList @Code = 571 , @Diag = 'Ileus paralitic si ocluzia intestinala fara mentionarea herniei';
Go

Exec uspAddDiagnoseList @Code = 572 , @Diag = 'Diverticuloza intestinului';
Go

Exec uspAddDiagnoseList @Code = 573 , @Diag = 'Sindromul intestinului iritabil si alte tulburari functionale ale intestinului';
Go

Exec uspAddDiagnoseList @Code = 574 , @Diag = 'Fisura, fistula si abcesul regiunilor anale si rectale';
Go

Exec uspAddDiagnoseList @Code = 575 , @Diag = 'Alte boli ale intestinului';
Go

Exec uspAddDiagnoseList @Code = 576 , @Diag = 'Peritonita';
Go

Exec uspAddDiagnoseList @Code = 577 , @Diag = 'Alte boli ale peritoneului';
Go

Exec uspAddDiagnoseList @Code = 578 , @Diag = 'Boala alcoolica a ficatului';
Go

Exec uspAddDiagnoseList @Code = 579 , @Diag = 'Boala toxica a ficatului';
Go

Exec uspAddDiagnoseList @Code = 580 , @Diag = 'Hepatita cronica, neclasata la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 581 , @Diag = 'Fibroza si ciroza ficatului';
Go

Exec uspAddDiagnoseList @Code = 582 , @Diag = 'Alte boli inflamatorii ale ficatului';
Go

Exec uspAddDiagnoseList @Code = 583 , @Diag = 'Alte boli ale ficatului';
Go

Exec uspAddDiagnoseList @Code = 584 , @Diag = 'Litiaza biliara';
Go

Exec uspAddDiagnoseList @Code = 585 , @Diag = 'Colecistita';
Go

Exec uspAddDiagnoseList @Code = 586 , @Diag = 'Alte boli ale vezicii si ale cailor biliare';
Go

Exec uspAddDiagnoseList @Code = 587 , @Diag = 'Pancreatita acuta';
Go

Exec uspAddDiagnoseList @Code = 588 , @Diag = 'Alte boli ale pancreasului';
Go

Exec uspAddDiagnoseList @Code = 589 , @Diag = 'Malabsorbtia intestinala';
Go

Exec uspAddDiagnoseList @Code = 590 , @Diag = 'Afectiunile aparatului digestiv dupa un act medical de diagnostic si tratament, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 591 , @Diag = 'Alte boli ale aparatului digestiv';
Go

Exec uspAddDiagnoseList @Code = 592 , @Diag = 'Impetigo';
Go

Exec uspAddDiagnoseList @Code = 593 , @Diag = 'Abces cutanat, furuncul si furuncul antracoid, flegmon';
Go

Exec uspAddDiagnoseList @Code = 594 , @Diag = 'Limfadenita acuta';
Go

Exec uspAddDiagnoseList @Code = 595 , @Diag = 'Chist dermoid pararectal';
Go

Exec uspAddDiagnoseList @Code = 596 , @Diag = 'Alte infectii localizate ale pielii si tesutului celular subcutanat';
Go

Exec uspAddDiagnoseList @Code = 597 , @Diag = 'Pemphigus';
Go

Exec uspAddDiagnoseList @Code = 598 , @Diag = 'Alte dermatoze buloase';
Go

Exec uspAddDiagnoseList @Code = 599 , @Diag = 'Dermita seboreica';
Go

Exec uspAddDiagnoseList @Code = 600 , @Diag = 'Dermita alergica de contact';
Go

Exec uspAddDiagnoseList @Code = 601 , @Diag = 'Lichen simplex cronic si prurigo';
Go

Exec uspAddDiagnoseList @Code = 602 , @Diag = 'Alte dermite';
Go

Exec uspAddDiagnoseList @Code = 603 , @Diag = 'Psoriazis';
Go

Exec uspAddDiagnoseList @Code = 604 , @Diag = 'Lichen plan';
Go

Exec uspAddDiagnoseList @Code = 605 , @Diag = 'Alte leziuni papulo-scuamoase';
Go

Exec uspAddDiagnoseList @Code = 606 , @Diag = 'Urticaria';
Go

Exec uspAddDiagnoseList @Code = 607 , @Diag = 'Eritem polimorf';
Go

Exec uspAddDiagnoseList @Code = 608 , @Diag = 'Eritem nodos';
Go

Exec uspAddDiagnoseList @Code = 609 , @Diag = 'Alte forme de eritem';
Go

Exec uspAddDiagnoseList @Code = 610 , @Diag = 'insolatia';
Go

Exec uspAddDiagnoseList @Code = 611 , @Diag = 'Radiodermite';
Go

Exec uspAddDiagnoseList @Code = 612 , @Diag = 'Alte afectiuni ale pielii si tesutului celular subcutanat legate de o iradiere';
Go

Exec uspAddDiagnoseList @Code = 613 , @Diag = 'Bolile unghiei';
Go

Exec uspAddDiagnoseList @Code = 614 , @Diag = 'Alopecia areata';
Go

Exec uspAddDiagnoseList @Code = 615 , @Diag = 'Alte forme de rarefiere a sistemului pilos';
Go

Exec uspAddDiagnoseList @Code = 616 , @Diag = 'Hipertrichoza';
Go

Exec uspAddDiagnoseList @Code = 617 , @Diag = 'Acneea';
Go

Exec uspAddDiagnoseList @Code = 618 , @Diag = 'Anceea rozacee';
Go

Exec uspAddDiagnoseList @Code = 619 , @Diag = 'Afectiuni foliculare';
Go

Exec uspAddDiagnoseList @Code = 620 , @Diag = 'Afectiunile glandelor sudoripare';
Go

Exec uspAddDiagnoseList @Code = 621 , @Diag = 'Vitiligo';
Go

Exec uspAddDiagnoseList @Code = 622 , @Diag = 'Ulceratia de decubitus';
Go

Exec uspAddDiagnoseList @Code = 623 , @Diag = 'Lupus eritematos';
Go

Exec uspAddDiagnoseList @Code = 624 , @Diag = 'Alte afectiuni localizate ale tesutului conjunctiv';
Go

Exec uspAddDiagnoseList @Code = 625 , @Diag = 'Alte afectiuni ale pielii si tesutului celular subcutanat, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 626 , @Diag = 'Artrita cu bacterii piogene';
Go

Exec uspAddDiagnoseList @Code = 627 , @Diag = 'Artropatia de reactie';
Go

Exec uspAddDiagnoseList @Code = 628 , @Diag = 'Artrita reumatoida';
Go

Exec uspAddDiagnoseList @Code = 629 , @Diag = 'Artrita juvenila';
Go

Exec uspAddDiagnoseList @Code = 630 , @Diag = 'Guta';
Go

Exec uspAddDiagnoseList @Code = 631 , @Diag = 'Alte artrite';
Go

Exec uspAddDiagnoseList @Code = 632 , @Diag = 'Poliartroza';
Go

Exec uspAddDiagnoseList @Code = 633 , @Diag = 'Coxartroza (artroza coapsei)';
Go

Exec uspAddDiagnoseList @Code = 634 , @Diag = 'Gonartroza (artroza genunchiului)';
Go

Exec uspAddDiagnoseList @Code = 635 , @Diag = 'Alte artroze';
Go

Exec uspAddDiagnoseList @Code = 636 , @Diag = 'Deformatii dobandite ale degetelor mainilor si picioarelor';
Go

Exec uspAddDiagnoseList @Code = 637 , @Diag = 'Alte deformatii dobandite ale membrelor';
Go

Exec uspAddDiagnoseList @Code = 638 , @Diag = 'Alte afectiuni articulare precizate';
Go

Exec uspAddDiagnoseList @Code = 639 , @Diag = 'Alte afectiuni articulare neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 640 , @Diag = 'Poliarterita nodoasa si afectiunile inrudite';
Go

Exec uspAddDiagnoseList @Code = 641 , @Diag = 'Lupus eritematos diseminat';
Go

Exec uspAddDiagnoseList @Code = 642 , @Diag = 'Alte atingeri sistemice ale tesutului conjunctiv';
Go

Exec uspAddDiagnoseList @Code = 643 , @Diag = 'Cifoza si lordoza';
Go

Exec uspAddDiagnoseList @Code = 644 , @Diag = 'Scolioza';
Go

Exec uspAddDiagnoseList @Code = 645 , @Diag = 'Alte dorsopatii deformante';
Go

Exec uspAddDiagnoseList @Code = 646 , @Diag = 'Spondilartrita anchilozanta';
Go

Exec uspAddDiagnoseList @Code = 647 , @Diag = 'Alte spondilopatii inflamatorii';
Go

Exec uspAddDiagnoseList @Code = 648 , @Diag = 'Spondiloza';
Go

Exec uspAddDiagnoseList @Code = 649 , @Diag = 'Alte spondilopatii';
Go

Exec uspAddDiagnoseList @Code = 650 , @Diag = 'Atingeri ale discurilor cervicale';
Go

Exec uspAddDiagnoseList @Code = 651 , @Diag = 'Alte atingeri ale discurilor intervertebrale';
Go

Exec uspAddDiagnoseList @Code = 652 , @Diag = 'Alte dorsopatii, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 653 , @Diag = 'Dorsalgii';
Go

Exec uspAddDiagnoseList @Code = 654 , @Diag = 'Miozita';
Go

Exec uspAddDiagnoseList @Code = 655 , @Diag = 'Alte atingeri musculare';
Go

Exec uspAddDiagnoseList @Code = 656 , @Diag = 'Sinovite si tenosinovite';
Go

Exec uspAddDiagnoseList @Code = 657 , @Diag = 'Alte atingeri ale sinovialei si tendonului';
Go

Exec uspAddDiagnoseList @Code = 658 , @Diag = 'Afectiuni ale tesuturilor moi legate de o solicitare excesiva a articulatiei';
Go

Exec uspAddDiagnoseList @Code = 659 , @Diag = 'Leziunile umarului';
Go

Exec uspAddDiagnoseList @Code = 660 , @Diag = 'Alte afectiuni ale tesuturilor moi, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 661 , @Diag = 'Osteoporoza';
Go

Exec uspAddDiagnoseList @Code = 662 , @Diag = 'Osteomalacia adultului';
Go

Exec uspAddDiagnoseList @Code = 663 , @Diag = 'Alte atingeri ale densitatii si structurii osoase';
Go

Exec uspAddDiagnoseList @Code = 664 , @Diag = 'Osteomielita';
Go

Exec uspAddDiagnoseList @Code = 665 , @Diag = 'Boala osoasa Paget (osteita deformanta)';
Go

Exec uspAddDiagnoseList @Code = 666 , @Diag = 'Alte boli osoase';
Go

Exec uspAddDiagnoseList @Code = 667 , @Diag = 'Osteochondrita juvenila a soldului si a bazinului';
Go

Exec uspAddDiagnoseList @Code = 668 , @Diag = 'Alte afectiuni ale cartilajului';
Go

Exec uspAddDiagnoseList @Code = 669 , @Diag = 'Alte deformatii dobandite ale sistemului osteo-articular si ale muschilor';
Go

Exec uspAddDiagnoseList @Code = 670 , @Diag = 'Sindromul nefritic acut';
Go

Exec uspAddDiagnoseList @Code = 671 , @Diag = 'Sindromul nefritic cu evolutie rapida si progresiva';
Go

Exec uspAddDiagnoseList @Code = 672 , @Diag = 'Hematuria recidivanta si persistenta';
Go

Exec uspAddDiagnoseList @Code = 673 , @Diag = 'Sindromul nefritic cronic';
Go

Exec uspAddDiagnoseList @Code = 674 , @Diag = 'Sindromul nefrotic';
Go

Exec uspAddDiagnoseList @Code = 675 , @Diag = 'Sindromul nefritic fara precizare';
Go

Exec uspAddDiagnoseList @Code = 676 , @Diag = 'Proteinuria izolata cu leziuni morfologice precizate';
Go

Exec uspAddDiagnoseList @Code = 677 , @Diag = 'Nefropatia ereditara, neclasata la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 678 , @Diag = 'Nefrita tubulo-interstitiala acuta';
Go

Exec uspAddDiagnoseList @Code = 679 , @Diag = 'Nefrita tubulo-interstitiala cronica';
Go

Exec uspAddDiagnoseList @Code = 680 , @Diag = 'Nefrita tubulo-interstitiala, neprecizata ca acuta sau cronica';
Go

Exec uspAddDiagnoseList @Code = 681 , @Diag = 'Uropatia obstructiva si prin reflux';
Go

Exec uspAddDiagnoseList @Code = 682 , @Diag = 'Atingerile tubulo-interstitiale si tubulare datorate medicamentelor si metalelor grele';
Go

Exec uspAddDiagnoseList @Code = 683 , @Diag = 'Alte boli renale tubulo-interstitiale';
Go

Exec uspAddDiagnoseList @Code = 684 , @Diag = 'Insuficienta renala acuta';
Go

Exec uspAddDiagnoseList @Code = 685 , @Diag = 'Insuficienta renala cronica';
Go

Exec uspAddDiagnoseList @Code = 686 , @Diag = 'Insuficienta renala fara precizare';
Go

Exec uspAddDiagnoseList @Code = 687 , @Diag = 'Litiaza rinichiului si ureterului';
Go

Exec uspAddDiagnoseList @Code = 688 , @Diag = 'Litiaza cailor urinare inferioare';
Go

Exec uspAddDiagnoseList @Code = 689 , @Diag = 'Colica nefritica fara precizare';
Go

Exec uspAddDiagnoseList @Code = 690 , @Diag = 'Afectiuni datorate unei rele functionari tubulare';
Go

Exec uspAddDiagnoseList @Code = 691 , @Diag = 'Rinichi scleros fara precizare';
Go

Exec uspAddDiagnoseList @Code = 692 , @Diag = 'Rinichi mic de cauza necunoscuta';
Go

Exec uspAddDiagnoseList @Code = 693 , @Diag = 'Alte afectiuni ale rinichiului si uterului neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 694 , @Diag = 'Cistita';
Go

Exec uspAddDiagnoseList @Code = 695 , @Diag = 'Disfunctiunea neuro-musculara a vezicii';
Go

Exec uspAddDiagnoseList @Code = 696 , @Diag = 'Alte afectiuni ale vezicii';
Go

Exec uspAddDiagnoseList @Code = 697 , @Diag = 'Uretrita si sindromul ureteral';
Go

Exec uspAddDiagnoseList @Code = 698 , @Diag = 'Strictura uretrala';
Go

Exec uspAddDiagnoseList @Code = 699 , @Diag = 'Alte afectiuni ale uretrei';
Go

Exec uspAddDiagnoseList @Code = 700 , @Diag = 'Alte afectiuni ale aparatului urinar';
Go

Exec uspAddDiagnoseList @Code = 701 , @Diag = 'Hiperplazia prostatei';
Go

Exec uspAddDiagnoseList @Code = 702 , @Diag = 'Hidrocelul si spermatocelul';
Go

Exec uspAddDiagnoseList @Code = 703 , @Diag = 'Orhita si epididimita';
Go

Exec uspAddDiagnoseList @Code = 704 , @Diag = 'Hipertrofia preputului, fimoza, parafimoza';
Go

Exec uspAddDiagnoseList @Code = 705 , @Diag = 'Alte afectiuni ale organelor genitale la barbat';
Go

Exec uspAddDiagnoseList @Code = 706 , @Diag = 'Displaziile mamare benigne';
Go

Exec uspAddDiagnoseList @Code = 707 , @Diag = 'Afectiunile inflamatorii ale sanului';
Go

Exec uspAddDiagnoseList @Code = 708 , @Diag = 'Alte afectiuni ale sanului';
Go

Exec uspAddDiagnoseList @Code = 709 , @Diag = 'Salpingita si ooforita';
Go

Exec uspAddDiagnoseList @Code = 710 , @Diag = 'Afectiuni inflamatorii ale uterului cu exceptia colului';
Go

Exec uspAddDiagnoseList @Code = 711 , @Diag = 'Afectiuni inflamatorii ale colului uterin';
Go

Exec uspAddDiagnoseList @Code = 712 , @Diag = 'Alte afectiuni inflamatorii pelviene la femeie';
Go

Exec uspAddDiagnoseList @Code = 713 , @Diag = 'Alte inflamatii ale vaginului si vulvei';
Go

Exec uspAddDiagnoseList @Code = 714 , @Diag = 'Endometrioza';
Go

Exec uspAddDiagnoseList @Code = 715 , @Diag = 'Prolapsul genital la femeie';
Go

Exec uspAddDiagnoseList @Code = 716 , @Diag = 'Fistulele tractului genital la femeie';
Go

Exec uspAddDiagnoseList @Code = 717 , @Diag = 'Afectiuni neinflamatorii ale ovarului trompei Fallope si ligamentului larg';
Go

Exec uspAddDiagnoseList @Code = 718 , @Diag = 'Polipul tractului genital la femeie';
Go

Exec uspAddDiagnoseList @Code = 719 , @Diag = 'Alte afectiuni neinflamatorii ale uterului, exceptand colul';
Go

Exec uspAddDiagnoseList @Code = 720 , @Diag = 'Eroziunea cu ectropion a colului uterin';
Go

Exec uspAddDiagnoseList @Code = 721 , @Diag = 'Displazia colului uterin';
Go

Exec uspAddDiagnoseList @Code = 722 , @Diag = 'Alte afectiuni neinflamatorii ale colului uterin';
Go

Exec uspAddDiagnoseList @Code = 723 , @Diag = 'Alte afectiuni neinflamatorii ale vaginului';
Go

Exec uspAddDiagnoseList @Code = 724 , @Diag = 'Alte afectiuni neinflamatorii ale vulvei si perineului';
Go

Exec uspAddDiagnoseList @Code = 725 , @Diag = 'Amenoreea, oligomenoreea, hipomenoreea';
Go

Exec uspAddDiagnoseList @Code = 726 , @Diag = 'Menoragia, polimenoreea si metroragia';
Go

Exec uspAddDiagnoseList @Code = 727 , @Diag = 'Sangerari anormale ale uterului si vaginului';
Go

Exec uspAddDiagnoseList @Code = 728 , @Diag = 'Dureri si alte afectiuni ale organelor genitale la femeie si tulburari ale ciclului menstrual';
Go

Exec uspAddDiagnoseList @Code = 729 , @Diag = 'Tulburarile menopauzei si alte tulburari ale premenopauzei';
Go

Exec uspAddDiagnoseList @Code = 730 , @Diag = 'Avort repetat';
Go

Exec uspAddDiagnoseList @Code = 731 , @Diag = 'Sterilitatea la femeie';
Go

Exec uspAddDiagnoseList @Code = 732 , @Diag = 'Afectiunile aparatului genito-urinar dupa un act medical de diagnostic si tratament, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 733 , @Diag = 'Sarcina extrauterina';
Go

Exec uspAddDiagnoseList @Code = 734 , @Diag = 'Mola hidatiforma si alte produse anormale';
Go

Exec uspAddDiagnoseList @Code = 735 , @Diag = 'Avortul spontan';
Go

Exec uspAddDiagnoseList @Code = 736 , @Diag = 'Alte forme de avort';
Go

Exec uspAddDiagnoseList @Code = 737 , @Diag = 'Complicatiile consecutive unui avort, unei sarcini extrauterine si molare';
Go

Exec uspAddDiagnoseList @Code = 738 , @Diag = 'Hipertensiunea preexistenta, complicand sarcina, nasterea si lauzia';
Go

Exec uspAddDiagnoseList @Code = 739 , @Diag = 'Sindrom hipertensiv preexistent, cu proteinurie supraadaugata';
Go

Exec uspAddDiagnoseList @Code = 740 , @Diag = 'Edem si proteinurie gestationala (legate de sarcina) fara hipertensiune';
Go

Exec uspAddDiagnoseList @Code = 741 , @Diag = 'Hipertensiune gestationala (legate de sarcina) fara proteinurie importanta';
Go

Exec uspAddDiagnoseList @Code = 742 , @Diag = 'Hipertensiune gestationala (legate de sarcina) cu proteinurie importanta';
Go

Exec uspAddDiagnoseList @Code = 743 , @Diag = 'Eclampsia';
Go

Exec uspAddDiagnoseList @Code = 744 , @Diag = 'Hipertensiunea mamei, fara precizare';
Go

Exec uspAddDiagnoseList @Code = 745 , @Diag = 'Hemoragia de la debutul sarcinii';
Go

Exec uspAddDiagnoseList @Code = 746 , @Diag = 'Voma incoercibila in cursul sarcinii';
Go

Exec uspAddDiagnoseList @Code = 747 , @Diag = 'Complicatii venoase ale sarcinii';
Go

Exec uspAddDiagnoseList @Code = 748 , @Diag = 'Infectiile aparatului genito-urinar in cursul sarcinii';
Go

Exec uspAddDiagnoseList @Code = 749 , @Diag = 'Diabetul zaharat in cursul sarcinii';
Go

Exec uspAddDiagnoseList @Code = 750 , @Diag = 'Malnutritia in cursul sarcinii';
Go

Exec uspAddDiagnoseList @Code = 751 , @Diag = 'Ingrijiri acordate mamei pentru alte afectiuni legate in principal de sarcina';
Go

Exec uspAddDiagnoseList @Code = 752 , @Diag = 'Rezultate anormale constatate in cursul examenelor prenatale sistematice ale mamei';
Go

Exec uspAddDiagnoseList @Code = 753 , @Diag = 'Complicatiile unei anestezii in cursul sarcinii';
Go

Exec uspAddDiagnoseList @Code = 754 , @Diag = 'Complicatiile specifice unei sarcini';
Go

Exec uspAddDiagnoseList @Code = 755 , @Diag = 'Hidramnios';
Go

Exec uspAddDiagnoseList @Code = 756 , @Diag = 'Ruptura prematura a membranelor';
Go

Exec uspAddDiagnoseList @Code = 757 , @Diag = 'Anomaliile placentei; placenta praevia';
Go

Exec uspAddDiagnoseList @Code = 758 , @Diag = 'Hemoragie precedand nasterea, neclasata la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 759 , @Diag = 'Travaliu inainte de termen sau prelungit; inertie uterina';
Go

Exec uspAddDiagnoseList @Code = 760 , @Diag = 'Distocia de obstacol datorita unei pozitii si prezentari anormale a fatului';
Go

Exec uspAddDiagnoseList @Code = 761 , @Diag = 'Distocia de obstacol datorita unei anomalii pelviene a mamei si alte distocii';
Go

Exec uspAddDiagnoseList @Code = 762 , @Diag = 'Travaliul si nasterea complicate cu hemoragie intrapartum, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 763 , @Diag = 'Travaliul si nasterea complicate cu suferinta fetala si anomalii de cordon ombilical';
Go

Exec uspAddDiagnoseList @Code = 764 , @Diag = 'Ruptura perineala in cursul nasterii';
Go

Exec uspAddDiagnoseList @Code = 765 , @Diag = 'Alte traumatisme obstetricale';
Go

Exec uspAddDiagnoseList @Code = 766 , @Diag = 'Hemoragie post-partum';
Go

Exec uspAddDiagnoseList @Code = 767 , @Diag = 'Retentie de placenta si de membrane, fara hemoragie';
Go

Exec uspAddDiagnoseList @Code = 768 , @Diag = 'Complicatiile unei anestezii in cursul travaliului si nasterii';
Go

Exec uspAddDiagnoseList @Code = 769 , @Diag = 'Alte complicatii ale travaliului si nasterii, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 770 , @Diag = 'Infectia puerperala';
Go

Exec uspAddDiagnoseList @Code = 771 , @Diag = 'Alte infectii puerperale';
Go

Exec uspAddDiagnoseList @Code = 772 , @Diag = 'Complicatii venoase in timpul lauziei';
Go

Exec uspAddDiagnoseList @Code = 773 , @Diag = 'Embolia de origine obstetricala';
Go

Exec uspAddDiagnoseList @Code = 774 , @Diag = 'Complicatiile unei anestezii in cursul lauziei';
Go

Exec uspAddDiagnoseList @Code = 775 , @Diag = 'Complicatii puerperale, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 776 , @Diag = 'Infectia sanului asociata nasterii';
Go

Exec uspAddDiagnoseList @Code = 777 , @Diag = 'Alte afectiuni ale sanului asociate nasterii si tulburari de lactatie';
Go

Exec uspAddDiagnoseList @Code = 778 , @Diag = 'Fat si nou-nascut afectati de tulburarile materne cu si fara legatura cu sarcina actuala';
Go

Exec uspAddDiagnoseList @Code = 779 , @Diag = 'Fat si nou-nascut afectati de complicatiile sarcinii la mama';
Go

Exec uspAddDiagnoseList @Code = 780 , @Diag = 'Fat si nou-nascut afectati de complicatii privind placenta, cordonul ombilical si membrane';
Go

Exec uspAddDiagnoseList @Code = 781 , @Diag = 'Fat si nou-nascut afectati de alte complicatii ale travaliului si nasterii';
Go

Exec uspAddDiagnoseList @Code = 782 , @Diag = 'Fat si nou-nascut afectati de efectele nocive transmise pe cale transplacentara sau prin laptele matern';
Go

Exec uspAddDiagnoseList @Code = 783 , @Diag = 'Intarzierea cresterii si malnutritia fatului';
Go

Exec uspAddDiagnoseList @Code = 784 , @Diag = 'Tulburari relative la scurtarea gestatiei si o greutate insuficienta la nastere, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 785 , @Diag = 'Tulburari privind prelungirea gestatiei si o dificultate crescuta la nastere';
Go

Exec uspAddDiagnoseList @Code = 786 , @Diag = 'Ruptura si hemoragie intracraniana datorita traumatismului obstetrical';
Go

Exec uspAddDiagnoseList @Code = 787 , @Diag = 'Alte leziuni ale sistemului nervos central datorita traumatismului';
Go

Exec uspAddDiagnoseList @Code = 788 , @Diag = 'Alte traumatisme obstetricale';
Go

Exec uspAddDiagnoseList @Code = 789 , @Diag = 'Hipoxie intrauterina';
Go

Exec uspAddDiagnoseList @Code = 790 , @Diag = 'Asfixia obstetricala';
Go

Exec uspAddDiagnoseList @Code = 791 , @Diag = 'Pneumopatia congenitala';
Go

Exec uspAddDiagnoseList @Code = 792 , @Diag = 'Sindroame de aspiratie in perioada neonatala';
Go

Exec uspAddDiagnoseList @Code = 793 , @Diag = 'Emfizem interstitial si afectiuni inrudite survenind in perioada perinatala';
Go

Exec uspAddDiagnoseList @Code = 794 , @Diag = 'Hemoragia pulmonara survenind in perioada perinatala';
Go

Exec uspAddDiagnoseList @Code = 795 , @Diag = 'Alte tulburari respiratorii survenind in perioada perinatala';
Go

Exec uspAddDiagnoseList @Code = 796 , @Diag = 'Tulburari cardio-vasculare survenind in perioada perinatala';
Go

Exec uspAddDiagnoseList @Code = 797 , @Diag = 'Rubeola congenitala';
Go

Exec uspAddDiagnoseList @Code = 798 , @Diag = 'Boli congenitale virotice';
Go

Exec uspAddDiagnoseList @Code = 799 , @Diag = 'Infectia bacteriana a nou-nascutului';
Go

Exec uspAddDiagnoseList @Code = 800 , @Diag = 'Alte boli infectioase si parazitare congenitale';
Go

Exec uspAddDiagnoseList @Code = 801 , @Diag = 'Omfalita nou-nascutului, cu sau fara hemoragie usoara';
Go

Exec uspAddDiagnoseList @Code = 802 , @Diag = 'Alte infectii specifice perioadei perinatale';
Go

Exec uspAddDiagnoseList @Code = 803 , @Diag = 'Hemoragii fetale si neonatale';
Go

Exec uspAddDiagnoseList @Code = 804 , @Diag = 'Boala hemolitica a fatului si nou-nascutului';
Go

Exec uspAddDiagnoseList @Code = 805 , @Diag = 'Anasarca feto-placentara datorita bolii hemolitice';
Go

Exec uspAddDiagnoseList @Code = 806 , @Diag = 'Icter nuclear (kernicter)';
Go

Exec uspAddDiagnoseList @Code = 807 , @Diag = 'Icter neonatal datorat altor hemolize excesive si altor cauze';
Go

Exec uspAddDiagnoseList @Code = 808 , @Diag = 'Alte tulburari hematologice ale perioadei perinatale';
Go

Exec uspAddDiagnoseList @Code = 809 , @Diag = 'Tulburari endocrine tranzitorii ale nou-nascutului';
Go

Exec uspAddDiagnoseList @Code = 810 , @Diag = 'Ocluzia intestinala la nou-nascut';
Go

Exec uspAddDiagnoseList @Code = 811 , @Diag = 'Enterocolita necrozanta a fatului si nou-nascutului';
Go

Exec uspAddDiagnoseList @Code = 812 , @Diag = 'Alte tulburari perinatale ale aparatului digestiv';
Go

Exec uspAddDiagnoseList @Code = 813 , @Diag = 'Afectiuni ale tegumentelor si reglarea termica a fatului si nou-nascutului';
Go

Exec uspAddDiagnoseList @Code = 814 , @Diag = 'Convulsiile nou-nascutului';
Go

Exec uspAddDiagnoseList @Code = 815 , @Diag = 'Alte tulburari cerebrale ale nou-nascutului';
Go

Exec uspAddDiagnoseList @Code = 816 , @Diag = 'Tulburari de alimentatie a nou-nascutului';
Go

Exec uspAddDiagnoseList @Code = 817 , @Diag = 'Reactii si intoxicatii medicamentoase la fat si nou-nascut';
Go

Exec uspAddDiagnoseList @Code = 818 , @Diag = 'Tulburari de tonus muscular la nou-nascut';
Go

Exec uspAddDiagnoseList @Code = 819 , @Diag = 'Moarte fetala de cauza neprecizata';
Go

Exec uspAddDiagnoseList @Code = 820 , @Diag = 'Alte afectiuni a caror origine se situeaza in perioada perinatala';
Go

Exec uspAddDiagnoseList @Code = 821 , @Diag = 'Microcefalia';
Go

Exec uspAddDiagnoseList @Code = 822 , @Diag = 'Hidrocefalia congenitala';
Go

Exec uspAddDiagnoseList @Code = 823 , @Diag = 'Alte malformatii congenitale ale creierului';
Go

Exec uspAddDiagnoseList @Code = 824 , @Diag = 'Spina bifida';
Go

Exec uspAddDiagnoseList @Code = 825 , @Diag = 'Alte malformatii ale maduvei spinarii';
Go

Exec uspAddDiagnoseList @Code = 826 , @Diag = 'Alte malformatii congenitale ale sistemului nervos';
Go

Exec uspAddDiagnoseList @Code = 827 , @Diag = 'Anoftalmia, microftalmia si macroftalmia';
Go

Exec uspAddDiagnoseList @Code = 828 , @Diag = 'Alte malformatii congenitale ale fetei si gatului';
Go

Exec uspAddDiagnoseList @Code = 829 , @Diag = 'Malformatii congenitale ale cavitatilor, orificiilor si ale septului cardiac';
Go

Exec uspAddDiagnoseList @Code = 830 , @Diag = 'Alte malformatii congenitale ale inimii';
Go

Exec uspAddDiagnoseList @Code = 831 , @Diag = 'Malformatii congenitale ale arterelor mari';
Go

Exec uspAddDiagnoseList @Code = 832 , @Diag = 'Malformatii congenitale ale venelor mari';
Go

Exec uspAddDiagnoseList @Code = 833 , @Diag = 'Alte malformatii congenitale ale aparatului circulator';
Go

Exec uspAddDiagnoseList @Code = 834 , @Diag = 'Malformatii congenitale si alte anomalii ale laringelui, traheii si bronhiilor';
Go

Exec uspAddDiagnoseList @Code = 835 , @Diag = 'Malformatia congenitala a pulmonului';
Go

Exec uspAddDiagnoseList @Code = 836 , @Diag = 'Alte malformatii congenitale ale aparatului respirator';
Go

Exec uspAddDiagnoseList @Code = 837 , @Diag = 'Fisura palatina';
Go

Exec uspAddDiagnoseList @Code = 838 , @Diag = 'Fisura labiala';
Go

Exec uspAddDiagnoseList @Code = 839 , @Diag = 'Buza de iepure cu palatoschisis';
Go

Exec uspAddDiagnoseList @Code = 840 , @Diag = 'Malformatii congenitale ale cailor digestive superioare';
Go

Exec uspAddDiagnoseList @Code = 841 , @Diag = 'Absenta, atrezia si stenoza congenitala a intestinului subtire';
Go

Exec uspAddDiagnoseList @Code = 842 , @Diag = 'Alte malformatii congenitale ale intestinului';
Go

Exec uspAddDiagnoseList @Code = 843 , @Diag = 'Malformatii congenitale ale vezicii biliare, cailor biliare si ficatului';
Go

Exec uspAddDiagnoseList @Code = 844 , @Diag = 'Alte malformatii congenitale ale aparatului digestiv';
Go

Exec uspAddDiagnoseList @Code = 845 , @Diag = 'Malformatiile ovarului, uterului si cervixului';
Go

Exec uspAddDiagnoseList @Code = 846 , @Diag = 'Alte malformatii congenitale ale organelor genitale feminine';
Go

Exec uspAddDiagnoseList @Code = 847 , @Diag = 'Malformatii congenitale ale organelor genitale masculine';
Go

Exec uspAddDiagnoseList @Code = 848 , @Diag = 'Agenezie renala si alte extinderi ale reducerii';
Go

Exec uspAddDiagnoseList @Code = 849 , @Diag = 'Boala chistica a rinichiului';
Go

Exec uspAddDiagnoseList @Code = 850 , @Diag = 'Alte malformatii congenitale ale aparatului urinar';
Go

Exec uspAddDiagnoseList @Code = 851 , @Diag = 'Deformatii congenitale ale soldului';
Go

Exec uspAddDiagnoseList @Code = 852 , @Diag = 'Deformatii congenitale ale piciorului';
Go

Exec uspAddDiagnoseList @Code = 853 , @Diag = 'Deformatii osoase ale capului, fetei, coloanei vertebrale, pieptului si alte deformatii';
Go

Exec uspAddDiagnoseList @Code = 854 , @Diag = 'Polidactilia si sindactilia';
Go

Exec uspAddDiagnoseList @Code = 855 , @Diag = 'Alte anomalii congenitale ale membrelor';
Go

Exec uspAddDiagnoseList @Code = 856 , @Diag = 'Malformatii si anomalii congenitale ale coloanei vertebrale, coaste si stern, capului si fetei';
Go

Exec uspAddDiagnoseList @Code = 857 , @Diag = 'Malformatii congenitale ale sistemuluui osteo-articular, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 858 , @Diag = 'Alte malformatii congenitale specificate, afectand sisteme multiple';
Go

Exec uspAddDiagnoseList @Code = 859 , @Diag = 'Alte malformatii congenitale, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 860 , @Diag = 'Sindromul Down';
Go

Exec uspAddDiagnoseList @Code = 861 , @Diag = 'Sindromul Edwards si sindromul Patau';
Go

Exec uspAddDiagnoseList @Code = 862 , @Diag = 'Alte trisomii si trisomii partiale (dublare) a autosomilor, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 863 , @Diag = 'Monosomia si lipsa de autosomi, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 864 , @Diag = 'Rearanjarea echilibrata si markerii structurali, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 865 , @Diag = 'Sindromul Turner';
Go

Exec uspAddDiagnoseList @Code = 866 , @Diag = 'Alte anomalii ale cromozomilor sexuali, fenotip feminin, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 867 , @Diag = 'Alte anomalii ale cromozomilor sexuali, fenotip masculin, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 868 , @Diag = 'Alte anomalii ale cromozomilor sexuali, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 869 , @Diag = 'Simptome si semne referitoare la aparatul circulator si respirator';
Go

Exec uspAddDiagnoseList @Code = 870 , @Diag = 'Simptome si semne referitoare la aparatul digestiv si la abdomen';
Go

Exec uspAddDiagnoseList @Code = 871 , @Diag = 'Simptome si semne referitoare la sistemul nervos si osteomuscular';
Go

Exec uspAddDiagnoseList @Code = 872 , @Diag = 'Simptome si semne referitoare la aparatul urinar';
Go

Exec uspAddDiagnoseList @Code = 873 , @Diag = 'Simptome si semne referitoare la constienta, perceptie, comportament si limbaj';
Go

Exec uspAddDiagnoseList @Code = 874 , @Diag = 'Simptome si semne generale';
Go

Exec uspAddDiagnoseList @Code = 875 , @Diag = 'Rezultate anormale ale examenelor de sange fara diagnostic';
Go

Exec uspAddDiagnoseList @Code = 876 , @Diag = 'Rezultate anormale ale examenelor de urina fara diagnostic de boala';
Go

Exec uspAddDiagnoseList @Code = 877 , @Diag = 'Rezultate anormale ale examinarii altor lichide, substante si tesuturi, fara diagnostic';
Go

Exec uspAddDiagnoseList @Code = 878 , @Diag = 'Rezultate anormale ale imaginii diagnostice si probelor functionale, fara diagnostic';
Go

Exec uspAddDiagnoseList @Code = 879 , @Diag = 'Leziunea traumatica superficiala a capului';
Go

Exec uspAddDiagnoseList @Code = 880 , @Diag = 'Plaga deschisa a capului';
Go

Exec uspAddDiagnoseList @Code = 881 , @Diag = 'Fractura craniului si oaselor fetei';
Go

Exec uspAddDiagnoseList @Code = 882 , @Diag = 'Luxatia, entorsa si intinderea de ligamente ale articulatiei capului';
Go

Exec uspAddDiagnoseList @Code = 883 , @Diag = 'Leziunea traumatica a nervilor cranieni';
Go

Exec uspAddDiagnoseList @Code = 884 , @Diag = 'Leziunea traumatica a ochiului si orbitei';
Go

Exec uspAddDiagnoseList @Code = 885 , @Diag = 'Leziunea traumatica intracraniana';
Go

Exec uspAddDiagnoseList @Code = 886 , @Diag = 'Zdrobirea traumatica a capului';
Go

Exec uspAddDiagnoseList @Code = 887 , @Diag = 'Amputatia traumatica partiala a capului';
Go

Exec uspAddDiagnoseList @Code = 888 , @Diag = 'Leziuni traumatice ale capului alte si fara precizare';
Go

Exec uspAddDiagnoseList @Code = 889 , @Diag = 'Leziunea traumatica superficiala a gatului';
Go

Exec uspAddDiagnoseList @Code = 890 , @Diag = 'Plaga deschisa a gatului';
Go

Exec uspAddDiagnoseList @Code = 891 , @Diag = 'Fractura gatului';
Go

Exec uspAddDiagnoseList @Code = 892 , @Diag = 'Luxatia, entorsa si intinderea de ligamente ale articulatiei gatului';
Go

Exec uspAddDiagnoseList @Code = 893 , @Diag = 'Leziunea traumatica a nervilor si maduvei spinarii la nivelul gatului';
Go

Exec uspAddDiagnoseList @Code = 894 , @Diag = 'Leziunea traumatica a vaselor sangvine la nivelul gatului';
Go

Exec uspAddDiagnoseList @Code = 895 , @Diag = 'Leziunea traumatica a muSchilor si tendoanelor gatului';
Go

Exec uspAddDiagnoseList @Code = 896 , @Diag = 'Zdrobirea traumatica a gatului';
Go

Exec uspAddDiagnoseList @Code = 897 , @Diag = 'Amputatia traumatica la nivelul gatului';
Go

Exec uspAddDiagnoseList @Code = 898 , @Diag = 'Leziuni traumatice ale gatului, alte neprecizate';
Go

Exec uspAddDiagnoseList @Code = 899 , @Diag = 'Leziunea traumatica superficiala a toracelui';
Go

Exec uspAddDiagnoseList @Code = 900 , @Diag = 'Plaga deschisa a toracelui';
Go

Exec uspAddDiagnoseList @Code = 901 , @Diag = 'Fractura de coaste, stern si coloana vertebrala';
Go

Exec uspAddDiagnoseList @Code = 902 , @Diag = 'Luxatia, entorsa si intinderea de ligamente ale articulatiei toracelui';
Go

Exec uspAddDiagnoseList @Code = 903 , @Diag = 'Leziunea traumatica a nervilor si maduvei spinarii la nivelul toracelui';
Go

Exec uspAddDiagnoseList @Code = 904 , @Diag = 'Leziunea traumatica a vaselor sangvine la nivelul toracelui';
Go

Exec uspAddDiagnoseList @Code = 905 , @Diag = 'Leziunea traumatica a inimii';
Go

Exec uspAddDiagnoseList @Code = 906 , @Diag = 'Leziuni traumatice ale ale organelor intratoracice, alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 907 , @Diag = 'Zdrobirea traumatica a toracelui si amputarea traumatica partiala a toracelui';
Go

Exec uspAddDiagnoseList @Code = 908 , @Diag = 'Leziuni traumatice ale toracelui, alte si fara precizare';
Go

Exec uspAddDiagnoseList @Code = 909 , @Diag = 'Leziunea traumatica superficiala a abdomenului, lombelor si bazinului';
Go

Exec uspAddDiagnoseList @Code = 910 , @Diag = 'Plaga deschisa a abdomenului, lombelor si bazinului';
Go

Exec uspAddDiagnoseList @Code = 911 , @Diag = 'Fractura de coloanei vertebrale si a bazinului';
Go

Exec uspAddDiagnoseList @Code = 912 , @Diag = 'Luxatia, entorsa si intinderea de ligamente ale articulatiei coloanei vertebrale si bazinului';
Go

Exec uspAddDiagnoseList @Code = 913 , @Diag = 'Leziunea nervilor si a coloanei vertebrale lombare si a abdomenului, partea inferioara a spatelui si a bazinului';
Go

Exec uspAddDiagnoseList @Code = 914 , @Diag = 'Leziunea traumatica a vaselor sangvine la nivelul abdomenului, lombelor si bazinului';
Go

Exec uspAddDiagnoseList @Code = 915 , @Diag = 'Leziunea traumatica a organelor intraabdominale';
Go

Exec uspAddDiagnoseList @Code = 916 , @Diag = 'Leziunea traumatica a organelor pelviene';
Go

Exec uspAddDiagnoseList @Code = 917 , @Diag = 'Zdrobirea si amputatia traumatica partiala a abdomenului, lombelor si bazinului';
Go

Exec uspAddDiagnoseList @Code = 918 , @Diag = 'Leziuni traumatice ale abdomenului,lombelor si bazinului alte si fara precizare';
Go

Exec uspAddDiagnoseList @Code = 919 , @Diag = 'Leziune traumatica superficiala';
Go

Exec uspAddDiagnoseList @Code = 920 , @Diag = 'Plaga deschisa';
Go

Exec uspAddDiagnoseList @Code = 921 , @Diag = 'Fractura';
Go

Exec uspAddDiagnoseList @Code = 922 , @Diag = 'Luxatia, entorsa si intinderea de ligamente ale articulatiei';
Go

Exec uspAddDiagnoseList @Code = 923 , @Diag = 'Leziunea traumatica a nervilor';
Go

Exec uspAddDiagnoseList @Code = 924 , @Diag = 'Leziunea traumatica a vaselor sanguine';
Go

Exec uspAddDiagnoseList @Code = 925 , @Diag = 'Leziunea traumatica a mulchilor si tendoanelor';
Go

Exec uspAddDiagnoseList @Code = 926 , @Diag = 'Zdrobirea traumatica';
Go

Exec uspAddDiagnoseList @Code = 927 , @Diag = 'Amputatia traumatica';
Go

Exec uspAddDiagnoseList @Code = 928 , @Diag = 'Leziuni traumatice, alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 929 , @Diag = 'Leziune traumatica superficiala';
Go

Exec uspAddDiagnoseList @Code = 930 , @Diag = 'Plaga deschisa';
Go

Exec uspAddDiagnoseList @Code = 931 , @Diag = 'Fractura';
Go

Exec uspAddDiagnoseList @Code = 932 , @Diag = 'Luxatia, entorsa si intinderea de ligamente ale articulatiei';
Go

Exec uspAddDiagnoseList @Code = 933 , @Diag = 'Leziunea traumatica a nervilor';
Go

Exec uspAddDiagnoseList @Code = 934 , @Diag = 'Leziunea traumatica a vaselor sanguine';
Go

Exec uspAddDiagnoseList @Code = 935 , @Diag = 'Leziunea traumatica a muschilor si tendoanelor';
Go

Exec uspAddDiagnoseList @Code = 936 , @Diag = 'Zdrobirea traumatica';
Go

Exec uspAddDiagnoseList @Code = 937 , @Diag = 'Amputatia traumatica';
Go

Exec uspAddDiagnoseList @Code = 938 , @Diag = 'Leziuni traumatice, alte si neprecizate';
Go

Exec uspAddDiagnoseList @Code = 939 , @Diag = 'Leziuni traumatice superficiale corpului cu multe localizari';
Go

Exec uspAddDiagnoseList @Code = 940 , @Diag = 'Plagi deschise ale corpului cu mai multe localizari';
Go

Exec uspAddDiagnoseList @Code = 941 , @Diag = 'Fracturi ale corpului cu alte localizari multiple';
Go

Exec uspAddDiagnoseList @Code = 942 , @Diag = 'Luxatii, entorse si intinderi de ligament ale corpului cu localizari multiple';
Go

Exec uspAddDiagnoseList @Code = 943 , @Diag = 'Zdrobiri traumatice ale corpului cu localizari multiple';
Go

Exec uspAddDiagnoseList @Code = 944 , @Diag = 'Amputatii traumatice ale corpului cu localizari multiple';
Go

Exec uspAddDiagnoseList @Code = 945 , @Diag = 'Alte leziuni traumatice ale corpului cu localizari multiple, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 946 , @Diag = 'Leziuni traumatice multiple, fara precizare';
Go

Exec uspAddDiagnoseList @Code = 947 , @Diag = 'Corp strain in partea externa a ochiului';
Go

Exec uspAddDiagnoseList @Code = 948 , @Diag = 'Corp strain in ureche';
Go

Exec uspAddDiagnoseList @Code = 949 , @Diag = 'Corp strain in caile respiratorii';
Go

Exec uspAddDiagnoseList @Code = 950 , @Diag = 'Corp strain in caile digestive';
Go

Exec uspAddDiagnoseList @Code = 951 , @Diag = 'Corp strain in caile genito-urinare';
Go

Exec uspAddDiagnoseList @Code = 952 , @Diag = 'Arsura si coroziunea capului, gatului si trunchiului';
Go

Exec uspAddDiagnoseList @Code = 953 , @Diag = 'Arsura si coroziunea membrului superior';
Go

Exec uspAddDiagnoseList @Code = 954 , @Diag = 'Arsura si coroziunea membrului inferior';
Go

Exec uspAddDiagnoseList @Code = 955 , @Diag = 'Arsuri si coroziuni limitate la ochi si anexele sale';
Go

Exec uspAddDiagnoseList @Code = 956 , @Diag = 'Arsuri si coroziuni ale altor organe interne';
Go

Exec uspAddDiagnoseList @Code = 957 , @Diag = 'Arsuri si coroziuni ale corpului cu localizari multiple';
Go

Exec uspAddDiagnoseList @Code = 958 , @Diag = 'Arsuri si coroziuni ale corpului cu localizari neprecizate';
Go

Exec uspAddDiagnoseList @Code = 959 , @Diag = 'Arsuri clasate dupa intinderea lezata a suprafetei corpului';
Go

Exec uspAddDiagnoseList @Code = 960 , @Diag = 'Coroziuni clasate dupa intinderea lezata a suprafetei corpului';
Go

Exec uspAddDiagnoseList @Code = 961 , @Diag = 'Degeratura superficiala';
Go

Exec uspAddDiagnoseList @Code = 962 , @Diag = 'Degeratura cu necroza de tesut';
Go

Exec uspAddDiagnoseList @Code = 963 , @Diag = 'Degeratura corpului cu localizari multiple si fara precizare';
Go

Exec uspAddDiagnoseList @Code = 964 , @Diag = 'Intoxicatii prin medicamente si substante biologice';
Go

Exec uspAddDiagnoseList @Code = 965 , @Diag = 'Efectele toxice ale substantelor, in special nemedicamentoase';
Go

Exec uspAddDiagnoseList @Code = 966 , @Diag = 'Efectele radiatiilor fara precizare';
Go

Exec uspAddDiagnoseList @Code = 967 , @Diag = 'Efectele caldurii si ale luminii';
Go

Exec uspAddDiagnoseList @Code = 968 , @Diag = 'Hipotermia';
Go

Exec uspAddDiagnoseList @Code = 969 , @Diag = 'Efectele presiunii atmosferice si ale presiunii apei';
Go

Exec uspAddDiagnoseList @Code = 970 , @Diag = 'Asfixia';
Go

Exec uspAddDiagnoseList @Code = 971 , @Diag = 'sindroame datorite unor maltratari';
Go

Exec uspAddDiagnoseList @Code = 972 , @Diag = 'Efectele altor cauze externe';
Go

Exec uspAddDiagnoseList @Code = 973 , @Diag = 'Complicatii ale actelor medicale de diagnostic si tratament, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 974 , @Diag = 'Complicatiile protezelor, implantelor si grefelor cardiace si vasculare';
Go

Exec uspAddDiagnoseList @Code = 975 , @Diag = 'Alte complicatii ale tratamentului chirurgical si medical, neclasate la alte locuri';
Go

Exec uspAddDiagnoseList @Code = 976 , @Diag = 'Accidente de transport';
Go

Exec uspAddDiagnoseList @Code = 977 , @Diag = 'Accidente de transport pe apa';
Go

Exec uspAddDiagnoseList @Code = 978 , @Diag = 'Accidente de transport aerian si de zbor spatial';
Go

Exec uspAddDiagnoseList @Code = 979 , @Diag = 'Accidente de transport, alte si fara precizare';
Go

Exec uspAddDiagnoseList @Code = 980 , @Diag = 'Caderi';
Go

Exec uspAddDiagnoseList @Code = 981 , @Diag = 'Expunere la fortele mecanice';
Go

Exec uspAddDiagnoseList @Code = 982 , @Diag = 'Inecul si submersia accidentala si alte accidente afectind respiratia';
Go

Exec uspAddDiagnoseList @Code = 983 , @Diag = 'Expunerea la curentul electric, radiatii, temperaturi si presiuni extreme ale mediului ambiant';
Go

Exec uspAddDiagnoseList @Code = 984 , @Diag = 'Expunerea la fum, foc si flacari, contact cu o sursa de caldura si de substante arzinde';
Go

Exec uspAddDiagnoseList @Code = 985 , @Diag = 'Expunerea la fortele naturii';
Go

Exec uspAddDiagnoseList @Code = 986 , @Diag = 'Intoxicatii accidentale prin expunere la substante nocive';
Go

Exec uspAddDiagnoseList @Code = 987 , @Diag = 'Expunerea accidentala la factori, altii si fara precizare';
Go

Exec uspAddDiagnoseList @Code = 988 , @Diag = 'Leziuni auto-provocate';
Go

Exec uspAddDiagnoseList @Code = 989 , @Diag = 'Agresiunea';
Go

Exec uspAddDiagnoseList @Code = 990 , @Diag = 'Evenimente a caror intentie nu este precizata';
Go

Exec uspAddDiagnoseList @Code = 991 , @Diag = 'Interventia fortei publice si actiuni de razboi';
Go

Exec uspAddDiagnoseList @Code = 992 , @Diag = 'Complicatiile ingrijirilor medicale si chirurgicale, medicamente si substante biologice care au provocat efecte indezirabile in cursul utilizarii terapeutice';
Go

Exec uspAddDiagnoseList @Code = 993 , @Diag = 'Persoane in contact cu serviciile de sanatate pentru diverse investigatii';
Go

Exec uspAddDiagnoseList @Code = 994 , @Diag = 'Persoane susceptibile de a fi contaminate cu boli transmisibile';
Go

Exec uspAddDiagnoseList @Code = 995 , @Diag = 'Persoane care se adreseaza serviciilor de sanatate pentru motive legate de reproductie';
Go

Exec uspAddDiagnoseList @Code = 996 , @Diag = 'Recurgere la servicii de sanatate pentru acte medicale specifice si de ingrijire medicala';
Go

Exec uspAddDiagnoseList @Code = 997 , @Diag = 'Persoane cu risc de sanatate conditionat de factori socio-economici sau psiho-sociali';
Go

Exec uspAddDiagnoseList @Code = 998 , @Diag = 'Alte motive de recurgere la serviciile de sanatate';
Go

Exec uspAddDiagnoseList @Code = 999 , @Diag = 'Antecedente personale si familiale putind crea riscuri latente de boala si unele afectiuni cu efect asupra starii de sanatate';
Go

Exec uspAddDiagnoseList @Code = 'A04.8', @Diag = 'Alte infectii intestinale bacteriene specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A05.9', @Diag = 'Intoxicatia alimentara de origine bacteriana, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A07.8', @Diag = 'Alte boli intestinale prin protozoare, specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A17.8+', @Diag = 'Alte forme de tuberculoza a sistemului nervos';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A18.1+', @Diag = 'Tuberculoza aparatului genito-urinar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A41.0', @Diag = 'Sepsis datorit stafilococului auriu';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A41.1', @Diag = 'Sepsis datorit altor stafilococi, specificati';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A41.50', @Diag = 'Sepsis datorit organismelor Gram-negative nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A41.51', @Diag = 'Sepsis datorit Escherichia coli [E. Coli]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A41.52', @Diag = 'Sepsis datorit pseudomonas';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A41.8', @Diag = 'Alte tipuri de sepsis specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A41.9', @Diag = 'Sepsis, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A48.3', @Diag = 'Sindromul de soc toxic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A50.1', @Diag = 'Sifilis congenital precoce, latent';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A50.2', @Diag = 'Sifilis congenital precoce, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A66.6', @Diag = 'Leziunile pianice articulare si osoase';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A68.1', @Diag = 'Febra recurenta prin capuse';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A86', @Diag = 'Encefalita virala, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'A89', @Diag = 'Infectiile virale ale sistemului nervos central, nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B00.2', @Diag = 'Gingivo-stomatita si faringo-amigdalita cu virusul herpetic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B00.5+', @Diag = 'Afectiuni oculare cu virus herpetic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B08.1', @Diag = 'Molluscum contagiosum';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B08.4', @Diag = 'Stomatita veziculara cu exantem, prin enterovirus';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B08.5', @Diag = 'Faringita veziculara prin enterovirus';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B18.1', @Diag = 'Hepatita virala cronica B fara agent Delta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B18.2', @Diag = 'Hepatita virala cronica C';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B18.8', @Diag = 'Alte hepatite virale cronice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B18.9', @Diag = 'Hepatita virala cronica, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B19.9', @Diag = 'Hepatita virala nespecificata fara coma hepatica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B25.1', @Diag = 'Hepatita cu cytomegalovirus';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B27.0', @Diag = 'Subfamilie gammaherpesvirusuri (mononucleoza)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B43.2', @Diag = 'Abcesul si chistul phaeomycotic subcutanat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B52.0', @Diag = 'Paludismul cu Plasmodium malariae, cu nefropatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B58.0', @Diag = 'Oculopatia cu Toxoplasma';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B66.8', @Diag = 'Alte infectii specificate cu paraziti';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B67.0', @Diag = 'Infectia ficatului cu Echinococcus granulosus';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B67.5', @Diag = 'Infectia ficatului cu Echinococcus multilocularis';	
Go	
	
Exec uspAddDiagnoseList @Code = 'B67.6', @Diag = 'Infectia cu Echinococcus multilocularis, alte si localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C00.1', @Diag = 'Tumora maligna buza inferioara, marginea libera';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C01', @Diag = 'Tumora maligna a bazei limbii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C02.0', @Diag = 'Tumora maligna fata dorsala a limbii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C02.1', @Diag = 'Tumora maligna partea laterala a limbii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C02.3', @Diag = 'Tumora maligna doua treimi ale limbii , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C02.4', @Diag = 'Tumora maligna amigdala linguala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C02.8', @Diag = 'Tumora maligna leziune depasind limba';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C02.9', @Diag = 'Tumora maligna limba, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C04.0', @Diag = 'Tumora maligna planseul anterior al gurii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C04.1', @Diag = 'Tumora maligna planseul lateral al gurii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C04.8', @Diag = 'Tumora maligna leziune depasind planseul gurii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C05.0', @Diag = 'Tumora maligna bolta palatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C06.2', @Diag = 'Tumora maligna regiunea retromolara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C06.8', @Diag = 'Tumora maligna leziune depasind gura , alte parti si fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C08.1', @Diag = 'Tumora maligna glanda sublinguala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C08.8', @Diag = 'Tumora maligna leziune depasind glandele salivare principale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C09.0', @Diag = 'Tumora maligna fosa amigdaliana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C09.1', @Diag = 'Tumora maligna stilpul (pilierul) amigdalei (anterior) (posterior)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C09.8', @Diag = 'Tumora maligna leziune depasind amigdala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C09.9', @Diag = 'Tumora maligna amigdala , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C10.0', @Diag = 'Tumora maligna santul gloso-epiglotic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C10.1', @Diag = 'Tumora maligna fata anterioara a epiglotei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C10.2', @Diag = 'Tumora maligna peretele lateral al orofaringelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C10.3', @Diag = 'Tumora maligna peretele posterior al orofaringelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C10.4', @Diag = 'Tumora maligna fenta branhiala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C10.8', @Diag = 'Tumora maligna leziune depasind orofaringele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C11.0', @Diag = 'Tumora maligna peretele superior al rinofaringelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C11.1', @Diag = 'Tumora maligna peretele posterior al rinofaringelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C11.2', @Diag = 'Tumora maligna peretele lateral al rinofaringelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C11.3', @Diag = 'Tumora maligna peretele anterior al rinofaringelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C11.8', @Diag = 'Tumora maligna leziune depasind rinofaringele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C11.9', @Diag = 'Tumora maligna rinofaringe , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C12', @Diag = 'Tumora maligna a sinusului piriform';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C13.1', @Diag = 'Tumora maligna pliu ary-epiglotic versant hipofaringian';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C13.2', @Diag = 'Tumora maligna peretele posterior al hipofaringelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C13.8', @Diag = 'Tumora maligna leziune depasind hipofaringele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C13.9', @Diag = 'Tumora maligna hipofaringe , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C14.0', @Diag = 'Tumora maligna faringe , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C14.2', @Diag = 'Tumora maligna inelul Waldeyer';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C15.0', @Diag = 'Tumora maligna esofagul cervical';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C15.1', @Diag = 'Tumora maligna esofagul toracic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C15.3', @Diag = 'Tumora maligna treimea superioara a esofagului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C15.4', @Diag = 'Tumora maligna treimea mijlocie a esofagului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C15.5', @Diag = 'Tumora maligna treimea inferioara a esofagului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C15.8', @Diag = 'Tumora maligna leziune depasind esofagul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C15.9', @Diag = 'Tumora maligna esofagul , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C16.0', @Diag = 'Tumora maligna cardia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C16.2', @Diag = 'Tumora maligna corpul stomacului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C16.3', @Diag = 'Tumora maligna antrul piloric';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C16.4', @Diag = 'Tumora maligna pilorul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C16.5', @Diag = 'Tumora maligna curbura mica a stomacului , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C16.6', @Diag = 'Tumora maligna curbura mare a stomacului , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C16.8', @Diag = 'Tumora maligna leziune depasind stomacul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C16.9', @Diag = 'Tumora maligna stomac , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C17.1', @Diag = 'Tumora maligna jejun';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C18.0', @Diag = 'Tumora maligna cecul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C18.1', @Diag = 'Tumora maligna apendice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C18.2', @Diag = 'Tumora maligna colonul ascendent';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C18.3', @Diag = 'Tumora maligna unghiul hepatic al colonului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C18.4', @Diag = 'Tumora maligna colonul transvers';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C18.5', @Diag = 'Tumora maligna unghiul splenic al colonului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C18.6', @Diag = 'Tumora maligna colonul descendent';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C18.7', @Diag = 'Tumora maligna colonul sigmoid';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C18.8', @Diag = 'Tumora maligna leziune depasind colonul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C18.9', @Diag = 'Tumora maligna colon , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C19', @Diag = 'Tumora maligna a jonctiunii recto-sigmoidiene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C20', @Diag = 'Tumora maligna a rectului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C21.1', @Diag = 'Tumora maligna canal anal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C21.8', @Diag = 'Tumora maligna leziune depasind rectul, anusul si canalul anal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C22.0', @Diag = 'Carcinom al celulei hepatice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C22.1', @Diag = 'Carcinom al canalului biliar intrahepatic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C22.9', @Diag = 'Tumora maligna ficat , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C23', @Diag = 'Tumoara maligna a veziculei biliare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C24.0', @Diag = 'Tumora maligna canal biliar extrahepatic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C24.1', @Diag = 'Tumora maligna ampula Vater';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C24.8', @Diag = 'Tumora maligna leziune depasind caile biliare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C24.9', @Diag = 'Tumora maligna cai biliare , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C25.0', @Diag = 'Tumora maligna capul pancreasului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C25.1', @Diag = 'Tumora maligna corpul pancreasului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C25.2', @Diag = 'Tumora maligna coada pancreasului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C25.7', @Diag = 'Tumora maligna alte parti ale pancreasului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C25.8', @Diag = 'Tumora maligna leziune depasind pancreasul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C25.9', @Diag = 'Tumora maligna pancreas , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C26.0', @Diag = 'Tumora maligna tractul intestinal, parte neprecizata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C26.1', @Diag = 'Tumora maligna splina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C30.0', @Diag = 'Tumora maligna fosele nazale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C31.0', @Diag = 'Tumora maligna sinusul maxilar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C32.0', @Diag = 'Tumora maligna glota';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C32.1', @Diag = 'Tumora maligna etajul supraglotic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C32.3', @Diag = 'Tumora maligna cartilajul laringian';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C32.8', @Diag = 'Tumora maligna leziune depasind laringele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C32.9', @Diag = 'Tumora maligna laringe , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C33', @Diag = 'Tumora maligna a traheei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C34.0', @Diag = 'Tumora maligna trunchiul bronhial';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C34.1', @Diag = 'Tumora maligna lobul superior , bronhii si pulmon';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C34.2', @Diag = 'Tumora maligna lobul mijlociu, bronhii si pulmon';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C34.3', @Diag = 'Tumora maligna lobul inferior , bronhii si pulmon';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C34.8', @Diag = 'Tumora maligna leziune depasind bronhiile si pulmonul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C34.9', @Diag = 'Tumora maligna bronhii si pulmon , fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C38.3', @Diag = 'Tumora maligna mediastin , parte neprecizata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C39.9', @Diag = 'Tumora maligna localizari rau definite ale aparatului respirator';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C40.0', @Diag = 'Tumora maligna omoplatul si oasele lungi ale membrelor superioare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C40.2', @Diag = 'Tumora maligna oasele lungi ale membrelor inferioare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C40.3', @Diag = 'Tumora maligna oasele scurte ale membrelor inferioare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C41.1', @Diag = 'Tumora maligna mandibula';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C41.2', @Diag = 'Tumora maligna coloana vertebrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C41.3', @Diag = 'Tumora maligna coaste , stern si clavicula';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C41.4', @Diag = 'Tumora maligna pelvis  sacrum, coccis';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C41.8', @Diag = 'Tumora maligna leziune depasind oasele si cartilagiile articulare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C43.1', @Diag = 'Melanomul malign al pleoapei, inclusiv cantusul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C43.3', @Diag = 'Melanomul malign al fetei, alte localizari si neprecizate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C43.4', @Diag = 'Melanomul malign al pielii paroase a craniului si a gatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C43.5', @Diag = 'Melanomul malign al trunchiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C43.6', @Diag = 'Melanomul malign al membrelor superioare, inclusiv umarul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C43.7', @Diag = 'Melanom malign al membrelor inferioare, inclusiv soldul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C44.0', @Diag = 'Tumora maligna pielea buzelor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C44.1', @Diag = 'Tumora maligna pielea pleoapelor, inclusiv cantusul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C44.2', @Diag = 'Tumora maligna pielea urechii si a conductului auditiv extern';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C44.3', @Diag = 'Tumora maligna pielea fetei, alte localizari si neprecizate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C44.4', @Diag = 'Tumora maligna pielea paroasa a craniului si a gatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C44.5', @Diag = 'Tumora maligna pielea trunchiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C44.6', @Diag = 'Tumora maligna pielea membrelor superioare, inclusiv umarul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C44.7', @Diag = 'Tumora maligna pielea membrelor inferioare, inclusiv soldul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C44.8', @Diag = 'Tumora maligna leziuni depasind pielea';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C45.0', @Diag = 'Mesoteliomul pleurei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C46.1', @Diag = 'Sarcomul Kaposi al tesuturilor moi';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C47.6', @Diag = 'Tumora maligna nervii periferici ai trunchiului, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C48.1', @Diag = 'Tumora maligna localizari precise ale peritoneului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C48.2', @Diag = 'Tumora maligna peritoneu, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C48.8', @Diag = 'Tumora maligna leziune depasind retroperitoneul si peritoneul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C49.0', @Diag = 'Tumora maligna tesutul conjunctiv si alte tesuturi moi ale capului, fetei si gatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C49.1', @Diag = 'Tumora maligna tesutul conjunctiv si alte tesuturi moi ale membrelor superioare, inclusiv umarul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C49.2', @Diag = 'Tumora maligna tesutul conjunctiv si alte tesuturi moi ale membrelor inferioare, inclusiv soldul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C49.3', @Diag = 'Tumora maligna tesutul conjunctiv si alte tesuturi moi ale toracelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C49.4', @Diag = 'Tumora maligna tesut conjunctiv si alte tesuturi moi ale abdomenului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C49.5', @Diag = 'Tumora maligna tesut conjunctiv si alte tesuturi moi ale bazinului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C50.0', @Diag = 'Tumora maligna mamelon si areola';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C50.1', @Diag = 'Tumora maligna partea centrala a sanului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C50.2', @Diag = 'Tumora maligna cadranul supero-intern al sanului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C50.3', @Diag = 'Tumora maligna cadranul infero-intern al sanului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C50.4', @Diag = 'Tumora maligna cadranul supero-extern al sanului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C50.8', @Diag = 'Tumora maligna leziune depasind sanul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C50.9', @Diag = 'Tumora maligna san, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C51.0', @Diag = 'Tumora maligna buzele mari';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C51.2', @Diag = 'Tumora maligna clitoris';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C51.8', @Diag = 'Tumora maligna leziune depasind vulva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C52', @Diag = 'Tumora maligna a vaginului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C53.0', @Diag = 'Tumora maligna endocolul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C53.1', @Diag = 'Tumora maligna exocolul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C53.8', @Diag = 'Tumora maligna leziune depasind colul uterin';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C53.9', @Diag = 'Tumora maligna col uterin, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C54.1', @Diag = 'Tumora maligna endometru';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C54.8', @Diag = 'Tumora maligna leziune depasind fundul uterului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C54.9', @Diag = 'Tumora maligna corpul uterului, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C55', @Diag = 'Tumora maligna a uterului, localizare neprecizata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C56', @Diag = 'Tumora maligna a ovarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C57.0', @Diag = 'Tumora maligna trompa Fallope';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C57.8', @Diag = 'Tumora maligna leziune depasind organele genitale la femeie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C60.0', @Diag = 'Tumora maligna preputul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C60.1', @Diag = 'Tumora maligna glandul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C60.2', @Diag = 'Tumora maligna corpul penian';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C60.8', @Diag = 'Tumora maligna leziune depasind penisul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C60.9', @Diag = 'Tumora maligna penis, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C61', @Diag = 'Tumora maligna a prostatei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C62.1', @Diag = 'Tumora maligna testicol coborat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C62.9', @Diag = 'Tumora maligna testicol, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C64', @Diag = 'Tumora maligna a rinichiului, cu exceptia bazinetului renal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C65', @Diag = 'Tumora maligna a bazinetului renal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C66', @Diag = 'Tumora maligna a ureterului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C67.0', @Diag = 'Tumora maligna trigonul vezicii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C67.1', @Diag = 'Tumora maligna bolta vezicii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C67.2', @Diag = 'Tumora maligna peretele lateral al vezicii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C67.4', @Diag = 'Tumora maligna peretele posterior al vezicii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C67.5', @Diag = 'Tumora maligna colul vezical';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C67.6', @Diag = 'Tumora maligna orificiul ureteral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C67.8', @Diag = 'Tumora maligna leziune depasind vezica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C67.9', @Diag = 'Tumora maligna vezica urinara, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C68.9', @Diag = 'Tumora maligna organ urinar, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C69.3', @Diag = 'Tumora maligna coroida';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C69.4', @Diag = 'Tumora maligna corp ciliar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C69.6', @Diag = 'Tumora maligna orbita';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C69.8', @Diag = 'Tumora maligna leziune depasind ochiul si anexele sale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C70.0', @Diag = 'Tumora maligna meninge cerebral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C70.9', @Diag = 'Tumora maligna meninge, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C71.0', @Diag = 'Tumora maligna creier, fara lobi si ventriculi';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C71.1', @Diag = 'Tumora maligna lob frontal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C71.2', @Diag = 'Tumora maligna lob temporal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C71.3', @Diag = 'Tumora maligna lob parietal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C71.4', @Diag = 'Tumora maligna lob occipital';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C71.5', @Diag = 'Tumora maligna ventricul cerebral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C71.6', @Diag = 'Tumora maligna creierul mic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C71.8', @Diag = 'Tumora maligna leziune depasind creierul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C71.9', @Diag = 'Tumora maligna creierul, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C72.3', @Diag = 'Tumora maligna nervul optic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C73', @Diag = 'Tumora maligna a tiroidei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C74.9', @Diag = 'Tumora maligna suprarenala, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C75.1', @Diag = 'Tumora maligna hipofiza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C76.0', @Diag = 'Tumora maligna cap, fata, gat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C76.1', @Diag = 'Tumora maligna torace';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C76.2', @Diag = 'Tumora maligna abdomen';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C76.5', @Diag = 'Tumora maligna membru inferior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C77.0', @Diag = 'Tumora maligna ganglioni limfatici ai capului, fetei si gatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C77.1', @Diag = 'Tumora maligna ganglioni limfatici intratoracici';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C77.2', @Diag = 'Tumora maligna ganglioni limfatici intraabdominali';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C77.3', @Diag = 'Tumora maligna ganglioni limfatici ai axilei si membrului superior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C77.4', @Diag = 'Tumora maligna ganglioni limfatici inghinali si ai membrului inferior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C77.5', @Diag = 'Tumora maligna ganglioni limfatici intrapelvieni';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C77.8', @Diag = 'Tumora maligna ganglioni limfatici cu localizare multipla';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C78.0', @Diag = 'Tumora maligna secundara a pulmonului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C78.1', @Diag = 'Tumora maligna secundara a mediastinului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C78.2', @Diag = 'Tumora maligna secundara a pleurei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C78.3', @Diag = 'Tumora maligna secundara a organelor respiratorii si digestive, altele si neprecizate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C78.4', @Diag = 'Tumora maligna secundara a intestinului subtire';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C78.6', @Diag = 'Tumora maligna secundara a retroperitoneului si peritoneului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C78.7', @Diag = 'Tumora maligna secundara a ficatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C78.8', @Diag = 'Tumora maligna secundara a organelor digestive, alte si neprecizate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C79.1', @Diag = 'Tumora maligna secundara a vezicei si organelor urinare, altele si neprecizate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C79.3', @Diag = 'Tumora maligna secundara a creierului si meningelor cerebrale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C79.4', @Diag = 'Tumora maligna secundara a sistemului nervos, altele si neprecizate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C79.5', @Diag = 'Tumora maligna secundara a osului si maduvei osoase';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C79.7', @Diag = 'Tumora maligna secundara a glandei suprarenale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C80', @Diag = 'Tumori maligne cu sediu neprecizat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C81.0', @Diag = 'Boala Hodkin predominenta limfocitara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C81.1', @Diag = 'Boala Hodkin scleroza nodulara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C81.2', @Diag = 'Boala Hodkin celulara mixta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C82.0', @Diag = 'Limfom folicular (nodular) nehodkinian celule mici foliculare, crestate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C82.1', @Diag = 'Limfom folicular (nodular) nehodkinian amestec de celule mici crestate si celule mari foliculare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C82.2', @Diag = 'Limfom folicular (nodular) nehodkinian mari celule foliculare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C82.7', @Diag = 'Alte forme de limfom nehodkinian, folicular';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C82.9', @Diag = 'Limfom folicular nehodkinian, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C83.0', @Diag = 'Limfom difuz nehodkinian celule mici (difuze)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C83.2', @Diag = 'Limfom difuz nehodkinian amestec de celule mici si mari (difuze)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C83.3', @Diag = 'Limfom difuz nehodkinian celule mari (difuze)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C83.5', @Diag = 'Limfom difuz nehodkinian limfoblastic (difuz)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C83.7', @Diag = 'Limfom difuz nehodkinian tumora Burkitt';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C83.8', @Diag = 'Alte forme de limfom difuz nehodkinian';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C83.9', @Diag = 'Limfom difuz nehodkinian, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C84.0', @Diag = 'Micosis fungoid';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C84.4', @Diag = 'Limfom periferic cu celule T';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C84.5', @Diag = 'Limfom cu celule T, alte si neprecizate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C85.7', @Diag = 'Alte tipuri precizate de limfom nehodkinian';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C85.9', @Diag = 'Limfom nehodkinian, de tip neprecizat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C88.00', @Diag = 'Microglobulinemia Waldenström, fara mentionarea remisiunii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C90.00', @Diag = 'Mielom multiplu, fara mentionarea remisiunii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C91.00', @Diag = 'Leucemia limfoblastica acuta, fara mentionarea remisiunii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C91.10', @Diag = 'Leucemia limfoida cronica, fara mentionarea remisiunii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C91.40', @Diag = 'Leucemia cu celule paroase, fara mentionarea remisiunii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C92.00', @Diag = 'Leucemia mieloida acuta, fara mentionarea remisiunii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C92.10', @Diag = 'Leucemia mieloida cronica, fara mentionarea remisiunii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C92.40', @Diag = 'Leucemia promielocitara acuta, fara mentionarea remisiunii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C92.50', @Diag = 'Leucemia mielomonocitara acuta, fara mentionarea remisiunii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'C93.70', @Diag = 'Alte leucemii monocitare, fara mentionarea remisiunii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D01.5', @Diag = 'Carcinom in situ ficat , vezicula si caile biliare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D02.0', @Diag = 'Carcinom in situ laringe';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D02.3', @Diag = 'Carcinom in situ alte parti ale aparatului respirator';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D04.2', @Diag = 'Carcinom in situ pielea urechii si a conductului auditiv extern';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D05.1', @Diag = 'Carcinom in situ intracanalicular';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D10.2', @Diag = 'Tumora benigna planseul gurii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D10.4', @Diag = 'Tumora benigna amigdala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D10.5', @Diag = 'Tumora benigna alte localizari ale orofaringelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D10.6', @Diag = 'Tumora benigna rinofaringe';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D10.7', @Diag = 'Tumora benigna hipofaringele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D11.0', @Diag = 'Tumora benigna glanda parotida';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D12.0', @Diag = 'Tumora benigna cec';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D12.2', @Diag = 'Tumora benigna colon ascendent';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D12.3', @Diag = 'Tumora benigna colon transvers';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D12.4', @Diag = 'Tumora benigna colon descendent';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D12.6', @Diag = 'Tumora benigna colon, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D12.8', @Diag = 'Tumora benigna rect';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D13.0', @Diag = 'Tumora benigna esofag';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D13.4', @Diag = 'Tumora benigna ficat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D14.1', @Diag = 'Tumora benigna laringele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D14.3', @Diag = 'Tumora benigna bronhii si pulmon';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D16.0', @Diag = 'Tumora benigna omoplat si oase lungi ale membrului superior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D16.2', @Diag = 'Tumora benigna oase lungi ale membrului inferior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D16.3', @Diag = 'Tumora benigna oase scurte ale membrului inferior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D16.6', @Diag = 'Tumora benigna coloana vertebrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D16.7', @Diag = 'Tumora benigna coaste, stern si clavicula';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D16.8', @Diag = 'Tumora benigna bazin, sacrum, coccis';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D17.3', @Diag = 'Tumora lipomatoasa benigna a pielii si a tesutului subcutanat, cu alte localizari si neprecizate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D17.5', @Diag = 'Tumora lipomatoasa benigna a organelor intraabdominale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D17.7', @Diag = 'Tumora lipomatoasa benigna cu alte localizari';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D17.9', @Diag = 'Tumora lipomatoasa benigna, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D18.00', @Diag = 'Hemangiom, localizare nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D18.01', @Diag = 'Hemangiom, piele si tesut subcutanat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D18.02', @Diag = 'Hemangiom, structuri intracraniene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D18.05', @Diag = 'Hemangiom, structuri ale urechii, nasului, gurii si gatlejului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D18.08', @Diag = 'Hemangiom, alte localizari';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D18.1', @Diag = 'Limfangiom, toate localizarile';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D20.0', @Diag = 'Tumora benigna retroperitoneu';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D21.0', @Diag = 'Tumora benigna tesut conjunctiv si ale altor  tesuturi moi ale capului, fetei si gitului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D21.1', @Diag = 'Tumora benigna tesut conjunctiv si ale altor tesuturi moi ale membrului superior, inclusiv umarul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D21.2', @Diag = 'Tumora benigna tesut conjunctiv si ale altor  tesututuri moi ale membrului inferior, inclusiv soldul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D21.3', @Diag = 'Tumora benigna tesut conjunctiv si ale altor  tesuturi moi ale toracelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D21.4', @Diag = 'Tumora benigna tesut conjunctiv si ale altor  tesuturi moi ale abdomenului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D21.6', @Diag = 'Tumora benigna tesut conjunctiv si ale altor  tesuturi moi ale trunchiului, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D22.3', @Diag = 'Nev cu melanocisti al unei portiuni a fetei, alte si neprecizate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D22.4', @Diag = 'Nev cu melanocisti al pielii paroase a craniului si gitului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D22.5', @Diag = 'Nev cu melanocisti al trunchiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D22.6', @Diag = 'Nev cu melanocisti al membrului superior, inclusiv umarul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D22.7', @Diag = 'Nev cu melanocisti al membrului inferior,inclusiv soldul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D22.9', @Diag = 'Nev cu melanocisti, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D23.1', @Diag = 'Tumora benigna pielea pleoapei, inclusiv cantus';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D23.2', @Diag = 'Tumora benigna pielea urechii si conductului auditiv extern';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D23.3', @Diag = 'Tumora benigna pielea unei portiuni a fetei, alte si neprecizate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D23.4', @Diag = 'Tumora benigna pielea paroasa a craniului si a gitului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D23.9', @Diag = 'Tumora benigna pielea, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D24', @Diag = 'Tumora benigna a sinului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D25.0', @Diag = 'Leiomiom submucos al uterului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D25.1', @Diag = 'Leiomiom intramural al uterului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D26.0', @Diag = 'Tumora benigna col uterin';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D26.1', @Diag = 'Tumora benigna corpul uterin';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D27', @Diag = 'Tumora benigna a ovarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D28.0', @Diag = 'Tumora benigna vulva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D28.7', @Diag = 'Tumora benigna alte organe genitale la femeie, precizate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D32.0', @Diag = 'Tumora benigna meninge cerebral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D32.1', @Diag = 'Tumora benigna meninge rahidian';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D32.9', @Diag = 'Tumora benigna meninge, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D33.0', @Diag = 'Tumora benigna creier, supratentorial';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D33.4', @Diag = 'Tumora benigna maduva spinarii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D33.7', @Diag = 'Tumora benigna alte locuri precizate ale sistemului nervos central';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D34', @Diag = 'Tumora benigna a glandei tiroide';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D35.2', @Diag = 'Tumora benigna hipofiza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D36.7', @Diag = 'Tumora benigna alte localizari precizate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D37.0', @Diag = 'Tumora buza, cavitate bucala si faringe cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D37.1', @Diag = 'Tumora stomacului  cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D37.2', @Diag = 'Tumora intestinului subtire cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D37.4', @Diag = 'Tumora colonului cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D37.5', @Diag = 'Tumora rectului cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D37.6', @Diag = 'Tumora ficatului si cailor biliare cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D37.7', @Diag = 'Tumora altor organe digestive cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D37.9', @Diag = 'Tumora aparatului digestiv cu evolutie imprevizibila si necunoscuta, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D38.0', @Diag = 'Tumora laringelui cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D38.1', @Diag = 'Tumora traheii, bronhiilor si pulmonului cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D38.3', @Diag = 'Tumora mediastinului cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D38.5', @Diag = 'Tumora altor organe respiratorii cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D38.6', @Diag = 'Tumora aparat respirator cu evolutie imprevizibila si necunoscuta, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D39.0', @Diag = 'Tumora uter cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D39.1', @Diag = 'Tumora ovar cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D39.7', @Diag = 'Tumora altor organe genitale la femeie cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D39.9', @Diag = 'Tumora organelor genitale la femeie cu evolutie imprevizibila si necunoscuta, fara precizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D40.0', @Diag = 'Tumora prostata cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D40.1', @Diag = 'Tumora testicol cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D40.7', @Diag = 'Tumora altor organe genitale la barbat cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D41.0', @Diag = 'Tumora rinichi cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D41.4', @Diag = 'Tumora vezica urinara cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D41.7', @Diag = 'Tumora altor organe urinare cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D42.0', @Diag = 'Tumora meninge cerebral cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D43.0', @Diag = 'Tumora creier, supratentorial cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D43.1', @Diag = 'Tumora creier, infratentorial cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D43.2', @Diag = 'Tumora creier, fara precizare cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D43.4', @Diag = 'Tumora maduva spinarii cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D43.7', @Diag = 'Tumora cu evolutie imprevizibila si necunoscuta alte localizari pe sistemul nervos central';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D44.1', @Diag = 'Tumota suprarenala cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D44.3', @Diag = 'Tumora hipofiza cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D45', @Diag = 'Policitemia esentiala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D46.1', @Diag = 'Anemie refractara cu sideroblasti';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D46.2', @Diag = 'Anemie refractara cu exces de blasti';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D46.3', @Diag = 'Anemie refractara cu exces de blasti in transformare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D46.4', @Diag = 'Anemie refractara, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D46.7', @Diag = 'Alte sidroame mielodisplazice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D46.9', @Diag = 'Sindrom mielodisplazic, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D47.1', @Diag = 'Boala mieloproliferativa cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D47.2', @Diag = 'Gammapatie monoclonala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D47.3', @Diag = 'Trombocitemie esentiala (hemoragica)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D47.9', @Diag = 'Tumora cu evolutie imprevizibila sau comportament necunoscut a tesuturilor limfoid, hematopoietic si inrudite, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D48.0', @Diag = 'Tumora os si cartilagiu articular cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D48.1', @Diag = 'Tumora tesut conjunctiv si alte tesuturi moi cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D48.3', @Diag = 'Tumora retroperitoneu cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D48.4', @Diag = 'Tumora peritoneu cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D48.5', @Diag = 'Tumora pielii cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D48.6', @Diag = 'Tumora sin cu evolutie imprevizibila si necunoscuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D48.7', @Diag = 'Tumora  cu evolutie imprevizibila si necunoscuta alte localizari precizate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D48.9', @Diag = 'Tumora cu evolutie imprevizibila si necunoscuta, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D51.3', @Diag = 'Alte anemii prin carenta alimentara de vitamina B12';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D53.1', @Diag = 'Alte anemii megaloblastice, neclasificate altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D53.8', @Diag = 'Anemia asociata cu alte carente nutritionale specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D53.9', @Diag = 'Anemia nutritionala, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D56.1', @Diag = 'Beta-thalasemia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D58.8', @Diag = 'Alte anemii hemolitice ereditare specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D58.9', @Diag = 'Anemie hemolitica ereditara, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D59.0', @Diag = 'Anemia hemolitica auto-imuna provocata de medicamente';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D59.1', @Diag = 'Alte anemii hemolitice auto-imune';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D59.5', @Diag = 'Hemoglobinuria nocturna paroxistica (Marchiafava-Micheli)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D59.6', @Diag = 'Hemoglobinuria datorita hemolizei din alte cauze externe';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D60.0', @Diag = 'Aplazia pura de celule rosii dobandita cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D61.0', @Diag = 'Anemia aplazica constitutionala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D61.3', @Diag = 'Anemia aplazica idiopatica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D61.8', @Diag = 'Alte anemii aplazice specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D61.9', @Diag = 'Anemia aplazica, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D62', @Diag = 'Anemia post-hemoragica acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D63.0*', @Diag = 'Anemia in bolile neoplazice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D64.0', @Diag = 'Anemia sideroblastica ereditara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D64.8', @Diag = 'Alte anemii specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D66', @Diag = 'Carenta ereditara prin lipsa factorului VIII';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D67', @Diag = 'Carenta ereditara prin lipsa factorului IX';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D68.0', @Diag = 'Boala von Willebrand';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D68.3', @Diag = 'Tulburari hemoragice datorita anticoagulantelor circulante';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D68.8', @Diag = 'Alte anomalii specificate de coagulare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D69.0', @Diag = 'Purpura alergica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D69.3', @Diag = 'Purpura trombopenica idiopatica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D69.4', @Diag = 'Alte trombocitopenii primare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D69.5', @Diag = 'Trombocitopenia secundara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D69.8', @Diag = 'Alte afectiuni hemoragice specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D70', @Diag = 'Agranulocitoza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D72.8', @Diag = 'Alte anomalii specificate ale celulelor albe';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D80.2', @Diag = 'Deficit selectiv de imunoglobuline A [lgA]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D86.8', @Diag = 'Sarcoidoza cu alte localizari si combinate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'D89.1', @Diag = 'Crioglobulinemia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E03.1', @Diag = 'Hipotiroidia congenitala fara gusa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E04.8', @Diag = 'Alte guse netoxice, specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E04.9', @Diag = 'Gusa netoxica, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E05.0', @Diag = 'Tireotoxicoza cu gusa difuza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E05.2', @Diag = 'Tireotoxicoza cu gusa multinodulara toxica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E05.4', @Diag = 'Tireotoxicoza factica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E05.8', @Diag = 'Alte tireotoxicoze';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E06.0', @Diag = 'Tiroidita acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E06.1', @Diag = 'Tiroidita subacuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E07.8', @Diag = 'Alte afectiuni specificate ale tiroidei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E09.9', @Diag = 'Reglementarea intolerantei la glucoza fara complicatii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E10.11', @Diag = 'Diabet mellitus tip 1 cu acidocetoza, fara coma';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E10.12', @Diag = 'Diabet mellitus tip 1 cu acidocetoza, cu coma';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E10.42', @Diag = 'Diabet mellitus tip 1 cu polineuropatie diabetica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E10.52', @Diag = 'Diabet mellitus tip 1 cu angiopatie periferica, cu gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E10.62', @Diag = 'Diabet mellitus tip 1 cu complicatii ale pielii si tesutului subcutanat specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E10.63', @Diag = 'Diabet mellitus tip 1 cu complicatii periodontale specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E10.64', @Diag = 'Diabet mellitus tip 1 cu hipoglicemie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E10.69', @Diag = 'Diabet mellitus tip 1 cu alte complicatii specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E10.71', @Diag = 'Diabet mellitus tip 1 cu complicatii microvasculare multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E11.01', @Diag = 'Diabet mellitus tip 2 cu hiperosmolaritate fara coma noncetotica hiperglicemica-hiperosmolara [NKHHC]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E11.11', @Diag = 'Diabet mellitus tip 2 cu acidocetoza, fara coma';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E11.12', @Diag = 'Diabet mellitus tip 2 cu acidocetoza, cu coma';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E11.42', @Diag = 'Diabet mellitus tip 2 cu polineuropatie diabetica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E11.52', @Diag = 'Diabet mellitus tip 2 cu angiopatie periferica, cu gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E11.53', @Diag = 'Diabet mellitus tip 2 cu cardiomiopatie ischemica diabetica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E11.64', @Diag = 'Diabet mellitus tip 2 cu hipoglicemie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E11.69', @Diag = 'Diabet mellitus tip 2 cu alte complicatii specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E11.71', @Diag = 'Diabet mellitus tip 2 cu complicatii microvasculare multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E11.72', @Diag = 'Diabet mellitus tip 2 cu caracteristici de rezistenta la insulina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E11.73', @Diag = 'Diabet mellitus tip 2 cu ulceratia piciorului datorita unor cauze multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E13.42', @Diag = 'Alte forme specificate de diabet mellitus cu polineuropatie diabetica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E13.65', @Diag = 'Alte forme specificate de diabet mellitus cu control slab';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E13.71', @Diag = 'Alte forme specificate de diabet mellitus cu complicatii microvasculare multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E13.73', @Diag = 'Alte forme specificate de diabet mellitus ulceratia piciorului datorita unor cauza multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E14.11', @Diag = 'Diabet mellitus nespecificat cu acidocetoza, fara coma';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E14.65', @Diag = 'Diabet mellitus nespecificat cu control slab';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E16.1', @Diag = 'Alte hipoglicemii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E16.2', @Diag = 'Hipoglicemie nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E21.0', @Diag = 'Hiperparatiroidism primar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E23.0', @Diag = 'Hipopituitarism';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E23.2', @Diag = 'Diabetul insipid';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E24.0', @Diag = 'Boala Cushing pituitaro-dependenta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E24.2', @Diag = 'Sindromul Cushing indus medicamentos';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E24.8', @Diag = 'Alte sindroame Cushing';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E26.0', @Diag = 'Hiperaldosteronism primar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E27.1', @Diag = 'Insuficienta adrenocorticala primara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E27.9', @Diag = 'Tulburari ale glandei adrenale, nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E28.2', @Diag = 'Sindrom ovarian polichistic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E28.3', @Diag = 'Insuficienta ovariana primara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E34.3', @Diag = 'Insuficienta staturala, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E41', @Diag = 'Marasm nutritional';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E43', @Diag = 'Malnutritia proteino-energetica grava, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E45', @Diag = 'Intarzierea de dezvoltare datorita malnutritiei proteino-energetice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E58', @Diag = 'Carenta alimentara de calciu';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E61.1', @Diag = 'Carenta de fier';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E66.0', @Diag = 'Obezitate datorita unui exces caloric';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E66.2', @Diag = 'Obezitate extrema cu hipoventilatie alveolara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E66.8', @Diag = 'Alte obezitati';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E72.1', @Diag = 'Tulburari de metabolism al aminoacizilor sulfurati';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E78.2', @Diag = 'Hiperlipidemie mixta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E80.4', @Diag = 'Sindromul Gilbert';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E83.5', @Diag = 'Tulburari de metabolism al calciului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E86', @Diag = 'Hipovolemia, deshidratarea';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E87.2', @Diag = 'Acidoza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E87.3', @Diag = 'Alcaloza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E87.8', @Diag = 'Alte tulburari hidrice si electrolitice, neclasificate altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E88.2', @Diag = 'Lipomatoza, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E88.8', @Diag = 'Alte tulburari de metabolism specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E89.3', @Diag = 'Hipopituitarism postprocedural';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E89.8', @Diag = 'Alte tulburari metabolice si endrocrine postprocedurale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'E89.9', @Diag = 'Tulburari metabolice si endrocrine postprocedurale, nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'F01.3', @Diag = 'Dementa vasculara mixta, corticala si subcorticala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'F01.9', @Diag = 'Dementa vasculara, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'F03', @Diag = 'Dementa nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'F07.1', @Diag = 'Sindrom postencefalitic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'F10.0', @Diag = 'Tulburari mentale si de comportament datorite folosirii alcoolului, intoxicatie acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'F10.2', @Diag = 'Tulburari mentale si de comportament datorite folosirii alcoolului, sindromul de dependenta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'F34.1', @Diag = 'Distimie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'F50.8', @Diag = 'Alte tulburari de apetit';	
Go	
	
Exec uspAddDiagnoseList @Code = 'F98.0', @Diag = 'Enuresis neorganica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'F98.1', @Diag = 'Encopresie neorganica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'F98.8', @Diag = 'Alte tulburari specificate ale tulburarilor comportamentale si emotionale cu debut de obicei in copilarie si adolescenta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'F98.9', @Diag = 'Tulburari nespecificate comportamentale si emotionale cu debut de obicei in copilarie si adolescenta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G00.1', @Diag = 'Meningita cu pneumococi';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G00.3', @Diag = 'Meningita cu stafilococi';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G00.9', @Diag = 'Meningita bacteriana, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G04.8', @Diag = 'Alte encefalite, mielite si encefalomielite';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G04.9', @Diag = 'Encefalita, mielita si encefalomielita, nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G06.0', @Diag = 'Abces si granulom intracranian';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G12.2', @Diag = 'Bolile neuronului motor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G12.9', @Diag = 'Atrofia musculara spinala, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G20', @Diag = 'Boala Parkinson';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G24.3', @Diag = 'Torticolis spasmodic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G24.8', @Diag = 'Alte distonii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G25.0', @Diag = 'Tremuraturi esentiale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G25.8', @Diag = 'Alte tulburari extrapiramidale si de motricitate specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G30.0', @Diag = 'Boala Alzheimer cu debut precoce';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G30.1', @Diag = 'Boala Alzheimer cu debut tardiv';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G30.8', @Diag = 'Alte forme de boala Alzheimer';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G30.9', @Diag = 'Boala Alzheimer, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G31.0', @Diag = 'Atrofia cerebrala circumscrisa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G35', @Diag = 'Scleroza multipla';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G37.2', @Diag = 'Mielinoliza centrala pontina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G37.8', @Diag = 'Alte boli demielinizante specificate ale sistemului nervos central';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G37.9', @Diag = 'Boli demielinizate ale sistemului nervos central, nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G40.00', @Diag = 'Epilepsia idiopatica legata de localizare (focala, partiala) si sindroame epileptice cu atacuri cu debut localizat, fara epilepsie intractabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G40.10', @Diag = 'Epilepsia simptomatica legata de localizare (focala, partiala) si sindroame epileptice cu atacuri partiale simple, fara epilepsie intractabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G40.20', @Diag = 'Epilepsia simptomatica legata de localizare (focala, partiala) si sindroame epileptice cu atacuri partiale complexe, fara epilepsie intractabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G40.30', @Diag = 'Epilepsia generalizata idiopatica si sindroame epileptice, fara epilepsie intractabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G40.31', @Diag = 'Epilepsia generalizata idiopatica si sindroame epileptice, cu epilepsie intractabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G40.40', @Diag = 'Alte epilepsii generalizate si sindroame epileptice, fara epilepsia intractabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G40.41', @Diag = 'Alte epilepsii generalizate si sindroame epileptice, cu epilepsia intractabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G40.50', @Diag = 'Sindroame epileptice in cazuri speciale, fara epilepsie intractabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G40.51', @Diag = 'Sindroame epileptice in cazuri speciale, cu epilepsie intractabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G40.60', @Diag = 'Atacuri de "grand mal", nespecificate (cu sau fara petit mal), fara epilepsie intractabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G40.61', @Diag = 'Atacuri de "grand mal", nespecificate (cu sau fara petit mal), cu epilepsie intractabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G40.80', @Diag = 'Alte epilepsii, fara epilepsie intractabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G40.81', @Diag = 'Alte epilepsii, cu epilepsie intractabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G40.90', @Diag = 'Epilepsia, nespecificata, fara epilepsie intractabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G41.0', @Diag = 'Stare de "grand mal" epileptic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G41.9', @Diag = 'Stare de "mal epileptic", nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G43.1', @Diag = 'Migrena cu aura [migrena clasica]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G43.2', @Diag = 'Stare de "mal migrenos"';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G43.3', @Diag = 'Migrena complicata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G44.2', @Diag = 'Cefalee de tensiune';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G45.1', @Diag = 'Sindrom carotidian (emisferic)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G45.2', @Diag = 'Atac ischemic tranzitoriu al teritoriilor arteriale precerebrale multiple si bilaterale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G45.4', @Diag = 'Amnezia globala tranzitorie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G45.9', @Diag = 'Atac ischemic cerebral tranzitoriu, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G47.30', @Diag = 'Apneea de somn, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G47.9', @Diag = 'Tulburari de somn, nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G51.0', @Diag = 'Paralizia Bell';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G51.8', @Diag = 'Alte afectiuni ale nervului facial';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G51.9', @Diag = 'Afectiune a nervului facial, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G52.7', @Diag = 'Afectiunile mai multor nervi cranieni';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G52.8', @Diag = 'Afectiunile altor nervi cranieni specificati';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G54.0', @Diag = 'Afectiunile plexului brahial';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G54.1', @Diag = 'Afectiunile plexului lombosacral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G54.2', @Diag = 'Afectiunile radiculare cervicale, neclasificate altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G54.4', @Diag = 'Afectiunile radiculare lombo-sacrale, neclasificate altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G56.0', @Diag = 'Sindromul canalului carpian';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G56.2', @Diag = 'Leziunea nervului ulnar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G56.3', @Diag = 'Leziunea nervului radial';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G56.8', @Diag = 'Alte mononeuropatii ale membrului superior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G57.3', @Diag = 'Leziunea nervului sciatic popliteu lateral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G57.4', @Diag = 'Leziunea nervului sciatic popliteu median';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G57.8', @Diag = 'Alte mononeuropatii ale membrului inferior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G60.3', @Diag = 'Neuropatia progresiva idiopatica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G61.0', @Diag = 'Sindromul Guillain-Barre';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G61.9', @Diag = 'Polineuropatia inflamatorie, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G70.0', @Diag = 'Miastenia gravis';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G71.0', @Diag = 'Distrofia musculara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G72.3', @Diag = 'Paralizii periodice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G80.00', @Diag = 'Paralizia cerebrala spastica, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G80.8', @Diag = 'Alte paralizii cerebrale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G81.0', @Diag = 'Hemiplegia flasca';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G81.1', @Diag = 'Hemiplegia spastica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G82.00', @Diag = 'Paraplegia flasca, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G82.02', @Diag = 'Paraplegia flasca, nespecificata, cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G82.04', @Diag = 'Paraplegia flasca, completa, cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G82.10', @Diag = 'Paraplegia spastica, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G82.11', @Diag = 'Paraplegia spastica, nespecificata, acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G82.16', @Diag = 'Paraplegia spastica, incompleta, cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G82.20', @Diag = 'Paraplegia, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G82.40', @Diag = 'Tetraplegia spastica, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G82.50', @Diag = 'Tetraplegia, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G83.2', @Diag = 'Monoplegia membrelor superioare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G83.4', @Diag = 'Sindromul cozii de cal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G91.0', @Diag = 'Hidrocefalia comunicanta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G91.1', @Diag = 'Hidrocefalia obstructiva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G91.3', @Diag = 'Hidrocefalia post-traumatica, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G91.8', @Diag = 'Alte hidrocefalii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G91.9', @Diag = 'Hidrocefalia, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G93.0', @Diag = 'Chist cerebral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G93.2', @Diag = 'Hipertensiune intracraniana benigna';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G93.4', @Diag = 'Encefalopatia, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G93.6', @Diag = 'Edem cerebral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G93.8', @Diag = 'Alte afectiuni specificate ale creierului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G95.1', @Diag = 'Mielopatii vasculare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G95.8', @Diag = 'Alte afectiuni specificate ale maduvei spinarii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G95.9', @Diag = 'Afectiune a maduvei spinarii, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G96.8', @Diag = 'Alte afectiuni specificate ale sistemului nervos central';	
Go	
	
Exec uspAddDiagnoseList @Code = 'G96.9', @Diag = 'Afectiune a sistemului nervos central, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H00.0', @Diag = 'Orgelet si alte inflamatii profunde ale pleoapei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H00.1', @Diag = 'Chalazion';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H02.1', @Diag = 'Ectropion al pleoapei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H05.0', @Diag = 'Inflamatii acute ale orbitei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H05.8', @Diag = 'Alte afectiuni ale orbitei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H11.0', @Diag = 'Pterigion';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H16.0', @Diag = 'Ulcer cornean';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H16.3', @Diag = 'Keratita interstitiala si profunda';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H17.0', @Diag = 'Leucom aderent';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H19.2*', @Diag = 'Keratita si kerato-conjunctivita in alte boli infectioase si parazitare clasificate altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H20.0', @Diag = 'Iridociclita acuta si subacuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H25.0', @Diag = 'Cataracta senila incipienta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H25.1', @Diag = 'Cataracta senila nucleara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H25.2', @Diag = 'Cataracta senila de tip Morgagnian';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H26.0', @Diag = 'Cataracta infantila, juvenila si presenila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H26.1', @Diag = 'Cataracta traumatica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H26.3', @Diag = 'Cataracta provocata de medicamente';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H26.4', @Diag = 'Sechele de cataracta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H26.9', @Diag = 'Cataracta, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H27.0', @Diag = 'Afakia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H34.1', @Diag = 'Ocluzia arterei retiniene centrale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H34.2', @Diag = 'Alte ocluzii ale unor artere retiniene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H35.7', @Diag = 'Dezlipirea straturilor retinei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H35.8', @Diag = 'Alte afectiuni retiniene specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H40.0', @Diag = 'Glaucomul la limita';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H40.1', @Diag = 'Glaucom primar in unghi deschis';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H40.2', @Diag = 'Glaucom primar in unghi ingust';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H40.3', @Diag = 'Glaucom secundar unui traumatism ocular';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H40.4', @Diag = 'Glaucom secundar unei inflamatii a ochiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H40.5', @Diag = 'Glaucom secundar altor afectiuni oculare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H40.8', @Diag = 'Alte glaucoame';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H40.9', @Diag = 'Glaucom, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H43.8', @Diag = 'Alte afectiuni ale corpului vitros';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H44.0', @Diag = 'Endoftalmia purulenta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H44.8', @Diag = 'Alte afectiuni ale globului ocular';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H46', @Diag = 'Nevrita optica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H47.0', @Diag = 'Afectiuni ale nervului optic, neclasificate altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H47.1', @Diag = 'Edem papilar, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H49.0', @Diag = 'Paralizia celui de-al treilea nerv [oculomotor]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H49.2', @Diag = 'Paralizia celui de-al saselea nerv [abductor]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H50.1', @Diag = 'Strabism divergent concomitent';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H50.8', @Diag = 'Alte strabisme specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H57.9', @Diag = 'Afectiuni ale ochiului si anexelor nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H59.8', @Diag = 'Alte afectiuni postprocedurale ale ochiului si anexelor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H61.8', @Diag = 'Alte afectiuni specificate ale urechii externe';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H61.9', @Diag = 'Afectiuni ale urechii externe, nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H65.9', @Diag = 'Otita medie nesupurata, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H66.0', @Diag = 'Otita medie acuta supurativa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H66.1', @Diag = 'Otita medie cronica tubo-timpanica supurata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H66.4', @Diag = 'Otita medie supurata, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H70.0', @Diag = 'Mastoidita acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H70.1', @Diag = 'Mastoidita cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H74.1', @Diag = 'Boala urechii medii adezive';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H81.0', @Diag = 'Boala Ménière';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H81.2', @Diag = 'Neuronita vestibulara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H81.3', @Diag = 'Alte vertijuri periferice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H81.4', @Diag = 'Vertijul de origine centrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H81.8', @Diag = 'Alte afectiuni ale functiei vestibulare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H81.9', @Diag = 'Afectiunea functiei vestibulare, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H90.0', @Diag = 'Surditate bilaterala de transmisie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H90.3', @Diag = 'Surditate neurosensoriala bilaterala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H90.5', @Diag = 'Surditate neurosensoriala, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H91.2', @Diag = 'Pierderea idiopatica subita a auzului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H91.3', @Diag = 'Surdo-mutitate, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'H95.1', @Diag = 'Alte afectiuni survenind dupa mastoidectomie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I10', @Diag = 'Hipertensiune esentiala (primara)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I11.0', @Diag = 'Cardiopatia hipertensiva cu insuficienta (congestiva) a inimii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I11.9', @Diag = 'Cardiopatia hipertensiva fara insuficienta (congestiva) a inimii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I12.0', @Diag = 'Nefropatia hipertensiva cu insuficienta renala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I15.1', @Diag = 'Hipertensiunea secundara altor afectiuni renale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I20.0', @Diag = 'Angina instabila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I20.1', @Diag = 'Angina pectorala cu spasm inregistrat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I21.0', @Diag = 'Infarct miocardic acut transmural al peretului anterior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I21.1', @Diag = 'Infarct miocardic acut transmural al peretului inferior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I21.2', @Diag = 'Infarct miocardic acut transmural cu alte localizari';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I21.4', @Diag = 'Infarct miocardic acut subendocardic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I21.9', @Diag = 'Infarct miocardic acut, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I23.0', @Diag = 'Hemopericard ca o complicatie curenta urmand infarctului miocardic acut';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I23.8', @Diag = 'Alte complicatii curente urmand infarctului miocardic acut';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I24.8', @Diag = 'Alte forme de cardiopatie ischemica acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I25.2', @Diag = 'Infarct miocardic vechi';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I25.3', @Diag = 'Anevrismul inimii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I25.4', @Diag = 'Anevrismul arterei coronare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I26.0', @Diag = 'Embolia vaselor pulmonare cu mentiunea cordului pulmonar acut';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I26.9', @Diag = 'Embolia vaselor pulmonare fara mentiunea cordului pulmonar acut';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I27.0', @Diag = 'Hipertensiunea pulmonara primara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I27.2', @Diag = 'Alte hipertensiuni pulmonare secundare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I27.8', @Diag = 'Alte cardiopatii pulmonare specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I27.9', @Diag = 'Cardiopatia pulmonara, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I30.0', @Diag = 'Pericardita idiopatica acuta nespecifica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I30.1', @Diag = 'Pericardita infectioasa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I30.8', @Diag = 'Alte forme de pericardita acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I30.9', @Diag = 'Pericardita acuta, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I31.3', @Diag = 'Efuziune pericardica (neinflamatorie)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I31.8', @Diag = 'Alte boli specificate ale pericardului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I33.0', @Diag = 'Endocardita acuta si subacuta infectioasa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I34.1', @Diag = 'Prolapsul (valva) mitral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I37.1', @Diag = 'Insuficienta valvei pulmonare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I38', @Diag = 'Endocardita, valva nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I40.0', @Diag = 'Miocardita infectioasa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I40.8', @Diag = 'Alte miocardite acute';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I40.9', @Diag = 'Miocardita acuta, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I42.0', @Diag = 'Cardiomiopatia cu dilatatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I42.1', @Diag = 'Cardiomiopatia hipertrofica obstructiva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I42.2', @Diag = 'Alte cardiomiopatii hipertrofice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I42.5', @Diag = 'Alte cardiomiopatii restrictive';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I42.8', @Diag = 'Alte  cardiomiopatii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I44.1', @Diag = 'Bloc atrio-ventricular, gradul doi';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I44.2', @Diag = 'Bloc atrio-ventricular complet';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I45.0', @Diag = 'Bloc fascicular drept';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I45.6', @Diag = 'Sindrom de pre-excitatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I46.0', @Diag = 'Stop cardiac cu resuscitare reusita';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I46.9', @Diag = 'Stop cardiac, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I47.1', @Diag = 'Tahicardia supraventriculara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I47.2', @Diag = 'Tahicardia ventriculara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I47.9', @Diag = 'Tahicardia paroxistica, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I48', @Diag = 'Fibrilatia atriala si flutter';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I49.0', @Diag = 'Fibrilatia ventriculara si flutter';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I49.3', @Diag = 'Depolarizare ventriculara prematura';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I49.4', @Diag = 'Alte depolarizari premature si nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I49.5', @Diag = 'Sindromul de boala sinusala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I49.8', @Diag = 'Alte aritmii cardiace specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I50.0', @Diag = 'Insuficienta cardiaca congestiva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I50.1', @Diag = 'Insuficienta ventriculara stanga';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I50.9', @Diag = 'Insuficienta cardiaca, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I60.0', @Diag = 'Hemoragia subarahnoida de la sifonul si bifurcatia carotidei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I60.1', @Diag = 'Hemoragia subarahnoida de la artera cerebrala medie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I60.2', @Diag = 'Hemoragia subarahnoida de la artera comunicanta anterioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I60.3', @Diag = 'Hemoragia subarahnoida de la artera comunicanta posterioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I60.6', @Diag = 'Hemoragia subarahnoida de la alte artere intracraniene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I60.7', @Diag = 'Hemoragia subarahnoida de la artere intracraniene, nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I60.8', @Diag = 'Alte hemoragii subarahnoide';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I60.9', @Diag = 'Hemoragia subarahnoida, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I61.0', @Diag = 'Hemoragia intracerebrala in emisfere, subcorticala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I61.1', @Diag = 'Hemoragia intracerebrala in emisfere, corticala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I61.2', @Diag = 'Hemoragia intracerebrala in emisfere, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I61.3', @Diag = 'Hemoragia intracerebrala in trunchiul cerebral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I61.4', @Diag = 'Hemoragia intracerebrala in cerebel';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I61.5', @Diag = 'Hemoragia intracerebrala, intraventriculara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I61.6', @Diag = 'Hemoragia intracerebrala cu localizare multipla';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I61.8', @Diag = 'Alte hemoragii intracerebrale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I61.9', @Diag = 'Hemoragia intracerebrala, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I62.0', @Diag = 'Hemoragia subdurala (acuta) (netraumatica)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I62.9', @Diag = 'Hemoragia intacraniana (netraumatica), nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I63.1', @Diag = 'Infarctul cerebral datorita emboliei arterelor precerebrale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I63.2', @Diag = 'Infarctul cerebral datorita ocluziei sau stenozei nespecificate ale arterelor precerebrale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I63.3', @Diag = 'Infarctul cerebral datorita trombozei arterelor cerebrale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I63.4', @Diag = 'Infarctul cerebral datorira emboliei arterelor cerebrale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I63.5', @Diag = 'Infarctul cerebral datorita ocluziei sau stenozei nespecificate ale arterelor cerebrale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I63.6', @Diag = 'Infarctul cerebral datorita trombozei venelor cerebrale, nonpiogenic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I63.8', @Diag = 'Alte infarcte cerebrale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I63.9', @Diag = 'Infarctul cerebral, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I65.0', @Diag = 'Ocluzia si stenoza arterei vertebrale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I65.2', @Diag = 'Ocluzia si stenoza arterei carotide';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I65.8', @Diag = 'Ocluzia si stenoza altor artere precerebrale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I66.0', @Diag = 'Ocluzia si stenoza arterei cerebrale medii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I67.1', @Diag = 'Anevrism cerebral, fara ruptura';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I67.4', @Diag = 'Encefalopatia hipertensiva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I67.6', @Diag = 'Tromboza in sistemul venos intracranian nonpiogenica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I70.21', @Diag = 'Ateroscleroza arterelor extremitatilor cu claudicatie intermitenta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I70.22', @Diag = 'Ateroscleroza arterelor extremitatilor cu durere la repaos';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I70.23', @Diag = 'Ateroscleroza arterelor extremitatilor cu ulceratie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I70.24', @Diag = 'Ateroscleroza arterelor extremitatilor cu gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I70.8', @Diag = 'Ateroscleroza altor artere';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I71.00', @Diag = 'Disectia aortei, localizare nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I71.01', @Diag = 'Disectia aortei toracice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I71.2', @Diag = 'Anevrismul toracic, fara mentiunea rupturii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I71.3', @Diag = 'Anevrismul abdominal, cu ruptura';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I71.4', @Diag = 'Anevrismul abdominal, fara mentiunea rupturii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I71.8', @Diag = 'Anevrismul aortic cu localizare nespecificata, cu ruptura';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I72.0', @Diag = 'Anevrismul arterei carodite';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I72.1', @Diag = 'Anevrismul arterei extremitatilor superioare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I72.4', @Diag = 'Anevrismul arterei extremitatilor inferioare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I72.8', @Diag = 'Anevrismul altor artere specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I73.0', @Diag = 'Sindromul Raynaud';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I73.1', @Diag = 'Trombangeita obliteranta [Buerger]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I74.0', @Diag = 'Embolia si tromboza aortei abdominale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I74.1', @Diag = 'Embolia si tromboza altor parti ale aortei si nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I74.2', @Diag = 'Embolia si tromboza arterelor extremitatilor superioare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I74.3', @Diag = 'Embolia si tromboza arterelor extremitatilor inferioare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I74.5', @Diag = 'Embolia si tromboza arterei iliace';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I74.8', @Diag = 'Embolia si tromboza altor artere';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I74.9', @Diag = 'Embolia si tromboza unor artere nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I77.8', @Diag = 'Alte afectiuni specificate ale arterelor si arteriolelor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I78.0', @Diag = 'Teleangiectazia hemoragica ereditara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I80.0', @Diag = 'Flebita si tromboflebita vaselor superficiale ale extremitatilor inferioare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I80.1', @Diag = 'Flebita si tromboflebita venei femurale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I80.2', @Diag = 'Flebita si tromboflebita altor vase profunde ale extremitatilor inferioare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I80.3', @Diag = 'Flebita si tromboflebita extremitatilor inferioare, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I80.8', @Diag = 'Flebita si tromboflebita cu alte localizari';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I80.9', @Diag = 'Flebita si tromboflebita cu localizare nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I81', @Diag = 'Tromboza venei porte';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I82.3', @Diag = 'Embolia si tromboza venei renale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I82.8', @Diag = 'Embolia si tromboza altor vene specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I83.0', @Diag = 'Vene varicoase cu ulceratie ale extremitatilor inferioare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I83.1', @Diag = 'Vene varicoase cu inflamatie ale extremitatilor inferioare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I83.2', @Diag = 'Vene varicoase ale extremitatilor inferioare cu ulceratie si inflamatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I84.0', @Diag = 'Hemoroizi interni trombozati';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I84.1', @Diag = 'Hemoroizi interni cu alte complicatii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I84.3', @Diag = 'Hemoroizi externi trombozati';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I84.4', @Diag = 'Hemoroizi externi cu alte complicatii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I84.7', @Diag = 'Hemoroizi trombozati, nespecificati';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I86.1', @Diag = 'Varice scrotale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I87.0', @Diag = 'Sindromul postflebitic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I87.8', @Diag = 'Alte afectiuni specificate  ale venelor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I88.0', @Diag = 'Limfadenita mezentrica nespecifica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I88.9', @Diag = 'Limfadenita nespecifica, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I95.0', @Diag = 'Hipotensiunea idiopatica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'I95.8', @Diag = 'Alte hipotensiuni';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J01.0', @Diag = 'Sinuzita maxilara acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J01.1', @Diag = 'Sinuzita frontala acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J01.2', @Diag = 'Sinuzita etmoidala acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J01.9', @Diag = 'Sinuzita acuta, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J02.0', @Diag = 'Faringita streptococica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J03.0', @Diag = 'Amigdalita streptococica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J04.0', @Diag = 'Laringita acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J04.2', @Diag = 'Laringo-traheita acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J06.0', @Diag = 'Laringo-faringita acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J13', @Diag = 'Pneumonia datorita Streptococcus pneumoniae';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J15.9', @Diag = 'Pneumonia bacteriena, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J18.0', @Diag = 'Bronhopneumonie, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J18.2', @Diag = 'Pneumonia hipostatica, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J20.8', @Diag = 'Bronsita acuta datorita altor microorganisme specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J21.0', @Diag = 'Bronsiolita acuta datorita virusului respirator sincitial';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J21.9', @Diag = 'Bronsiolita acuta, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J32.1', @Diag = 'Sinuzita frontala cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J33.0', @Diag = 'Polipul foselor nazale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J33.8', @Diag = 'Alti polipi ai sinusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J34.1', @Diag = 'Chist si mucocel al nasului si sinusului nazal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J35.0', @Diag = 'Amigdalita cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J35.1', @Diag = 'Hipertrofia amigdalelor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J35.3', @Diag = 'Hipertrofia amigdalelor cu hipertrofia adenoizilor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J35.8', @Diag = 'Alte boli cronice ale amigdalelor si adenoizilor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J36', @Diag = 'Angina flegmonoasa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J38.02', @Diag = 'Paralizia corzilor vocale si a laringelui, unilaterala, complexa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J38.7', @Diag = 'Alte boli ale laringelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J39.8', @Diag = 'Alte boli ale cailor respiratorii superioare specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J40', @Diag = 'Bronsita, nespecificata ca acuta sau cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J41.8', @Diag = 'Bronsita cronica mixta simpla si mucopurulenta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J46', @Diag = 'Stare de "mal" astmatic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J62.8', @Diag = 'Pneumoconioza datorita altor pulberi de siliciu';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J63.8', @Diag = 'Pneumoconioza datorita altor pulberi neorganice specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J68.0', @Diag = 'Bronsita si pneumopatia datorita substantelor chimice, emanatiilor de gaze, fumuri si vapori';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J68.4', @Diag = 'Afectiuni respiratorii cronice datorita substantelor chimice, emanatiilor de gaze, fumuri si vapori';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J69.0', @Diag = 'Pneumopatia datorita inhalatiei de alimente si vomismente';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J69.8', @Diag = 'Pneumopatii datorite inhalatiei altor substante solide si lichide';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J81', @Diag = 'Edem pulmonar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J84.0', @Diag = 'Pneumopatii alveolare si parietoalveolare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J85.0', @Diag = 'Gangrena si necroza pulmonara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J85.1', @Diag = 'Abcesul pulmonar cu pneumopatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J85.2', @Diag = 'Abcesul pulmonar fara pneumopatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J86.0', @Diag = 'Piotorax cu fistula';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J86.9', @Diag = 'Piotorax fara fistula';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J93.0', @Diag = 'Pneumotorax spontan cu presiune pozitiva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J93.1', @Diag = 'Alte forme de pneumotorax spontan';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J93.8', @Diag = 'Alte forme de pneumotorax';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J94.2', @Diag = 'Hemotorax';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J95.1', @Diag = 'Insuficienta pulmonara acuta urmand unei interventii chirurgicale toracice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J96.0', @Diag = 'Insuficienta respiratorie acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J96.1', @Diag = 'Insuficienta respiratorie cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J96.9', @Diag = 'Insuficienta respiratorie, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'J98.1', @Diag = 'Colaps pulmonar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K02.8', @Diag = 'Alte carii dentare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K07.6', @Diag = 'Afectiunea articulatiei temporo-mandibulare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K08.88', @Diag = 'Alte afectiuni specificate ale dintilor si paradontiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K09.8', @Diag = 'Alte chisturi ale regiunii bucale, neclasificate altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K10.0', @Diag = 'Boli legate de dezvoltarea maxilarelor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K11.1', @Diag = 'Hipertrofia gladelor salivare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K11.5', @Diag = 'Sialolitiaza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K11.6', @Diag = 'Mucocelul glandelor salivare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K12.1', @Diag = 'Alte forme de stomatite';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K13.0', @Diag = 'Bolile buzelor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K22.0', @Diag = 'Acalazia cardiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K22.1', @Diag = 'Ulcerul esofagului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K22.2', @Diag = 'Obstructia esofagului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K22.6', @Diag = 'Sindrom de dilacerare hemoragica gastro-esofagiana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K22.8', @Diag = 'Alte boli specificate ale esofagului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K25.0', @Diag = 'Ulcerul gastric, acut cu hemoragie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K25.1', @Diag = 'Ulcerul gastric, acut cu perforatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K25.2', @Diag = 'Ulcerul gastric, acut atat cu hemoragie cat si cu perforatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K25.4', @Diag = 'Ulcerul gastric, cronic sau nespecificat cu hemoragie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K25.7', @Diag = 'Ulcerul gastric, cronic fara hemoragie sau perforatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K26.0', @Diag = 'Ulcerul duodenal, acut cu hemoragie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K26.1', @Diag = 'Ulcerul duodenal, acut cu perforatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K26.2', @Diag = 'Ulcerul duodenal, acut atat cu hemoragie cat si cu perforatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K26.4', @Diag = 'Ulcerul duodenal, cronic sau nespecificat cu hemoragie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K26.5', @Diag = 'Ulcerul duodenal, cronic sau nespecificat cu perforatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K27.0', @Diag = 'Ulcerul peptic, acut cu hemoragie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K29.0', @Diag = 'Gastrita hemoragica acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K29.2', @Diag = 'Gastrita alcoolica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K31.1', @Diag = 'Stenoza pilorica hipertrofica a adultului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K31.2', @Diag = 'Stomac in clepsidra si stenoza stomacului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K31.5', @Diag = 'Obstructia duodenului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K31.6', @Diag = 'Fistula stomacului si duodenului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K31.7', @Diag = 'Polip al stomacului si duodenului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K31.81', @Diag = 'Angiodisplazia stomacului si duodenului fara mentionarea hemoragiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K31.88', @Diag = 'Alte boli specificate ale stomacului si duodenului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K35.0', @Diag = 'Apendicita acuta cu peritonita generalizata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K35.1', @Diag = 'Apendicita acuta cu abces peritoneal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K35.9', @Diag = 'Apendicita acuta, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K36', @Diag = 'Alte forme de apendicita';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K38.8', @Diag = 'Alte boli specificate ale apendicelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K40.00', @Diag = 'Hernia inghinala bilaterala, cu obstructie, fara gangrena, nespecificata ca recidivanta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K40.10', @Diag = 'Hernia inghinala bilaterala, cu gangrena, nespecificata ca recidivanta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K40.20', @Diag = 'Hernia inghinala bilaterala, fara obstructie si gangrena, nespecificata ca recidivanta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K40.30', @Diag = 'Hernia inghinala unilaterala sau nespecificata, cu obstructie, fara gangrena, nespecificata ca recidivanta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K40.31', @Diag = 'Hernia inghinala unilaterala sau nespecificata, cu obstructie, fara gangrena, recidivanta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K40.40', @Diag = 'Hernia inghinala, unilaterala sau nespecificata, cu gangrena, nespecificata ca recidivanta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K40.90', @Diag = 'Hernia inghinala unilaterala sau nespecificata, fara obstructie sau gangrena, nespecificata ca recidivanta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K41.0', @Diag = 'Hernia femurala bilaterala, cu obstructie, fara gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K41.3', @Diag = 'Hernia femurala unilaterala sau nespecificata, cu obstructie, fara gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K41.4', @Diag = 'Hernia femurala unilaterala sau nespecificata, cu gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K41.9', @Diag = 'Hernia femurala unilaterala sau nespecificata, cu obstructie, fara obstructie sau gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K42.0', @Diag = 'Hernia ombilicala cu obstructie, fara gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K42.1', @Diag = 'Hernia ombilicala cu gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K42.9', @Diag = 'Hernia ombilicala fara obstructie sau gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K43.0', @Diag = 'Hernia ventrala cu obstructie, fara gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K43.1', @Diag = 'Hernia ventrala, cu gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K43.9', @Diag = 'Hernia ventrala fara ocluzie sau gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K44.0', @Diag = 'Hernia diafragmatica cu obstructie, fara gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K45.0', @Diag = 'Alte hernii abdominale specificate cu obstructie, fara gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K45.1', @Diag = 'Alte hernii abdominale specificate cu gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K45.8', @Diag = 'Alte hernii abdominale specificate fara obstructie sau gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K46.9', @Diag = 'Hernia abdominala nespecificata fara obstructie sau gangrena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K50.9', @Diag = 'Boala Crohn, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K51.0', @Diag = 'Enterocolita (cronica) ulceroasa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K51.3', @Diag = 'Rectosigmoidita (cronica) ulceroasa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K51.4', @Diag = 'Pseudopolipoza colonului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K51.8', @Diag = 'Alte colite ulcerative';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K51.9', @Diag = 'Colita ulcerativa, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K52.0', @Diag = 'Gastroenterite si colite datorite iradierii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K52.1', @Diag = 'Gastroenterite si colite toxice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K52.8', @Diag = 'Alte gastroenterite si colite neinfectioase specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K55.0', @Diag = 'Tulburari vasculare acute ale intestinului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K55.1', @Diag = 'Tulburari vasculare cronice ale intestinului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K55.22', @Diag = 'Angiodisplazia colonului cu hemoragie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K55.8', @Diag = 'Alte tulburari vasculare ale intestinului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K56.0', @Diag = 'Ileus paralitic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K56.1', @Diag = 'Invaginatia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K56.2', @Diag = 'Volvulus';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K56.4', @Diag = 'Alte obstructii ale intestinului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K56.5', @Diag = 'Aderente intestinale [bride] cu obstructie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K56.6', @Diag = 'Alte obstructii intestinale si nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K56.7', @Diag = 'Ileus, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K57.10', @Diag = 'Diverticuloza intestinului subtire fara perforatie si abces si fara mentionarea hemoragiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K57.11', @Diag = 'Diverticuloza intestinului subtire fara perforatie si abces, cu hemoragie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K57.30', @Diag = 'Diverticuloza intestinului gros fara perforatie sau abces si fara mentionarea hemoragiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K57.31', @Diag = 'Diverticuloza intestinului gros fara perforatie sau abces, cu hemoragie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K57.33', @Diag = 'Diverticuloza intestinului gros fara perforatie sau abces, cu hemoragie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K57.40', @Diag = 'Diverticuloza atat a intestinului gros cat si a intestinului subtire cu perforatie si abces, fara mentionarea hemoragiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K57.50', @Diag = 'Diverticuloza atat a intestinului gros cat si a intestinului subtire fara perforatie si abces, fara mentionarea hemoragiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K57.51', @Diag = 'Diverticuloza atat a intestinului gros cat si a intestinului subtire fara perforatie si abces, cu hemoragie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K57.53', @Diag = 'Diverticulita atat a intestinului gros cat si a intestinului subtire fara perforatie si abces, cu hemoragie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K59.3', @Diag = 'Megacolon, neclasificat altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K59.9', @Diag = 'Tulburare functionala a intestinului, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K60.0', @Diag = 'Fisura anala acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K60.1', @Diag = 'Fisura anala cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K60.2', @Diag = 'Fisura anala, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K60.3', @Diag = 'Fistula anala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K60.4', @Diag = 'Fistula rectala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K60.5', @Diag = 'Fistula anorectala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K61.0', @Diag = 'Abces anal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K61.1', @Diag = 'Abces rectal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K61.2', @Diag = 'Abces anorectal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K61.3', @Diag = 'Abces ischiorectal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K62.0', @Diag = 'Polip anal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K62.1', @Diag = 'Polip rectal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K62.3', @Diag = 'Prolaps rectal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K62.4', @Diag = 'Strictura anusului si rectului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K62.5', @Diag = 'Hemoragia anusului si rectului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K62.6', @Diag = 'Ulcerul anusului si rectului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K62.8', @Diag = 'Alte boli specificate ale anusului si rectului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K63.1', @Diag = 'Perforatia intestinului (nontraumatica)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K63.2', @Diag = 'Fistula intestinului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K63.50', @Diag = 'Polip al colonului, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K63.8', @Diag = 'Alte boli specificate ale intestinului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K65.0', @Diag = 'Peritonita acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K65.8', @Diag = 'Alte peritonite';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K66.0', @Diag = 'Aderente peritoneale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K66.1', @Diag = 'Hemoperitoneu';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K66.8', @Diag = 'Alte tulburari specifice ale peritoneului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K70.0', @Diag = 'Ciroza alcoolica grasoasa a ficatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K70.3', @Diag = 'Ciroza alcoolica a ficatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K71.0', @Diag = 'Boala toxica a ficatului cu colestaza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K71.2', @Diag = 'Boala toxica a ficatului cu hepatita acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K71.3', @Diag = 'Boala toxica a ficatului cu hepatita persistenta cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K71.4', @Diag = 'Boala toxica a ficatului cu hepatita lobulara cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K71.5', @Diag = 'Boala toxica a ficatului cu hepatita activa cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K71.7', @Diag = 'Boala toxica a ficatului cu fibroza si ciroza ficatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K72.0', @Diag = 'Insuficienta hepatica acuta si subacuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K72.1', @Diag = 'Insuficienta hepatica cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K72.9', @Diag = 'Insuficienta hepatica, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K74.5', @Diag = 'Ciroza biliara, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K74.6', @Diag = 'Alta ciroza a ficatului si nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K75.0', @Diag = 'Abces al ficatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K75.1', @Diag = 'Flebita venei porte';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K75.4', @Diag = 'Hepatita autoimuna';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K75.8', @Diag = 'Alte boli inflamatorii specificate ale ficatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K76.1', @Diag = 'Congestia pasiva cronica a ficatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K76.8', @Diag = 'Alte boli specificate ale ficatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K80.00', @Diag = 'Calcul al vezicii biliare cu colecistita acuta, fara mentionarea obstructiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K80.01', @Diag = 'Calcul al vezicii biliare cu colecistita acuta, cu obstructie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K80.10', @Diag = 'Calcul al vezicii biliare cu o alta forma de colecistita, fara mentionarea obstructiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K80.11', @Diag = 'Calcul al vezicii biliare cu o alta forma de colecistita, cu obstructie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K80.20', @Diag = 'Calcul al vezicii biliare fara colecistita, fara mentionare obstructiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K80.30', @Diag = 'Calculul canalelor biliare cu angiocolita, fara mentionarea obstructiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K80.31', @Diag = 'Calculul canalelor biliare cu angiocolita, cu obstructie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K80.40', @Diag = 'Calculul canalelor biliare cu colecistita, fara mentionarea obstructiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K80.41', @Diag = 'Calculul canalelor biliare cu colecistita, cu obstructie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K80.50', @Diag = 'Calculul canalelor biliare fara angiocolita si colecistita, fara mentionarea obstructiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K80.80', @Diag = 'Alte colelitiaze, fara mentionarea obstructiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K81.0', @Diag = 'Colecistita acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K82.0', @Diag = 'Obstructia vezicii biliare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K82.1', @Diag = 'Hidrocolecist';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K82.3', @Diag = 'Fistula vezicii biliare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K83.0', @Diag = 'Angiocolita [colangita]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K83.1', @Diag = 'Obstructia cailor biliare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K83.3', @Diag = 'Fistula cailor biliare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K83.4', @Diag = 'Spasmul sfincterului Oddi';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K83.8', @Diag = 'Alte boli specifice ale cailor biliare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K85', @Diag = 'Pancreatita acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K86.3', @Diag = 'Pseudochistul pancreasului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K86.8', @Diag = 'Alte boli specificate ale pancreasului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K91.8', @Diag = 'Alte tulburari postprocedurale ale sistemului digestiv, neclasificate altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K92.0', @Diag = 'Hematemeza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K92.1', @Diag = 'Melena';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K92.2', @Diag = 'Hemoragia gastro-intestinala, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'K92.8', @Diag = 'Alte boli specificate ale sistemului digestiv';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L00', @Diag = 'Sindromul stafilococic al necrozei epidermice toxice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L01.0', @Diag = 'Impetigo [orice micro-organism] [orice localizare]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L02.0', @Diag = 'Abces cutanat, furuncul si furuncul antracoid al fetei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L02.1', @Diag = 'Abces cutanat, furuncul si furuncul antracoid al gatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L02.2', @Diag = 'Abces cutanat, furuncul si furuncul antracoid al trunchiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L02.3', @Diag = 'Abces cutanat, furuncul si furuncul antracoid al fesei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L02.4', @Diag = 'Abces cutanat, furuncul si carbuncul al membrului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L02.8', @Diag = 'Abces cutanat, furuncul si furuncul antracoid cu alte localizari';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L02.9', @Diag = 'Abces cutanat, furuncul si carbuncul, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L03.10', @Diag = 'Celulita membrului superior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L03.11', @Diag = 'Celulita membrului inferior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L03.2', @Diag = 'Celulita fetei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L03.3', @Diag = 'Celulita trunchiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L03.8', @Diag = 'Celulita cu alte localizari';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L03.9', @Diag = 'Celulita, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L04.0', @Diag = 'Limfadenita acuta a fetei, capului si gatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L04.1', @Diag = 'Limfadenita acuta a trunchiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L04.2', @Diag = 'Limfadenita acuta a membrului superior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L04.3', @Diag = 'Limfadenita acuta a membrului inferior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L04.8', @Diag = 'Limfadenita acuta cu alte localizari';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L04.9', @Diag = 'Limfadenita acuta, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L05.0', @Diag = 'Chist pilonidal cu abces';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L05.9', @Diag = 'Chist pilonidal fara abces';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L21.1', @Diag = 'Dermatita seboreica infantila';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L25.5', @Diag = 'Dermatita de contact nespecificata datorita vegetalelor, exceptand alimentele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L26', @Diag = 'Dermatita exfoliativa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L29.8', @Diag = 'Alte forme de prurit';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L51.9', @Diag = 'Eritem multiform, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L52', @Diag = 'Eritem nodos';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L55.1', @Diag = 'Arsura de soare, profunzime partiala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L55.9', @Diag = 'Arsura de soare, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L60.8', @Diag = 'Alte boli ale unghiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L72.1', @Diag = 'Chist trichodermic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L72.8', @Diag = 'Alte forme de chist folicular al pielii si tesutului celular subcutanat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L72.9', @Diag = 'Chist folicular al pielii si tesutului celular subcutanat, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L73.2', @Diag = 'Hidradenita supurata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L89', @Diag = 'Ulceratia de decubitus';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L91.0', @Diag = 'Cicatrice cheloida';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L93.1', @Diag = 'Lupus eritematos cutanat subacut';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L94.2', @Diag = 'Calcinoza cutanata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L94.3', @Diag = 'Sclerodactilia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L95.0', @Diag = 'Vasculita livida';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L95.8', @Diag = 'Alte vasculite limitate ale pielii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L98.0', @Diag = 'Granulom piogenic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'L98.6', @Diag = 'Alte afectiuni infiltrante ale pielii si tesutului celular subcutanat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M00.04', @Diag = 'Artrita si poliartrita stafilococica, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M00.08', @Diag = 'Artrita si poliartrita stafilococica, alta localizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M00.26', @Diag = 'Alte artrite si poliartrite streptococice, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M00.81', @Diag = 'Artrita si poliartrita datorita altor agenti bacterieni specificati, regiunea umarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M00.83', @Diag = 'Artrita si poliartrita datorita altor agenti bacterieni specificati, antebrat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M00.84', @Diag = 'Artrita si poliartrita datorita altor agenti bacterieni specificati, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M00.85', @Diag = 'Artrita si poliartrita datorita altor agenti bacterieni specificati, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M00.86', @Diag = 'Artrita si poliartrita datorita altor agenti bacterieni specificati, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M00.87', @Diag = 'Artrita si poliartrita datorita altor agenti bacterieni specificati, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M00.94', @Diag = 'Artrita piogenica, nespecificata, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M00.95', @Diag = 'Artrita piogenica, nespecificata, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M00.97', @Diag = 'Artrita piogenica, nespecificata, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M02.36', @Diag = 'Boala Reiter, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M02.80', @Diag = 'Alte artropatii de reactie, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M02.85', @Diag = 'Alte artropatii de reactie, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M02.86', @Diag = 'Alte artropatii de reactie, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M02.97', @Diag = 'Artropatia de reactie, nespecificata, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M05.30+', @Diag = 'Artrita reumatoida cu implicarea altor organe sau sisteme, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M05.80', @Diag = 'Alte artrite reumatoide seropozitive, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M06.00', @Diag = 'Artrita reumatoida seronegativa, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M06.40', @Diag = 'Poliatropatia inflamatorie, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M08.18', @Diag = 'Spondilita anchilozanta juvenila, alta localizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M08.95', @Diag = 'Artrita juvenila, nespecificata, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M10.06', @Diag = 'Guta idiopatica, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M10.07', @Diag = 'Guta idiopatica, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M10.36', @Diag = 'Guta datorita deficientei functiei renale, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M10.44', @Diag = 'Alte gute secundare, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M10.90', @Diag = 'Guta, nespecificata, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M10.92', @Diag = 'Guta, nespecificata, brat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M10.96', @Diag = 'Guta, nespecificata, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M12.46', @Diag = 'Hidartroza intermitenta, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M12.52', @Diag = 'Artropatia traumatica, brat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M12.55', @Diag = 'Artropatia traumatica, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M12.56', @Diag = 'Artropatia traumatica, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M12.57', @Diag = 'Artropatia traumatica, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M13.0', @Diag = 'Poliartrita, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M13.14', @Diag = 'Monoartrita, neclasificata altundeva, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M13.16', @Diag = 'Monoartrita, neclasificata altundeva, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M13.17', @Diag = 'Monoartrita, neclasificata altundeva, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M13.80', @Diag = 'Alte artrite specificate, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M13.84', @Diag = 'Alte artrite specificate, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M13.85', @Diag = 'Alte artrite specificate, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M13.86', @Diag = 'Alte artrite specificate, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M13.87', @Diag = 'Alte artrite specificate, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M13.90', @Diag = 'Artrita, nespecificata, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M13.95', @Diag = 'Artrita, nespecificata, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M13.96', @Diag = 'Artrita, nespecificata, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M13.98', @Diag = 'Artrita, nespecificata, alta localizare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M15.1', @Diag = 'Nodozitati Heberden (cu artropatie)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M15.8', @Diag = 'Alte poliartroze';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M16.6', @Diag = 'Alte coxartroze secundare, bilaterale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M16.7', @Diag = 'Alte coxartroze secundare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M16.9', @Diag = 'Coxartroza, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M17.2', @Diag = 'Gonartroza post-traumatica bilaterala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M17.3', @Diag = 'Alte gonartroze post-traumatice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M17.5', @Diag = 'Alte gonartroze secundare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M19.01', @Diag = 'Artroza primara a altor articulatii, regiunea umarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M19.04', @Diag = 'Artroza primara a altor articulatii, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M19.07', @Diag = 'Artroza primara a altor articulatii, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M19.17', @Diag = 'Artroza posttraumatica a altor articulatii, gleyna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M20.1', @Diag = 'Hallux valgus (dobandit)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M20.2', @Diag = 'Hallux rigidus';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M20.4', @Diag = 'Alte deformatii sub forma de ciocan ale degetului(lor) de la picior (dobandite)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M21.16', @Diag = 'Deformatia in varus, neclasificata altundeva, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M21.17', @Diag = 'Deformatia in varus, neclasificata altundeva, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M21.24', @Diag = 'Deformatia in flexiune, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M21.4', @Diag = 'Picior plat [pes planus] (dobandit)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M21.87', @Diag = 'Alte deformatii dobandite specificate ale membrelor, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M22.0', @Diag = 'Luxatia recidivanta a rotulei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M22.8', @Diag = 'Alte afectiuni ale rotulei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M23.26', @Diag = 'Leziunea meniscului datorita unei rupturi sau leziuni vechi, alt menisc lateral si nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M23.50', @Diag = 'Instabilitate cronica a genunchiului, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M23.56', @Diag = 'Instabilitate cronica a genunchiului, alt menisc lateral si nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M24.32', @Diag = 'Luxatia si subluxatia patologica a unei articulatii, neclasificata altundeva, brat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M24.45', @Diag = 'Luxatia si subluxatia articulara recurenta, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M24.50', @Diag = 'Contractura articulatiei, localizare multipla';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M24.52', @Diag = 'Contractura articulatiei, brat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M24.55', @Diag = 'Contractura articulatiei, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M24.56', @Diag = 'Contractura articulatiei, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M24.65', @Diag = 'Anchiloza articulatiei, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M25.05', @Diag = 'Hemartroza, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M25.06', @Diag = 'Hemartroza, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M25.07', @Diag = 'Hemartroza, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M25.08', @Diag = 'Hemartroza, altele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M25.46', @Diag = 'Epansament articular, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M25.58', @Diag = 'Durere in articulatie, altele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M25.65', @Diag = 'Rigiditate articulara, neclasificata altundeva, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M25.68', @Diag = 'Rigiditate articulara, neclasificata altundeva, altele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M30.1', @Diag = 'Poliarterita cu atingere pulmonara [Churg-Strauss]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M31.3', @Diag = 'Granulomatoza Wegener';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M32.0', @Diag = 'Lupus eritematos sistemic datorit medicamentelor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M32.1+', @Diag = 'Lupus eritematos sistemic cu atingerea unor organe sau sisteme';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M32.8', @Diag = 'Alte forme de lupus sistemic eritematos';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M33.2', @Diag = 'Polimiozita';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M34.0', @Diag = 'Scleroza sistemica progresiva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M35.0', @Diag = 'Sindrom Sicca [Sjogren]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M35.1', @Diag = 'Alte sindroame mixte';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M35.2', @Diag = 'Boala Behçet';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M35.3', @Diag = 'Polimialgia reumatismala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M40.06', @Diag = 'Cifoza posturala, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M40.46', @Diag = 'Alte lordoze, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M40.47', @Diag = 'Alte lordoze, regiune lombo-sacrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M41.06', @Diag = 'Scolioza idiopatica infantila, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M41.14', @Diag = 'Scolioza idiopatica juvenila, regiune toracica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M41.15', @Diag = 'Scolioza idiopatica juvenila, regiune toraco-lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M41.16', @Diag = 'Scolioza idiopatica juvenila, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M41.25', @Diag = 'Alte scolioze idiopatice, regiune toraco-lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M41.86', @Diag = 'Alte forme de scolioza, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M42.16', @Diag = 'Osteocondroza vertebrala a adultului, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M43.16', @Diag = 'Spondilolisteza, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M43.17', @Diag = 'Spondilolisteza, regiune lombo-sacrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M43.6', @Diag = 'Torticolis';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M45.00', @Diag = 'Spondilita anchilozanta, localizari multiple in coloana vertebrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M46.1', @Diag = 'Sacro-ileita, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M46.55', @Diag = 'Alte spondilopatii infectioase, regiune toraco-lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M46.80', @Diag = 'Alte spondilopatii inflamatorii specificate, localizari multiple in coloana vertebrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M46.86', @Diag = 'Alte spondilopatii inflamatorii specificate, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M46.87', @Diag = 'Alte spondilopatii inflamatorii specificate, regiune lombo-sacrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M46.88', @Diag = 'Alte spondilopatii inflamatorii specificate, regiune sacrala si sacro-coccigiana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M47.12', @Diag = 'Alte spondiloze cu mielopatie, regiune cervicala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M47.15', @Diag = 'Alte spondiloze cu mielopatie, regiune toraco-lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M47.16', @Diag = 'Alte spondiloze cu mielopatie, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M47.17', @Diag = 'Alte spondiloze cu mielopatie, regiune lombo-sacrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M47.20', @Diag = 'Alte spondiloze cu radiculopatie, localizari multiple in coloana vertebrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M47.22', @Diag = 'Alte spondiloze cu radiculopatie, regiune cervicala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M47.26', @Diag = 'Alte spondiloze cu radiculopatie, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M47.80', @Diag = 'Alte spondiloze, localizari multiple in coloana vertebrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M47.82', @Diag = 'Alte spondiloze, regiune cervicala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M47.86', @Diag = 'Alte spondiloze, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M48.06', @Diag = 'Stenoza canalului medular, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M48.10', @Diag = 'Hiperostoza anchilozanta [Forestier], localizari multiple in coloana vertebrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M48.16', @Diag = 'Hiperostoza anchilozanta [Forestier], regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M48.50', @Diag = 'Prabusire vertebrala, neclasificata altundeva, localizari multiple in coloana vertebrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M48.86', @Diag = 'Alte spondilopatii specificate, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M50.0', @Diag = 'Afectiune a discului cervical cu mielopatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M50.1', @Diag = 'Afectiune a discului cervical cu radiculopatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M50.8', @Diag = 'Alte afectiuni ale unui disc cervical';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M51.1+', @Diag = 'Tulburari ale discului lombar si ale altor discuri intervertebrale cu radiculopatie (G55.1*)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M53.86', @Diag = 'Alte dorsopatii specificate, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M54.2', @Diag = 'Cervicalgia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M54.80', @Diag = 'Alte dorsalgii, localizari multiple in coloana vertebrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M54.87', @Diag = 'Alte dorsalgii, regiune lombo-sacrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M54.89', @Diag = 'Alte dorsalgii, localizare nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M54.96', @Diag = 'Dorsalgia, nespecificata, regiune lombara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M60.00', @Diag = 'Miozita infectioasa, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M60.06', @Diag = 'Miozita infectioasa, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M60.20', @Diag = 'Granulom aparut datorita prezentei unui corp strain in tesutul conjunctiv, neclasificat altundeva, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M60.24', @Diag = 'Granulom aparut datorita prezentei unui corp strain in tesutul conjunctiv, neclasificat altundeva, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M60.28', @Diag = 'Granulom aparut datorita prezentei unui corp strain in tesutul conjunctiv, neclasificat altundeva, altele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M60.98', @Diag = 'Miozita, nespecificata, altele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M61.41', @Diag = 'Alte calcificari ale muschilor, regiunea umarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M62.16', @Diag = 'Alte rupturi musculare (netraumatice), picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M62.47', @Diag = 'Contractura musculara, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M65.15', @Diag = 'Alte (teno)sinovite infectioase, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M65.4', @Diag = 'Tenosinovita stiloida radiala [de Quervain]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M65.80', @Diag = 'Alte sinovite si tenosinovite, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M65.83', @Diag = 'Alte sinovite si tenosinovite, antebrat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M65.84', @Diag = 'Alte sinovite si tenosinovite, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M65.85', @Diag = 'Alte sinovite si tenosinovite, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M65.86', @Diag = 'Alte sinovite si tenosinovite, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M65.93', @Diag = 'Sinovita si tenosinovita, nespecificate, antebrat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M65.94', @Diag = 'Sinovita si tenosinovita, nespecificate, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M65.95', @Diag = 'Sinovita si tenosinovita, nespecificate, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M65.96', @Diag = 'Sinovita si tenosinovita, nespecificate, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M66.14', @Diag = 'Ruptura sinoviei, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M67.35', @Diag = 'Sinovita tranzitorie, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M67.86', @Diag = 'Alte afectiuni specificate ale sinoviei si tendonului, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M70.1', @Diag = 'Bursita mainii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M70.3', @Diag = 'Alte bursite ale cotului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M70.4', @Diag = 'Bursite prepatelare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M70.5', @Diag = 'Alte bursite ale genunchiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M70.6', @Diag = 'Bursite trohanteriene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M70.8', @Diag = 'Alte afectiuni ale tesuturilor moi legate de folosire, solicitare excesiva si presiune';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M70.9', @Diag = 'Afectiuni nespecificate ale tesuturilor moi legate de folosire, solicitare excesiva si presiune';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M71.04', @Diag = 'Abcesul bursei, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M71.07', @Diag = 'Abcesul bursei, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M71.2', @Diag = 'Chist sinovial al spatiului popliteu [Baker]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M71.33', @Diag = 'Alte chisturi ale bursei, antebrat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M71.36', @Diag = 'Alte chisturi ale bursei, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M71.37', @Diag = 'Alte chisturi ale bursei, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M71.55', @Diag = 'Alte bursite, neclasificate altundeva, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M71.87', @Diag = 'Alta bursopatie specificata, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M71.94', @Diag = 'Bursopatia, nespecificata, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M71.97', @Diag = 'Bursopatia, nespecificata, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M72.46', @Diag = 'Fibromatoza pseudosarcomatoasa, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M72.63', @Diag = 'Fasciita necrozanta, antebrat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M75.0', @Diag = 'Capsulita rectractila a umarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M75.1', @Diag = 'Sindromul tecii rotatorului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M75.3', @Diag = 'Tendinita calcificanta a umarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M75.5', @Diag = 'Bursita umarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M76.4', @Diag = 'Bursita tibiala colaterala [Pellegrini-Stieda]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M76.7', @Diag = 'Tendinita peroniera';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M77.3', @Diag = 'Exostoza calcaneana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M79.00', @Diag = 'Reumatism, nespecificat, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M79.10', @Diag = 'Mialgia, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M79.15', @Diag = 'Mialgia, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M79.28', @Diag = 'Nevralgia si nevrita, nespecificate, altele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M79.58', @Diag = 'Corp strain rezidual in tesutul moale, altele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M79.67', @Diag = 'Durere la nivelul unui membru, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M79.88', @Diag = 'Alte afectiuni specificate ale tesuturilor moi, altele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M80.00', @Diag = 'Osteoporoza postmenopauza cu fractura patologica, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M80.20', @Diag = 'Osteoporoza de inactivitate cu fractura patologica, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M80.50', @Diag = 'Osteoporoza idiopatica cu fractura patologica, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M83.80', @Diag = 'Alte osteomalacii ale adultului, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.00', @Diag = 'Fractura rau consolidata, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.03', @Diag = 'Fractura rau consolidata, antebrat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.04', @Diag = 'Fractura rau consolidata, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.06', @Diag = 'Fractura rau consolidata, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.07', @Diag = 'Fractura rau consolidata, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.09', @Diag = 'Fractura rau consolidata, localizare nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.11', @Diag = 'Fractura neconsolodata [pseudartroza], regiunea umarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.14', @Diag = 'Fractura neconsolodata [pseudartroza], mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.15', @Diag = 'Fractura neconsolodata [pseudartroza], regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.16', @Diag = 'Fractura neconsolodata [pseudartroza], picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.17', @Diag = 'Fractura neconsolodata [pseudartroza], glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.25', @Diag = 'Intarziere in consolidarea unei fracturi, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.26', @Diag = 'Intarziere in consolidarea unei fracturi, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.27', @Diag = 'Intarziere in consolidarea unei fracturi, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.41', @Diag = 'Fractura patologica, neclasificata altundeva, regiunea umarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.42', @Diag = 'Fractura patologica, neclasificata altundeva, brat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.43', @Diag = 'Fractura patologica, neclasificata altundeva, antebrat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.45', @Diag = 'Fractura patologica, neclasificata altundeva, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M84.48', @Diag = 'Fractura patologica, neclasificata altundeva, altele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M85.34', @Diag = 'Osteita condensata, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M85.35', @Diag = 'Osteita condensata, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M85.37', @Diag = 'Osteita condensata, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M85.38', @Diag = 'Osteita condensata, altele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M85.44', @Diag = 'Chist osos solitar, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M85.64', @Diag = 'Alte chisturi osoase, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M86.05', @Diag = 'Osteomielita hematogena acuta, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M86.07', @Diag = 'Osteomielita hematogena acuta, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M86.16', @Diag = 'Alte osteomielite acute, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M86.24', @Diag = 'Osteomielita aubacuta, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M86.28', @Diag = 'Osteomielita aubacuta, altele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M86.61', @Diag = 'Alte osteomielite cronice, regiunea umarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M86.65', @Diag = 'Alte osteomielite cronice, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M86.88', @Diag = 'Alte osteomielite, altele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M86.90', @Diag = 'Osteomielita, nespecificata, localizari multiple';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M86.96', @Diag = 'Osteomielita, nespecificata, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M86.97', @Diag = 'Osteomielita, nespecificata, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M87.05', @Diag = 'Necroza aseptica idiopatica a osului, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M87.07', @Diag = 'Necroza aseptica idiopatica a osului, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M87.25', @Diag = 'Osteonecroza datorita unui traumatism anterior, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M87.84', @Diag = 'Alte osteonecroze, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M87.85', @Diag = 'Alte osteonecroze, regiune pelviana si coapsa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M88.9', @Diag = 'Boala Paget a unui os, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M89.04', @Diag = 'Algoneurodistrofia, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M89.06', @Diag = 'Algoneurodistrofia, picior parte inferioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M89.37', @Diag = 'Hipertrofia oaselor, glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M91.1', @Diag = 'Osteocondroza juvenila a capului femural [Legg-Calve-Perthes]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M92.5', @Diag = 'Osteocondroza juvenila a tibiei si peroneului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M93.0', @Diag = 'Epifiza femurala superioara alunecata (nontraumatica)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M93.2', @Diag = 'Osteocondrita disecanta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M93.8', @Diag = 'Alte osteocondropatii specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'M96.6', @Diag = 'Fractura osoasa dupa insertia unui implant ortopedic, a unei prosteze articulare sau a unei placi osoase';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N00.8', @Diag = 'Sindrom nefritic acut, altul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N00.9', @Diag = 'Sindrom nefritic acut, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N02.0', @Diag = 'Hematuria persistenta si recurenta, anomalie glomerulara minora';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N02.9', @Diag = 'Hematuria persistenta si recurenta, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N03.2', @Diag = 'Sindrom nefritic cronic, glomerulonefrita membranoasa difuza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N03.9', @Diag = 'Sindrom nefritic cronic, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N04.9', @Diag = 'Sindrol nefrotic, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N05.5', @Diag = 'Sindrom nefritic nespecificat, glomerulonefrita mesangio-capilara difuza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N05.8', @Diag = 'Sindrom nefritic nespecificat, altul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N10', @Diag = 'Nefrita tubulo-interstitiala acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N11.0', @Diag = 'Pielonefrita neobstructiva cronica asociata cu un reflux';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N11.1', @Diag = 'Pielonefrita obstructiva cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N11.8', @Diag = 'Alta nefrita tubulo-interstitiala cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N11.9', @Diag = 'Nefrita tubulo-interstitiala cronica, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N13.0', @Diag = 'Hidronefroza cu obstructia jonctiunii pelviene-ureterale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N13.1', @Diag = 'Hidronefroza cu strictura ureterala, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N13.2', @Diag = 'Hidronefroza cu obstructie calculoasa renala si ureterala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N13.4', @Diag = 'Hidro-ureter';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N13.5', @Diag = 'Cudura si strictura ureterala fara hidronefroza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N13.6', @Diag = 'Pionefroza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N14.1', @Diag = 'Nefropatia cauzata de alte droguri, medicamente si substante biologice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N15.1', @Diag = 'Abces renal si perirenal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N17.0', @Diag = 'Insuficienta renala acuta cu necroza tubulara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N17.8', @Diag = 'Alta insuficienta renala acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N17.9', @Diag = 'Insuficienta renala acuta, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N18.0', @Diag = 'Boala renala in stadiul final';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N18.8', @Diag = 'Alta insuficienta renala cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N18.90', @Diag = 'Insuficienta renala cronica nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N19', @Diag = 'Insuficienta renala nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N20.0', @Diag = 'Calculii rinichiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N20.1', @Diag = 'Litiaza ureterului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N20.2', @Diag = 'Litiaza rinichiului cu litiaza ureterului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N20.9', @Diag = 'Litiaza urinara, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N21.0', @Diag = 'Litiaza vezicala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N21.1', @Diag = 'Calcul in uretra';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N23', @Diag = 'Colica nefritica nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N26', @Diag = 'Rinichi scleros nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N27.0', @Diag = 'Rinichi mic, unilateral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N28.1', @Diag = 'Chistul rinichiului, dobandit';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N28.8', @Diag = 'Alte tulburari specificate ale rinichiului si ureterului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N30.1', @Diag = 'Cistita interstitiala (cronica)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N30.2', @Diag = 'Alta cistita cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N30.3', @Diag = 'Trigonita';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N30.4', @Diag = 'Cistita datorita iradierii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N30.8', @Diag = 'Alta cistita';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N31.1', @Diag = 'Vezica urinara neuropatica reflexa, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N31.2', @Diag = 'Vezica urinara neuropatica flasca, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N31.8', @Diag = 'Alte disfunctii neuro-musculare ale vezicii urinare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N31.9', @Diag = 'Disfunctiunea neuro-musculara a vezicii urinare, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N32.0', @Diag = 'Obstructia colului vezicii urinare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N32.1', @Diag = 'Fistula vezico-intestinala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N32.2', @Diag = 'Fistula vezicala urinara, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N34.0', @Diag = 'Abces uretral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N34.2', @Diag = 'Alte uretrite';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N35.0', @Diag = 'Strictura uretrala, post-traumatica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N35.1', @Diag = 'Strictura uretrala post-infectioasa, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N35.8', @Diag = 'Alta strictura uretrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N35.9', @Diag = 'Strictura uretrala, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N36.0', @Diag = 'Fistula uretrala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N39.4', @Diag = 'Alte forme specificate de incontinenta urinara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N40', @Diag = 'Hiperplazia prostatei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N41.0', @Diag = 'Prostatita acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N41.1', @Diag = 'Prostatita cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N41.2', @Diag = 'Abcesul prostatei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N41.3', @Diag = 'Prostato-cistita';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N41.8', @Diag = 'Alte boli inflamatorii ale prostatei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N42.0', @Diag = 'Calculul prostatei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N43.0', @Diag = 'Hidrocel inchistat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N43.1', @Diag = 'Hidrocel infectat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N43.2', @Diag = 'Alt hidrocel';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N43.3', @Diag = 'Hidrocel, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N43.4', @Diag = 'Spermatocel';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N44', @Diag = 'Torsiunea testiculului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N45.0', @Diag = 'Orhita, epididimita si epididimo-orhita cu abces';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N45.9', @Diag = 'Orhita, epididimita si epididimo-orhita fara abces';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N48.1', @Diag = 'Balanopostita';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N48.2', @Diag = 'Alte tulburari inflamatorii ale penisului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N48.8', @Diag = 'Alte afectiuni specificate ale penisului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N49.0', @Diag = 'Afectiunile inflamatorii ale veziculelor seminale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N49.2', @Diag = 'Afectiuni inflamatorii ale scrotului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N49.8', @Diag = 'Afectiuni inflamatorii ale altor organe genitale masculine specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N49.9', @Diag = 'Afectiune inflamatorie a organelor genitale masculine nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N50.0', @Diag = 'Atrofia testiculului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N50.8', @Diag = 'Alte afectiuni specificate ale organelor genitale masculine';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N60.1', @Diag = 'Mastopatia chistica difuza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N70.0', @Diag = 'Salpingita si ooforita acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N70.1', @Diag = 'Salpingita si ooforita cronica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N71.0', @Diag = 'Boala inflamatorie acuta a uterului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N71.1', @Diag = 'Boala inflamatorie cronica a uterului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N71.9', @Diag = 'Boala inflamatorie a uterului, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N72', @Diag = 'Boala inflamatorie a colului uterin';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N73.0', @Diag = 'Parametrita si celulita pelviana acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N73.3', @Diag = 'Pelvi-peritonita acuta la femeie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N73.4', @Diag = 'Pelvi-peritonita cronica la femeie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N73.5', @Diag = 'Pelvi-peritonita la femeie, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N73.6', @Diag = 'Aderente peritoneale pelviene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N73.8', @Diag = 'Alte boli inflamatorii pelviene specificate feminine';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N75.0', @Diag = 'Chistul glandei Bartholin';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N76.4', @Diag = 'Abces al vulvei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N76.5', @Diag = 'Ulceratie a vaginului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N80.0', @Diag = 'Endometrioza uterului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N80.8', @Diag = 'Alte endometrioze';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N81.0', @Diag = 'Uretrocel la femeie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N81.1', @Diag = 'Cistocel';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N81.2', @Diag = 'Prolaps utero-vaginal incomplet';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N81.3', @Diag = 'Prolaps utero-vaginal complet';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N81.6', @Diag = 'Rectocel';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N81.8', @Diag = 'Alt prolaps genital la femeie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N82.3', @Diag = 'Fistula vaginului cu intestinul gros';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N83.0', @Diag = 'Chist folicular al ovarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N83.1', @Diag = 'Chist al corpului galben';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N83.2', @Diag = 'Alte chisturi ale ovarului si nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N83.5', @Diag = 'Torsiunea ovarului, pediculului ovarian si a trompei Fallope';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N84.0', @Diag = 'Polip al corpului uterin';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N84.1', @Diag = 'Polip al colului uterin';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N84.2', @Diag = 'Polip al vaginului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N85.1', @Diag = 'Hiperplazia adenomatoasa a endometrului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N85.5', @Diag = 'Inversia uterina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N85.6', @Diag = 'Sinechia intrauterina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N85.7', @Diag = 'Hematometria';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N87.0', @Diag = 'Displazia usoara a colului uterin';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N87.1', @Diag = 'Displazia moderata a colului uterin';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N87.2', @Diag = 'Displazia severa a colului uterin, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N87.9', @Diag = 'Displazia colului uterin, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N89.1', @Diag = 'Displazia moderata a vaginului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N90.1', @Diag = 'Displazia moderata a vulvei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N90.2', @Diag = 'Displazia severa a vulvei, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N92.2', @Diag = 'Menstruatie excesiva la pubertate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N92.6', @Diag = 'Menstruatie neregulata, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N93.0', @Diag = 'Sangerari post-coitale si de contact';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N94.4', @Diag = 'Dismenoree primara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N95.8', @Diag = 'Alte tulburari specificate de menopauza si premenopauza';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N99.1', @Diag = 'Strictura uretrala postprocedurala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'N99.5', @Diag = 'Functionarea proasta a unei stomii externe a tractului urinar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O00.0', @Diag = 'Sarcina abdominala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O00.1', @Diag = 'Sarcina tubara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O00.8', @Diag = 'Alte sarcini ectopice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O00.9', @Diag = 'Sarcina ectopica, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O01.0', @Diag = 'Mola hidatiforma clasica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O01.9', @Diag = 'Mola hidatiforma, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O02.0', @Diag = 'Ou clar si mola nehidatiforma';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O02.9', @Diag = 'Produs anormal de conceptie, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O03.0', @Diag = 'Avort spontan incomplet, complicat prin infectie pelvina si a tractului genital';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O03.1', @Diag = 'Avort spontan incomplet, complicat prin hemoragie severa sau intarziata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O04.0', @Diag = 'Avort medical incomplet, complicat prin infectie pelvina si a tractului genital';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O04.4', @Diag = 'Avort medical incomplet, fara complicatii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O04.6', @Diag = 'Avort medical complet sau nespecificat, complicat prin hemoragie severa sau intarziata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O04.9', @Diag = 'Avort medical complet sau nespecificat, fara complicatii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O08.0', @Diag = 'Infectia pelviana si a tractului genital urmand avortului si sarcinii ectopice si molare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O08.1', @Diag = 'Hemoragia severa sau intirziata urmand avortului si sarcinii ectopice si molare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O09.4', @Diag = 'Durata sarcinii 26-33 saptamani complete';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O10.0', @Diag = 'Hipertensiunea esentiala preexistenta, complicand sarcina, nasterea si lauzia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O10.1', @Diag = 'Cardiopatie hipertensiva preexistenta complicand sarcina, nasterea si lauzia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O10.4', @Diag = 'Hipertensiunea secundara preexistenta complicand sarcina, nasterea si lauzia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O13', @Diag = 'Hipertensiune gestationala [indusa de sarcina] fara proteinurie semnificativa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O14.0', @Diag = 'Pre-eclampsia moderata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O14.1', @Diag = 'Pre-eclampsia severa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O15.2', @Diag = 'Eclampsia in lauzie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O20.0', @Diag = 'Iminenta de avort';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O20.8', @Diag = 'Alte hemoragii la debutul sarcinii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O22.1', @Diag = 'Varicele organelor genitale in sarcina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O22.2', @Diag = 'Tromboflebita superficiala in cursul sarcinii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O22.3', @Diag = 'Flebotromboza profunda in sarcina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O22.4', @Diag = 'Hemoroizii in sarcina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O23.0', @Diag = 'Infectii renale in sarcina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O23.2', @Diag = 'Infectiile uretrei in sarcina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O23.5', @Diag = 'Infectiile tractului genital in sarcina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O23.9', @Diag = 'Alte infectii ale tractului genito-urinar in sarcina si nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O24.0', @Diag = 'Diabet mellitus preexistent, tip 1, in sarcina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O24.41', @Diag = 'Diabetul mellitus survenit in timpul sarcinii, fara insulina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O26.6', @Diag = 'Tulburari hepatice in sarcina, nastere si lauzie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O26.81', @Diag = 'Boala renala, legata de sarcina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O30.0', @Diag = 'Sarcina gemelara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O32.1', @Diag = 'Ingrijiri acordate mamei pentru o prezentatie pelviana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O34.3', @Diag = 'Ingrijiri acordate mamei pentru beanta colului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O36.3', @Diag = 'Ingrijiri acordate mamei pentru semne de hipoxie fetala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O36.4', @Diag = 'Ingrijiri acordate mamei pentru decesul intrauterin al fatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O36.5', @Diag = 'Ingrijiri acordate mamei pentru cresterea insuficienta a fatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O41.0', @Diag = 'Oligohidramnios';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O42.0', @Diag = 'Ruperea prematura a membranelor, cu debutul travaliului in 24 ore';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O44.0', @Diag = 'Placenta praevia specificata ca fara hemoragie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O44.1', @Diag = 'Placenta praevia cu hemoragie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O45.0', @Diag = 'Dezlipirea prematura a placentei cu anomalii de coagulare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O45.9', @Diag = 'Dezlipirea prematura a placentei, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O46.8', @Diag = 'Alte hemoragii antepartum';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O47.0', @Diag = 'Travaliu fals inainte de saptamina 37-a completa de gestatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O47.1', @Diag = 'Travaliu fals dupa cea de a 37-a saptamina completa de gestatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O48', @Diag = 'Sarcina prelungita';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O60', @Diag = 'Nasterea inainte de termen';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O70.0', @Diag = 'Laceratia perineala de primul grad in timpul nasterii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O71.6', @Diag = 'Leziune de origine obstetricala a articulatiilor si ligamentelor pelviene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O71.7', @Diag = 'Hematom pelvian de origine obstetricala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O71.8', @Diag = 'Alte traumatisme obstetricale specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O72.0', @Diag = 'Hemoragia dupa nastere (perioada a treia)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O72.1', @Diag = 'Alte hemoragii imediat postpartum';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O73.1', @Diag = 'Retentia partiala a placentei si a membranelor, fara hemoragie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O75.7', @Diag = 'Nasterea vaginala dupa o cezariana anterioara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O80', @Diag = 'Nastere unica spontana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O82', @Diag = 'Nastere unica prin cezariana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O85', @Diag = 'Sepsis puerperal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O86.0', @Diag = 'Infectia plagii chirurgicale de origine obstetricala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O86.1', @Diag = 'Alte infectii ale tractului genital dupa nastere';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O86.2', @Diag = 'Infectia cailor urinare survenind dupa nastere';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O87.0', @Diag = 'Tromboflebita superficiala in timpul lauziei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O87.1', @Diag = 'Flebotromboza profunda in timpul lauziei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O90.0', @Diag = 'Desprinderea unei suturi de cezariana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O91.10', @Diag = 'Abcesul sanului asociat nasterii, fara mentionarea dificultatii de alaptare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O91.11', @Diag = 'Abcesul sanului asociat nasterii, cu mentionarea dificultatii de alaptare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O91.20', @Diag = 'Mastita nepurulenta asociata nasterii, fara mentionarea dificultatii de alaptare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O91.21', @Diag = 'Mastita nepurulenta asociata nasterii, cu mentionarea dificultatii de alaptare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O92.00', @Diag = 'Invaginatia mamelonului asociata nasterii, fara mentionarea dificultatii de alaptare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O99.0', @Diag = 'Anemia complicand sarcina, nasterea si lauzia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O99.5', @Diag = 'Bolile sistemului respirator complicand sarcina, nasterea si lauzia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O99.6', @Diag = 'Bolile sistemului digestiv complicand sarcina, nasterea si lauzia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'O99.8', @Diag = 'Alte boli si afectiuni specificate complicand sarcina, nasterea si lauzia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P00.2', @Diag = 'Fat si nou-nascut afectati de bolile infectioase si parazitare ale mamei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P01.1', @Diag = 'Fat si nou-nascut afectati de ruptura prematura a membranelor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P02.5', @Diag = 'Fat si nou-nascut afectati de alte forme de compresiune ale cordonului ombilical';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P03.0', @Diag = 'Fat si nou-nascut afectati de nastere si o extractie din prezentatia pelviana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P03.4', @Diag = 'Fat si nou-nascut afectati de nasterea prin cezariana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P05.0', @Diag = 'Greutate mica pentru varsta gestationala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P05.2', @Diag = 'Malnutritia fatului, fara mentionarea de usor sau mic pentru varsta gestationala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P07.30', @Diag = 'Prematuritate, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P07.32', @Diag = 'Alti copii nascuti inainte de termen, 32 sau mai ulte saptamani complete dar mai putin de 37 de saptamani complete';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P08.0', @Diag = 'Copil exceptional de mare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P08.1', @Diag = 'Alti copii mari pentru varsta gestationala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P08.2', @Diag = 'Copil nascut dupa termen, care nu e mare pentru varsta gestationala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P11.3', @Diag = 'Leziunea nervului facial datorita traumatismului  la nastere';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P12.0', @Diag = 'Cefalohematom datorita traumatismului  la nastere';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P12.2', @Diag = 'Hemoragia epicraniana subaponevrotica datorita traumatismului  la nastere';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P12.8', @Diag = 'Alte leziuni ale scalpului datorita traumatismului  la nastere';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P13.3', @Diag = 'Leziunea altor oase lungi datorita traumatismului  la nastere';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P14.0', @Diag = 'Paralizie Duchenne-Erb datorita traumatismului  la nastere';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P15.4', @Diag = 'Leziune faciala datorita traumatismului la nastere';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P21.0', @Diag = 'Asfixia la nastere severa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P21.1', @Diag = 'Asfixia la nastere usoara sau moderata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P22.0', @Diag = 'Sindromul de suferinta respiratorie a nou-nascutului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P22.1', @Diag = 'Tahipnee tranzitorie a nou-nascutului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P22.8', @Diag = 'Alte suferinte respiratorii ale nou-nascutului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P22.9', @Diag = 'Suferinta respiratorie a nou-nascutului, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P23.8', @Diag = 'Pneumonia congenitala datorita altor micro-organisme';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P23.9', @Diag = 'Pneumonia congenitala, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P24.0', @Diag = 'Aspiratia de meconiu in perioada neonatala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P24.1', @Diag = 'Aspiratia lichidului amniotic si a mucusului in perioada neonatala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P28.2', @Diag = 'Crize de cianoza a nou-nascutului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P28.40', @Diag = 'Apneea nou-nascutului, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P28.5', @Diag = 'Insuficienta respiratorie a nou-nascutului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P28.89', @Diag = 'Alte afectiuni respiratorii specificate la nou-nascut';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P29.1', @Diag = 'Tulburari neonatale de ritm cardiac';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P36.1', @Diag = 'Sepsis la nou-nascut cu alti streptococi si nespecificati';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P36.3', @Diag = 'Sepsis la nou-nascut cu alti stafilococi si nespecificati';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P36.4', @Diag = 'Sepsis la nou-nascut cu Escherichia coli';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P36.8', @Diag = 'Alt sepsis bacterian la nou-nascut';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P36.9', @Diag = 'Sepsis bacterian la nou-nascut, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P37.59', @Diag = 'Alte forme de candidoza neonatala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P38', @Diag = 'Omfalita nou-nascutului cu sau fara hemoragie usoara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P39.1', @Diag = 'Conjunctivita si dacriocistita neonatala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P39.2', @Diag = 'Infectia intra-amniotica a fatului, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P39.3', @Diag = 'Infectia neonatala a tractului urinar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P39.4', @Diag = 'Infectia neonatala a pielii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P39.8', @Diag = 'Alte infectii specificate specifice perioadei perinatale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P50.4', @Diag = 'Hemoragia in circulatia sangvina materna';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P53', @Diag = 'Boala hemoragica a fatului si nou-nascutului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P54.3', @Diag = 'Alte hemoragii gastro-intestinale neonatale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P54.5', @Diag = 'Hemoragia cutanata neonatala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P55.0', @Diag = 'Izoimunizare Rh a fatului si nou-nascutului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P55.1', @Diag = 'Izoimunizare ABO a fatului si nou-nascutului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P58.0', @Diag = 'Icter neonatal datorit contuziilor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P59.0', @Diag = 'Icter neonatal asociat nasterii inainte de termen';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P59.9', @Diag = 'Icter neonatal, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P70.4', @Diag = 'Alte hipoglicemii neonatale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P78.3', @Diag = 'Diareea neinfectioasa neonatala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P81.0', @Diag = 'Hipertermia nou-nascutului datorita mediului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P81.8', @Diag = 'Alte tulburari specificate ale reglarii termice la nou-nascut';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P83.4', @Diag = 'Congestia sanului la nou-nascut';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P83.5', @Diag = 'Hidrocel congenital';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P83.8', @Diag = 'Alte afectiuni specificate ale tegumentelor, specifice fatului si nou-nascutului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P90', @Diag = 'Convulsii ale nou-nascutului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P91.0', @Diag = 'Ischemia cerebrala neonatala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P91.3', @Diag = 'Iritabilitatea cerebrala a nou-nascutului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P91.81', @Diag = 'Encefalopatia neonatala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P91.9', @Diag = 'Tuburare cerebrala a nou-nascutului, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'P94.8', @Diag = 'Alte tulburari de tonus muscular la nou-nascut';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q04.8', @Diag = 'Alte malformatii congenitale specificate ale creierului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q05.90', @Diag = 'Spina bifida, nespecificata, nespecificat daca leziunea este deschisa sau inchisa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q10.4', @Diag = 'Absenta si agenezia aparatului lacrimal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q17.0', @Diag = 'Pavilion supranumerar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q17.5', @Diag = 'Ureche proeminenta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q17.9', @Diag = 'Malformatia congenitala a urechii, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q18.8', @Diag = 'Alte malformatii congenitale specificate ale fetei si gatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q20.0', @Diag = 'Trunchi arterial comun';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q20.8', @Diag = 'Alte malformatii congenitale ale cavitatilor si orificiilor cardiace';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q21.0', @Diag = 'Defect septal ventricular';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q21.1', @Diag = 'Defect septal atrial';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q21.2', @Diag = 'Defect septal atrio-ventricular';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q22.1', @Diag = 'Stenoza congenitala a valvei pulmonare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q24.8', @Diag = 'Alte malformatii congenitale cardiace specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q24.9', @Diag = 'Malformatia congenitala cardiaca, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q25.0', @Diag = 'Permeabilitatea canalului arterial';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q25.3', @Diag = 'Stenoza aortei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q27.3', @Diag = 'Malformatia arterio-venoasa periferica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q28.2', @Diag = 'Malformatia arterio-venoasa a vaselor cerebrale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q28.3', @Diag = 'Alte malformatii ale vaselor cerebrale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q28.8', @Diag = 'Alte malformatii congenitale specificate ale sistemului circulator';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q35.5', @Diag = 'Fisura boltii si partii moi a palatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q37.5', @Diag = 'Fisura boltii si a partii moi a palatului cu fisura labiala unilaterala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q38.1', @Diag = 'Anchiloglosia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q40.1', @Diag = 'Hernia hiatala congenitala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q43.0', @Diag = 'Diverticul Meckel';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q43.10', @Diag = 'Boala Hirschsprung, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q43.12', @Diag = 'Boala Hirschsprung a unui segment lung';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q43.5', @Diag = 'Ectopia anusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q43.8', @Diag = 'Alte malformatii congenitale specificate ale intestinului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q44.1', @Diag = 'Alte malformatii congenitale ale vezicii biliare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q44.6', @Diag = 'Boala chistica a ficatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q50.12', @Diag = 'Chist ovarian in dezvoltare, multiplu';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q51.1', @Diag = 'Uter dublu cu cervix si vagin duble';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q53.0', @Diag = 'Testicul ectopic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q53.1', @Diag = 'Testicul necoborat, unilateral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q53.2', @Diag = 'Testicul necoborat, bilateral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q54.0', @Diag = 'Hipospadias balanic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q54.1', @Diag = 'Hipospadias penil';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q54.9', @Diag = 'Hipospadias, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q61.2', @Diag = 'Rinichi polichistic, autosomal dominant';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q61.3', @Diag = 'Rinichi polichistic, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q62.0', @Diag = 'Hidronefroza congenitala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q62.11', @Diag = 'Atrezia si stenoza jonctiunii uterero-pelviene, unilaterala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q62.51', @Diag = 'Ureter dublu';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q62.8', @Diag = 'Alte malformatii congenitale ale ureterului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q63.89', @Diag = 'Alte malformatii congenitale ale rinichiului specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q64.0', @Diag = 'Epispadias';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q65.0', @Diag = 'Dislocarea congenitala a soldului, unilaterala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q65.1', @Diag = 'Dislocarea congenitala a soldului, bilaterala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q65.3', @Diag = 'Subluxatia congenitala a soldului, unilaterala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q65.4', @Diag = 'Subluxatia congenitala a soldului, bilaterala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q65.61', @Diag = 'Sold nestabil, unilateral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q65.62', @Diag = 'Sold nestabil, bilateral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q66.0', @Diag = 'Piciorul stramb equinovarus';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q66.2', @Diag = 'Varus al metatarsului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q66.6', @Diag = 'Alte deformatii congenitale de valgus ale piciorului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q66.8', @Diag = 'Alte deformatii congenitale ale piciorului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q68.2', @Diag = 'Deformatii congenitale ale genunchiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q69.0', @Diag = 'Deget(e) supranumerar(e)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q69.1', @Diag = 'Police supranumerar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q69.2', @Diag = 'Deget(e) de la picioare supranumerar(e)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q72.1', @Diag = 'Absenta congenitala a coapsei si a gambei cu prezenta labei piciorului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q72.6', @Diag = 'Corectarea longitudinala a defectelor peroneului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q74.3', @Diag = 'Artrogripoza congenitala multipla';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q78.0', @Diag = 'Osteogeneza imperfecta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q78.1', @Diag = 'Displazia fibroasa poliostotica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q79.0', @Diag = 'Hernia congenitala a diafragmului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q79.2', @Diag = 'Exomfalos';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q82.5', @Diag = 'Nev congenital non-neoplazic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q84.89', @Diag = 'Alte malformatii congenitale specificate ale tegumentelor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q85.0', @Diag = 'Neurofibromatoza (nemaligna)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q89.23', @Diag = 'Chist gloso-tiroid persistent';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q89.24', @Diag = 'Chist gloso-tiroid';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q89.31', @Diag = 'Dextrocardia cu situs inversus';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Q90.9', @Diag = 'Sindromul Down, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R00.0', @Diag = 'Tahicardie, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R00.1', @Diag = 'Bradicardie, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R02', @Diag = 'Gangrena, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R04.0', @Diag = 'Epistaxis';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R04.2', @Diag = 'Hemoptizie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R04.8', @Diag = 'Hemoragie provenind din alte localizari ale cailor respiratorii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R06.8', @Diag = 'Alte anomaliile de respiratie si nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R09.1', @Diag = 'Pleurezie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R09.2', @Diag = 'Stop respirator';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R10.0', @Diag = 'Abdomen acut';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R10.2', @Diag = 'Durere perineala si  pelviana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R11', @Diag = 'Greata si voma';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R16.1', @Diag = 'Splenomegalie, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R16.2', @Diag = 'Hepatomegalie si splenomegalie, neclasificate altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R26.8', @Diag = 'Alte anomalii ale mersului si ale motilitatii si nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R29.0', @Diag = 'Tetanie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R29.89', @Diag = 'Alte simptome si semne referitoare la sistemele nervos si musculo-scheletal si nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R30.0', @Diag = 'Disurie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R31', @Diag = 'Hematuria nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R32', @Diag = 'Incontinenta urinara nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R33', @Diag = 'Retentie de urina';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R34', @Diag = 'Anurie si oligurie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R35', @Diag = 'Poliurie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R39.1', @Diag = 'Alte dificultati de mictiune';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R39.2', @Diag = 'Uremie extra-renala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R40.2', @Diag = 'Coma, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R41.0', @Diag = 'Dezorientare, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R41.8', @Diag = 'Alte simptome si semne referitoare la functiile cognitive si constienta si nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R45.1', @Diag = 'Neliniste si agitatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R45.7', @Diag = 'Stare de soc emotional si stress, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R50.0', @Diag = 'Febra cu fiori reci';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R50.1', @Diag = 'Febra persistenta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R50.9', @Diag = 'Febra, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R52.0', @Diag = 'Durere acuta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R54', @Diag = 'Senilitate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R55', @Diag = 'Sincopa si colaps';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R56.0', @Diag = 'Convulsii febrile';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R56.8', @Diag = 'Alte convulsii si nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R57.0', @Diag = 'Soc cardiogen';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R57.1', @Diag = 'Soc hipovolemic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R57.8', @Diag = 'Alt tip de soc';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R58', @Diag = 'Hemoragie, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R59.1', @Diag = 'Ganglioni limfatici mariti generalizati';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R60.0', @Diag = 'Edem localizat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R62.8', @Diag = 'Alta lipsa de dezvoltare fiziologica normala asteptata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R63.8', @Diag = 'Alte simptome si semne referitoare la consumul de alimente si lichide';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R64', @Diag = 'Casexie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R74.0', @Diag = 'Crestere a nivelelor transaminazei si dehidrogeneza acidului lactic [LDH]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R80', @Diag = 'Proteinurie izolata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R82.4', @Diag = 'Acetonurie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'R82.9', @Diag = 'Alte rezultate anormale privind examinarea urinii si nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S00.35', @Diag = 'Leziune superficiala a nasului, contuzie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S00.38', @Diag = 'Leziune superficiala a nasului, alta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S00.83', @Diag = 'Leziune superficiala a altor parti ale capului, muscatura de insecta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S01.0', @Diag = 'Plaga deschisa a scalpului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S01.20', @Diag = 'Plaga deschisa a nasului, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S01.30', @Diag = 'Plaga deschisa a urechii externe, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S01.31', @Diag = 'Plaga deschisa a auriculului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S01.41', @Diag = 'Plaga deschisa a obrazului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S01.43', @Diag = 'Plaga deschisa a regiunii mandibulare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S01.51', @Diag = 'Plaga deschisa a buzei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S01.53', @Diag = 'Plaga deschisa a gingiei (proces alveolar)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S01.54', @Diag = 'Plaga deschisa a limbii si planseului gurii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S01.7', @Diag = 'Plagi deschise multiple ale capului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S01.88', @Diag = 'Plaga deschisa a altor parti ale capului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S02.0', @Diag = 'Fractura a boltei craniene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S02.1', @Diag = 'Fractura a bazei craniene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S02.2', @Diag = 'Fractura a oaselor nasale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S02.3', @Diag = 'Fractura a planseului orbitei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S02.4', @Diag = 'Fractura a osului molar si a oaselor maxilarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S02.60', @Diag = 'Fractura a mandibulei, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S02.61', @Diag = 'Fractura a procesului condilian';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S02.62', @Diag = 'Fractura subcondiliana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S02.67', @Diag = 'Fractura a marginii alveolare a corpului mandibulei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S02.7', @Diag = 'Fracturi multiple ale craniului si oaselor fetei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S03.0', @Diag = 'Luxatie a maxilarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S05.0', @Diag = 'Leziune a conjunctivei si abraziune a corneei fara mentionarea unui corp strain';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S05.1', @Diag = 'Contuzie a globului ocular si a tesuturilor orbitei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S05.4', @Diag = 'Plaga penetranta a orbitei cu sau fara corp strain';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S05.5', @Diag = 'Plaga penetranta a globului ocular cu corp strain';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S05.6', @Diag = 'Plaga penetranta a globului ocular fara corp strain';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S06.20', @Diag = 'Leziune difuza cerebrala si cerebeloasa, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S06.21', @Diag = 'Contuzii cerebrale difuze';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S06.23', @Diag = 'Hematoame multiple intracerebrale si cerebeloase';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S06.28', @Diag = 'Alta leziune difuza cerebrala si cerebeloasa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S06.31', @Diag = 'Contuzie cerebrala in focar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S06.32', @Diag = 'Contuzie cerebeloasa in focar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S06.38', @Diag = 'Alte leziuni cerebrale si cerebeloase in focar';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S06.4', @Diag = 'Hemoragie epidurala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S06.5', @Diag = 'Hemoragie subdurala traumatica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S06.6', @Diag = 'Hemoragie subarahnoida traumatica';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S06.8', @Diag = 'Alte leziuni intracraniene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S06.9', @Diag = 'Leziune intracraniana, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S07.0', @Diag = 'Leziune prin zdrobire a fetei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S09.2', @Diag = 'Ruptura traumatica a timpanului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S09.8', @Diag = 'Alte leziuni specificate ale capului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S09.9', @Diag = 'Leziune nespecificata a capului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S11.7', @Diag = 'Plagi deschise multiple ale gatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S12.0', @Diag = 'Fractura a primei vertebre cervicale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S12.1', @Diag = 'Fractura a vertebrei a II-a cervicale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S12.21', @Diag = 'Fractura a vertebrei a III-a cervicale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S12.22', @Diag = 'Fractura a vertebrei a IV-a cervicale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S12.23', @Diag = 'Fractura a vertebrei a V-a cervicale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S12.25', @Diag = 'Fractura a vertebrei a VII-a cervicale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S12.7', @Diag = 'Fracturi multiple ale coloanei vertebrale cervicale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S14.10', @Diag = 'Leziune a maduvei spinarii cervicale, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S14.13', @Diag = 'Alt sindrom de leziune medulara incompleta a maduvei spinarii cervicale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S14.2', @Diag = 'Leziune a radacinii nervoase a coloanei vertebrale cervicale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S15.02', @Diag = 'Leziune a carotidei externe';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S19.8', @Diag = 'Alte leziuni specificate ale gatului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S20.2', @Diag = 'Contuzie a toracelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S20.30', @Diag = 'Alte leziuni superficiale ale peretelui toracic anterior, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S20.40', @Diag = 'Alte leziuni superficiale ale peretelui toracic posterior, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S20.48', @Diag = 'Alte leziuni superficiale ale peretelui toracic posterior, alta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S21.1', @Diag = 'Plaga deschisa a peretelui toracic anterior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S21.2', @Diag = 'Plaga deschisa a peretelui toracic posterior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S21.88', @Diag = 'Plaga deschisa a altor parti ale toracelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S22.02', @Diag = 'Fractura de vertebre toracice, nivelul T3 si T4';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S22.03', @Diag = 'Fractura de vertebre toracice, nivelul T5 si T6';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S22.04', @Diag = 'Fractura de vertebre toracice, nivelul T7 si T8';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S22.05', @Diag = 'Fractura de vertebre toracice, nivelul T9 si T10';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S22.06', @Diag = 'Fractura de vertebre toracice, nivelul T11 si T12';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S22.2', @Diag = 'Fractura a sternului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S22.43', @Diag = 'Fracturi multiple de coaste, implicand trei coaste';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S22.44', @Diag = 'Fracturi multiple de coaste implicand patru sau mai multe coaste';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S22.5', @Diag = 'Volet costal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S24.2', @Diag = 'Leziune a unei radacini nervoase a coloanei vertebrale dorsale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S26.0', @Diag = 'Hemopericard traumatic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S27.0', @Diag = 'Pneumotorax traumatic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S27.1', @Diag = 'Hemotorax traumatic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S27.2', @Diag = 'Hemo-pneumotorax traumatic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S27.31', @Diag = 'Contuzie si hematom al plamanului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S27.32', @Diag = 'Laceratie a plamanului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S27.38', @Diag = 'Alte leziuni si nespecificate ale plamanului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S28.0', @Diag = 'Torace zdrobit';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S29.7', @Diag = 'Leziuni multiple ale toracelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S29.8', @Diag = 'Alte leziuni specificate ale toracelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S30.0', @Diag = 'Contuzie a zonei inferioare a spatelui si pelvisului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S30.1', @Diag = 'Contuzie a peretelui abdominal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S30.2', @Diag = 'Contuzie a organelor genitale externe';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S30.80', @Diag = 'Alte leziuni superficiale ale abdomenului, zonei inferioare a spatelui si pelvisului, nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S30.88', @Diag = 'Alte leziuni superficiale ale abdomenului, zonei inferioare a spatelui si pelvisului, alta';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S31.0', @Diag = 'Plaga deschisa a zonei inferioare a spatelui si pelvisului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S31.1', @Diag = 'Plaga deschisa a peretelui abdominal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S31.2', @Diag = 'Plaga deschisa a penisului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S31.3', @Diag = 'Plaga deschisa a scrotului si testiculelor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S31.4', @Diag = 'Plaga deschisa a vaginului si vulvei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S32.01', @Diag = 'Fractura a unei vertebre lombare, nivel L1';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S32.02', @Diag = 'Fractura a unei vertebre lombare, nivel L2';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S32.03', @Diag = 'Fractura a unei vertebre lombare, nivel L3';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S32.04', @Diag = 'Fractura a unei vertebre lombare, nivel L4';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S32.05', @Diag = 'Fractura a unei vertebre lombare, nivel L5';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S32.1', @Diag = 'Fractura a sacrului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S32.2', @Diag = 'Fractura a coccisului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S32.3', @Diag = 'Fractura a ilionului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S32.4', @Diag = 'Fractura a acetabului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S32.81', @Diag = 'Fractura de ischion';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S32.82', @Diag = 'Fractura de coloana vertebrala lombo-sacrata, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S32.83', @Diag = 'Fractura de pelvis, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S33.4', @Diag = 'Ruptura traumatica a simfizei pubiene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S35.4', @Diag = 'Leziune a vaselor de sange ale rinichiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S36.00', @Diag = 'Leziune a splinei, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S36.02', @Diag = 'Rupturi ale capsulei splinei, fara perforarea majora a parenchimului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S36.04', @Diag = 'Perforare masiva a parenchimului splinei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S36.10', @Diag = 'Leziune a ficatului, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S36.7', @Diag = 'Leziune a multiplelor organe intra-abdominale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S36.81', @Diag = 'Leziune a peritoneului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S36.83', @Diag = 'Leziune a retroperitoneului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S36.88', @Diag = 'Leziune ale altor organe intraabdominale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S37.00', @Diag = 'Leziune a rinchiului, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S37.01', @Diag = 'Contuzie si hematom ale rinichiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S37.02', @Diag = 'Laceratie a rinichiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S37.30', @Diag = 'Leziune a uretrei, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S37.38', @Diag = 'Leziune a altei parti a uretrei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S38.0', @Diag = 'Leziune prin zdrobire a organelor genitale externe';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S39.0', @Diag = 'Leziune a muschilor si tendoanelor abdomenului, zonei inferioare a spatelui si pelvisului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S40.0', @Diag = 'Contuzie a umarului si treimii superioare a bratului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S41.0', @Diag = 'Plaga deschisa a umarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S41.1', @Diag = 'Plaga deschisa a treimii superioare a bratului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S41.80', @Diag = 'Plaga deschisa nespecificata a altor parti si nespecificate ale regiunii umarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.00', @Diag = 'Fractura a claviculei, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.02', @Diag = 'Fractura a diafizei claviculei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.03', @Diag = 'Fractura a extremitatii acromiale a claviculei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.10', @Diag = 'Fractura a scapulei, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.14', @Diag = 'Fractura de cavitate glenoida si de col al scapulei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.20', @Diag = 'Fractura a extremitatii superioare a humerusului, parte nepsecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.21', @Diag = 'Fractura a capului humerusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.22', @Diag = 'Fractura a colului chirurgical al humerusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.29', @Diag = 'Fractura a altor parti si multiple ale extremitatii superioare a humerusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.3', @Diag = 'Fractura a diafizei humerusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.40', @Diag = 'Fractura a extremitatii inferioare a humerusului, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.41', @Diag = 'Fractura supracondilara a humerusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.42', @Diag = 'Fractura a condilului lateral al humerusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.43', @Diag = 'Fractura a condilului mijlociu al humerusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.44', @Diag = 'Fractura a condilului (condilelor) humerusului, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S42.45', @Diag = 'Fractura in forma de T a humerusului distal';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S43.00', @Diag = 'Luxatie a umarului, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S43.03', @Diag = 'Luxatie inferioara a humerusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S43.1', @Diag = 'Luxatie a articulatiei acromio-claviculare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S43.3', @Diag = 'Luxatie a altor parti si nespecificate ale centurii scapulare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S43.4', @Diag = 'Entorsa si intindere a articulatiei umarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S45.1', @Diag = 'Leziune a arterei brahiale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S45.9', @Diag = 'Leziune a unui vas de sange nespecificat la nivelul umarului si treimii superioare a bratului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S46.0', @Diag = 'Leziune a tendonului muschiului rotator al umarului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S46.2', @Diag = 'Leziune a muschiului si a tendonului altor parti ale bicepsului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S46.8', @Diag = 'Leziune a altor muschi si tendoane la nivelul umarului si treimii superioare a bratului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S46.9', @Diag = 'Leziune a unui muschi si tendon nespecificat la nivelul umarului si treimii superioare a bratului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S49.7', @Diag = 'Leziuni multiple ale umarului si treimii superioare a bratului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S50.0', @Diag = 'Contuzie a cotului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S50.9', @Diag = 'Leziune superficiala a antebratului, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S51.0', @Diag = 'Plaga deschisa a cotului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S51.7', @Diag = 'Plagi deschise multiple ale antebratului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S51.88', @Diag = 'Plaga deschisa a altor parti ale antebratului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S51.9', @Diag = 'Plaga deschisa a antebratului, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S52.00', @Diag = 'Fractura a extremitatii superioare a ulnei, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S52.01', @Diag = 'Fractura a apofizei olecranului ulnei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S52.10', @Diag = 'Fractura a extremitatii superioare a radiusului, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S52.11', @Diag = 'Fractura a capului radiusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S52.12', @Diag = 'Fractura a colului radiusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S52.20', @Diag = 'Fractura a diafizei ulnei, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S52.30', @Diag = 'Fractura a diafizei radiusului, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S52.31', @Diag = 'Fractura a diafizei distale a radiusului cu luxatie a capului ulnei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S52.4', @Diag = 'Fractura a diafizelor atat ale ulnei cat si ale radiusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S52.50', @Diag = 'Fractura a extremitatii inferioare a radiusului, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S52.51', @Diag = 'Fractura a extremitatii inferioare a radiusului cu angulare dorsala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S52.52', @Diag = 'Fractura a extremitatii inferioare a radiusului cu angulare volara';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S52.6', @Diag = 'Fractura a extremitatii inferioare atat a ulnei cat si a radiusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S52.8', @Diag = 'Fractura a altor parti ale antebratului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S53.0', @Diag = 'Luxatie a capului radial';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S53.10', @Diag = 'Luxatie a cotului, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S53.12', @Diag = 'Luxatie posterioara a cotului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S53.13', @Diag = 'Luxatie mediana a cotului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S54.0', @Diag = 'Leziune a nervului ulnar la nivelul antebratului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S55.1', @Diag = 'Leziune a arterei radiale la nivelul antebratului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S56.4', @Diag = 'Leziune a muschiului si tendonului extensor al altor degete la nivelul antebratului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S56.5', @Diag = 'Leziune a altui muschi si tendon extensor la nivelul antebratului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S57.0', @Diag = 'Leziune prin zdrobire a cotului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S57.8', @Diag = 'Leziune prin zdrobire a altor parti ale antebratului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S57.9', @Diag = 'Leziune prin zdrobire a antebratului, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S58.1', @Diag = 'Amputatie traumatica la nivelul dintre cot si pumn';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.0', @Diag = 'Fractura a osului navicular [scafoid] al mainii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.20', @Diag = 'Fractura a primului metacarpian, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.21', @Diag = 'Fractura a bazei primului metacarpian';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.30', @Diag = 'Fractura a altui os (oase) metacarpian(e), parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.31', @Diag = 'Fractura a bazei altui os (oase) metacarpian(e)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.32', @Diag = 'Fractura a diafizei altui os (oase) metacarpian(e)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.34', @Diag = 'Fractura a capului altui os (oase) metacarpian(e)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.4', @Diag = 'Fracturi multiple ale metacarpienelor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.50', @Diag = 'Fractura a policelui, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.51', @Diag = 'Fractura a falangei proximale a policelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.52', @Diag = 'Fractura a falangei distale a policelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.60', @Diag = 'Fractura a falangei, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.61', @Diag = 'Fractura a falangei proximale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.63', @Diag = 'Fractura a falangei distale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S62.8', @Diag = 'Fractura a altor parti si nespecificate ale pumnului si mainii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S63.01', @Diag = 'Luxatie a articulatiei radio-ulnare, distale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S63.04', @Diag = 'Luxatie a articulatiei carpo-metacarpiene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S63.10', @Diag = 'Luxatie a degetului, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S63.11', @Diag = 'Luxatie a articulatiei metacarpo-falangiene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S63.12', @Diag = 'Luxatie a articulatiei interfalangiene, mana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S64.9', @Diag = 'Leziune a unui nerv nespecificat la nivelul pumnului si mainii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S66.2', @Diag = 'Leziune a muschiului si tendonului extensor al policelui la nivelul pumnului si mainii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S67.0', @Diag = 'Leziune prin zdrobire a policelui si a altui deget(e)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S67.8', @Diag = 'Leziune prin zdrobire a altor parti si nespecificate ale pumnului si mainii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S68.0', @Diag = 'Amputatie traumatica a policelui (completa) (partiala)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S68.1', @Diag = 'Amputatie traumatica a unui singur deget (completa) (partiala)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S68.2', @Diag = 'Amputatie traumatica a doua sau mai multe degete (completa) (partiala)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S68.3', @Diag = 'Amputatie traumatica asociata a (unei parti a) degetului (degetelor) cu alte parti ale pumnului si mainii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S68.8', @Diag = 'Amputatie traumatica a altor parti ale pumnului si mainii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S69.7', @Diag = 'Leziuni multiple ale pumnului si mainii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S70.0', @Diag = 'Contuzie a soldului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S70.1', @Diag = 'Contuzie a coapsei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S71.0', @Diag = 'Plaga deschisa a soldului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S71.1', @Diag = 'Plaga deschisa a coapsei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S72.00', @Diag = 'Fractura a colului femural, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S72.01', @Diag = 'Fractura a sectiunii intracapsulare a femurului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S72.03', @Diag = 'Fractura a sectiunii subcapitale a femurului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S72.04', @Diag = 'Fractura a sectiunii medii cervicale a femurului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S72.05', @Diag = 'Fractura a bazei colului femural';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S72.08', @Diag = 'Fractura a altor parti ale colului femural';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S72.10', @Diag = 'Fractura a sectiunii trohanteriene a femurului, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S72.11', @Diag = 'Fractura a sectiunii intertrohanteriene a femurului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S72.2', @Diag = 'Fractura subtrohanteriana';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S72.3', @Diag = 'Fractura a diafizei femurale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S72.40', @Diag = 'Fractura a extremitatii inferioare a femurului, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S72.41', @Diag = 'Fractura a condilului femural';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S72.43', @Diag = 'Fractura supracondilara a femurului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S73.00', @Diag = 'Luxatie a soldului, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S73.01', @Diag = 'Luxatie posterioara a soldului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S73.08', @Diag = 'Alta luxatie a soldului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S76.0', @Diag = 'Leziune a muschiului si tendonului soldului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S76.1', @Diag = 'Leziune a muschiului cvadriceps si tendonului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S77.1', @Diag = 'Leziune prin zdrobire a coapsei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S80.0', @Diag = 'Contuzie a genunchiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S80.1', @Diag = 'Contuzie a altor parti si nespecificate ale partii inferioare a gambei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S81.0', @Diag = 'Plaga deschisa a genunchiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S81.7', @Diag = 'Plagi deschise multiple ale piciorului inferior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S81.88', @Diag = 'Plaga deschisa a altor parti ale zonei inferioare a gambei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S81.9', @Diag = 'Plaga deschisa a partii inferioare a gambei, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.0', @Diag = 'Fractura a rotulei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.11', @Diag = 'Fractura a extremitatii superioare a tibiei cu fractura fibulei (orice parte)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.18', @Diag = 'Alta fractura a extremitatii superioare a tibiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.21', @Diag = 'Fractura a diafizei tibiei cu fractura fibulei (orice parte)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.28', @Diag = 'Alta fractura a diafizei tibiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.31', @Diag = 'Fractura a extremitatii inferioare a tibiei cu fractura fibulei (orice parte)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.38', @Diag = 'Alta fractura a extremitatii inferioare a tibiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.40', @Diag = 'Fractura a fibulei, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.41', @Diag = 'Fractura a extremitatii superioare a tibiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.42', @Diag = 'Fractura a diafizei fibulei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.5', @Diag = 'Fractura a maleolei mediale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.6', @Diag = 'Fractura a maleolei laterale';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.81', @Diag = 'Fractura bimaleolara, glezna';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.82', @Diag = 'Fractura trimaleolara, glezna';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.88', @Diag = 'Fractura a altor parti ale partii inferioare a gambei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S82.9', @Diag = 'Fractura a partii inferioare a gambei, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S83.0', @Diag = 'Luxatie a rotulei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S83.18', @Diag = 'Alta luxatie a genunchiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S83.40', @Diag = 'Entorsa si intindere a ligamentului colateral nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S83.41', @Diag = 'Entorsa si intindere a ligamentului colateral lateral';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S83.42', @Diag = 'Entorsa si intindere a ligamentului colateral medial';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S83.6', @Diag = 'Entorsa si intindere a altor parti si nespecificate ale genunchiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S83.7', @Diag = 'Leziune localizata la structurile multiple ale genunchiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S86.0', @Diag = 'Leziune a tendonului lui Achille';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S86.1', @Diag = 'Leziune a altui (altor) muschi si tendon (tendoane) din grupul de muschi posteriori la nivelul partii inferioare a gambei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S86.2', @Diag = 'Leziune a altui (altor) muschi si tendon (tendoane) din grupul de muschi anteriori la nivelul partii inferioare a gambei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S86.7', @Diag = 'Leziune a muschilor si tendoanelor multiple la nivelul partii inferioare a gambei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S86.8', @Diag = 'Leziune a altor muschi si tendoane la nivelul partii inferioare a gambei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S87.0', @Diag = 'Leziune prin zdrobire a genunchiului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S87.8', @Diag = 'Leziune prin zdrobire a altor parti si nespecificate ale partii inferioare a gambei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S90.84', @Diag = 'Corp strain superficial (aschie) in glezna si picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S91.0', @Diag = 'Plaga deschisa a gleznei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S91.1', @Diag = 'Plaga deschisa a degetului (degetelor), fara vatamarea unghiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S91.3', @Diag = 'Plaga deschisa a altor parti ale piciorului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S91.7', @Diag = 'Plagi deschise multiple ale gleznei si piciorului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S92.0', @Diag = 'Fractura a calcaneului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S92.1', @Diag = 'Fractura a talusului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S92.21', @Diag = 'Fractura a navicularului [scafoid], picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S92.3', @Diag = 'Fractura a osului metatarsian';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S92.4', @Diag = 'Fractura a degetului mare al piciorului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S92.5', @Diag = 'Fractura a altui deget al piciorului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S92.7', @Diag = 'Fracturi multiple ale piciorului, nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S93.10', @Diag = 'Luxatie a degetului (degetelor) de la picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S93.12', @Diag = 'Luxatie interfalangiana (articulatie), picior';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S93.33', @Diag = 'Luxatie a articulatiei tarso-metatarsiene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S93.34', @Diag = 'Luxatie a osului metatarsian, articulatie nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S93.38', @Diag = 'Luxatie a altei parti a piciorului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S93.40', @Diag = 'Entorsa si intindere a gleznei, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S93.48', @Diag = 'Entorsa si intindere a altor parti ale gleznei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S96.0', @Diag = 'Leziune a muschiului si tendonului muschiului flexor lung de la degetul piciorului la nivelul gleznei si piciorului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S96.7', @Diag = 'Leziune a multiplilor muschi si tendoane la nivelul gleznei si piciorului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'S97.8', @Diag = 'Leziune prin zdrobire a altor parti ale gleznei si piciorului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T00.1', @Diag = 'Leziuni superficiale implicand toracele cu abdomenul, zona inferioara a spatelui si pelvisul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T00.2', @Diag = 'Leziuni superficiale implicand multiple regiuni ale membrului (membrelor) superior (superioare)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T00.8', @Diag = 'Leziuni superficiale implicand alte combinatii ale regiunilor corpului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T01.1', @Diag = 'Plagi deschise implicand toracele cu abdomenul, zona inferioara a spatelui si pelvisul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T06.1', @Diag = 'Leziuni ale nervilor si maduvei spinarii implicand alte regiuni multiple ale corpului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T06.5', @Diag = 'Leziuni ale organelor intratoracice cu organe intraabdominale si pelviene';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T06.8', @Diag = 'Alte leziuni specificate implicand regiuni multiple ale corpului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T14.00', @Diag = 'Leziune superficiala nespecificata a unei regiuni nespecificate a corpului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T14.01', @Diag = 'Abraziune a unei regiuni nespecificate a corpului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T14.1', @Diag = 'Plaga deschisa a unei regiuni nespecificate a corpului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T14.6', @Diag = 'Leziune a muschilor si tendoanelor unei regiuni nespecificate a corpului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T16', @Diag = 'Corp strain in ureche';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T17.2', @Diag = 'Corp strain in faringe';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T17.5', @Diag = 'Corp strain in bronhii';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T17.9', @Diag = 'Corp strain in tractul respirator, parte nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T18.0', @Diag = 'Corp strain in gura';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T18.1', @Diag = 'Corp strain in esofag';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T20.2', @Diag = 'Arsura a capului si gatului cu adancime partiala [flictene, pierdere epidermala]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T20.3', @Diag = 'Arsura a capului si gatului cu adancime completa [atingerea tuturor straturilor pielii]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T21.02', @Diag = 'Arsura a peretelui toracic, excluzand sanul si mamelonul toracic [extern] cu adancime nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T21.09', @Diag = 'Arsura ale altor localizari ale trunchiului cu adancime nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T21.20', @Diag = 'Arsura a trunchiului cu adancime partiala [flictene, pierdere epidermala]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T21.22', @Diag = 'Arsura a peretelui toracic, excluzand sanul si mamelonul toracic [extern] cu adancime partiala [flictene, pierdere epidermala]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T21.29', @Diag = 'Arsura a altor localizari ale trunchiului cu adancime partiala [flictene, pierdere epidermala]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T21.30', @Diag = 'Arsura a trunchiului cu adancime completa [atingerea tuturor straturilor pielii], localizare nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T22.00', @Diag = 'Arsura a umarului si membrului superior cu adancime nespecificata, exceptand pumnul si mana, localizare nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T22.20', @Diag = 'Arsura a umarului si membrului superior cu adancime partiala [flictene, pierdere epidermala], exceptand pumnul si mana, localizare nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T22.30', @Diag = 'Arsura a umarului si membrului superior cu adancime completa [atingerea tuturor straturilor pielii], exceptand pumnul si mana, membru superior, localizare nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T23.2', @Diag = 'Arsura a pumnului si mainii cu adancime partiala [flictene, pierdere epidermala]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T23.3', @Diag = 'Arsura a pumnului si mainii cu adancime completa [atingerea tuturor straturilor pielii]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T24.2', @Diag = 'Arsura a soldului si a membrului inferior cu adancime partiala [flictene, pierdere epidermala], exceptand glezna si piciorul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T24.3', @Diag = 'Arsura a soldului si a membrului inferior cu adancime completa [atingerea tuturor straturilor pielii], exceptand glezna si piciorul';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T25.2', @Diag = 'Arsura a gleznei si piciorului cu adancime partiala [flictene, pierdere epidermala]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T25.3', @Diag = 'Arsura a gleznei si piciorului cu adancime completa [atingerea tuturor straturilor pielii]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T29.0', @Diag = 'Arsuri ale multiplelor regiuni ale corpului, adancime nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T29.2', @Diag = 'Arsuri ale multiplelor regiuni ale corpului, mentionandu-se nu mai mult decat arsuri cu adancime partiala';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T30.2', @Diag = 'Arsura cu adancime partiala, regiune nespecificata a corpului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T34.2', @Diag = 'Degeratura cu necroza tesutului toracelui';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T34.8', @Diag = 'Degeratura cu necroza tesutului gleznei si piciorului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T39.3', @Diag = 'Alte medicamente antiinflamatorii nesteroide[NSAID]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T42.3', @Diag = 'Barbiturice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T42.7', @Diag = 'Medicamente antiepileptice si sedativ-hipnotice, nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T43.0', @Diag = 'Antidepresive triciclice si tetraciclice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T43.2', @Diag = 'Alte antidepresive si nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T44.9', @Diag = 'Alte medicamente si nespecificate afectand in mod primar sistemul nervos autonom';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T45.0', @Diag = 'Medicamente antialergice si antiemetice';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T46.5', @Diag = 'Alte medicamente antihipertensive, neclasificate altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T48.7', @Diag = 'Alti agenti si nespecificati actionand in principal asupra sistemului respirator';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T49.8', @Diag = 'Alti agenti topici';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T50.9', @Diag = 'Alte droguri, medicamente si substante biologice si nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T51.0', @Diag = 'Etanol';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T51.8', @Diag = 'Alte alcooluri';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T51.9', @Diag = 'Alcool, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T52.0', @Diag = 'Produse derivate din petrol';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T52.8', @Diag = 'Alti solventi organici';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T53.9', @Diag = 'Derivat halogen al hidrocarburilor aliphatice si aromatice, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T54.1', @Diag = 'Alti compusi organici corozivi';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T54.2', @Diag = 'Acizi corozivi si substante similare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T54.3', @Diag = 'Alcaline corozive si substante alcaline similare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T54.9', @Diag = 'Substante corozive, nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T55', @Diag = 'Efect toxic al sapunului si detergentilor';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T56.0', @Diag = 'Plumb si compusii sai';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T56.1', @Diag = 'Mercur si compusii sai';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T57.0', @Diag = 'Arsenic si compusii sai';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T57.1', @Diag = 'Fosfor si compusii sai';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T57.9', @Diag = 'Substanta anorganica, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T58', @Diag = 'Efect toxic al monoxidului de carbon';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T60.2', @Diag = 'Alte insecticide';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T60.8', @Diag = 'Alte pesticide';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T60.9', @Diag = 'Pesticid, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T62.0', @Diag = 'Ciuperci ingerate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T63.0', @Diag = 'Venin de sarpe';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T63.4', @Diag = 'Venin al altor artropode';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T65.8', @Diag = 'Efect toxic al altor substante specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T65.9', @Diag = 'Efect toxic al unei substante nespecificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T67.0', @Diag = 'Insolatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T68', @Diag = 'Hipotermia';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T71', @Diag = 'Asfixie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T78.0', @Diag = 'Soc anafilactic datorit reactiei adverse la alimente';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T78.2', @Diag = 'Soc anafilactic, nespecificat';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T78.3', @Diag = 'Edem angioneurotic';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T79.6', @Diag = 'Ischemie traumatica a unui muschi';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T81.0', @Diag = 'Hemoragie si hematom complicand o procedura, neclasificate altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T81.3', @Diag = 'Desfacere a unei plagi operatorii, neclasificata altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T81.41', @Diag = 'Infectie a plagii ca urmare a unei proceduri';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T81.42', @Diag = 'Sepsis ca urmare a unei proceduri';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T81.8', @Diag = 'Alte complicatii ale procedurilor, neclasificate altundeva';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T82.4', @Diag = 'Complicatie mecanica a unui cateter vascular de dializa';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T82.5', @Diag = 'Complicatie mecanica a altor dispozitive prostetice si implanturi cardiace si vasculare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T82.7', @Diag = 'Infectie si reactie inflamatorie datorita altor dispozitive, implanturi si grefe cardiace si vasculare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T82.8', @Diag = 'Alte complicatii ale dispozitivelor prostetice, implanturilor si grefelor cardiace si vasculare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T84.0', @Diag = 'Complicatie mecanica a unei prosteze articulare interne';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T84.1', @Diag = 'Complicatie mecanica a unui dipsozitiv de fixare interna a oaselor unui membru';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T84.4', @Diag = 'Complicatie mecanica a altor dispozitive, implanturi si grefe ortopedice interne';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T84.5', @Diag = 'Infectie si reactie inflamatorie datorita unei prosteze articulare interne';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T84.6', @Diag = 'Infectie si reactie inflamatorie datorita unui dispozitiv de fixare interna [orice localizare]';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T84.8', @Diag = 'Alte complicatii ale dispozitivelor prostetice, implanturilor si grefelor ortopedice interne';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T85.2', @Diag = 'Complicatie mecanica a lentilelor intraoculare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T85.3', @Diag = 'Complicatie mecanica a altor dispozitive prostetice, implanturi si grefe oculare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T87.3', @Diag = 'Neurom al bontului amputatiei';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T87.5', @Diag = 'Necroza a bontului de amputatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'T87.6', @Diag = 'Alte complicatii si nespecificate ale bontului de amputatie';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z09.4', @Diag = 'Examinare de control dupa tratamentul unei fracturi';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z32.0', @Diag = 'Sarcina, neconfirmata (inca)';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z38.0', @Diag = 'Copil unic, nascut in spital';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z38.1', @Diag = 'Copil unic, nascut in afara spitalului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z38.3', @Diag = 'Gemeni, nascuti in spital';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z38.4', @Diag = 'Gemeni, nascuti in afara spitalului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z39.02', @Diag = 'Ingrijiri postpartum dupa nastere planificata si petrecuta in afara spitalului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z42.3', @Diag = 'Ingrijire de control dupa chirurgia plastica a extremitatilor superioare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z45.0', @Diag = 'Ajustarea si intretinerea unui stimulator cardiac';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z45.8', @Diag = 'Ajustarea si intretinerea altor dispozitive implantate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z46.8', @Diag = 'Amplasarea si ajustarea altor dispozitive specificate';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z47.0', @Diag = 'Ingrijire de control implicind indepartarea unei placi sau a altor dispozitive interne de fixare';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z47.9', @Diag = 'Ingrijire de control ortopedic, nespecificata';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z51.1', @Diag = 'Sedinta de chimioterapie pentru neoplasm';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z52.1', @Diag = 'Donator de piele';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z70.8', @Diag = 'Alte forme de consiliere in materie de sex';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z90.3', @Diag = 'Absenta dobandita a unei parti a stomacului';	
Go	
	
Exec uspAddDiagnoseList @Code = 'Z99.2', @Diag = 'Dependenta de dializa renala';	
Go	

Print 'Done.';

Print 'Populating table "Medication.PacientDiagnoses"...';

Exec uspAddPacientDiagnose @PID = 39, @DID = 'S72.10', @Mod = 3;
Go

Exec uspAddPacientDiagnose @PID = 30, @DID = 'G81.1', @Mod = 3;
Go

Exec uspAddPacientDiagnose @PID = 30, @DID = 'I65.2', @Mod = 3;
Go

Exec uspAddPacientDiagnose @PID = 30, @DID = 'I10', @Mod = 3;
Go

Exec uspAddPacientDiagnose @PID = 30, @DID = 'E78.2', @Mod = 3;
Go

Exec uspAddPacientDiagnose @PID = 30, @DID = 'G93.0', @Mod = 3;
Go

Exec uspAddPacientDiagnose @PID = 21, @DID = 'S72.10', @Mod = 3;
Go

Exec uspAddPacientDiagnose @PID = 21, @DID = 'R52.0', @Mod = 3;
Go

Exec uspAddPacientDiagnose @PID = 21, @DID = 'I10', @Mod = 3;
Go

Exec uspAddPacientDiagnose @PID = 21, @DID = 'I50.9', @Mod = 3;
Go

Exec uspAddPacientDiagnose @PID = 10, @DID = '526', @Mod = 3;
Go

Exec uspAddPacientDiagnose @PID = 18, @DID = 'I10', @Mod = 3;
Go

Exec uspAddPacientDiagnose @PID = 18, @DID = 'G30.9', @Mod = 3;
Go

Exec uspAddPacientDiagnose @PID = 34, @DID = 'G20', @Mod = 3;
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

Exec uspAddMedicines @MedName = 'Controloc', @Mod = 3;
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

Exec uspAddMedicines @MedName = 'Captopril', @Mod = 3;
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

Print 'Done.';

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

Exec uspMedication @PersID = 25, @MedID = 95, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 25, @MedID = 95, @MedHID = 2, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 25, @MedID = 95, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 25, @MedID = 96, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 25, @MedID = 93, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 25, @MedID = 93, @MedHID = 2, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 25, @MedID = 6, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 26, @MedID = 70, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 26, @MedID = 70, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 26, @MedID = 40, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 26, @MedID = 40, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 26, @MedID = 6, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 26, @MedID = 12, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 27, @MedID = 80, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 27, @MedID = 80, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 27, @MedID = 18, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 27, @MedID = 18, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 27, @MedID = 6, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 27, @MedID = 32, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 27, @MedID = 101, @MedHID = 1, @Dos = '1 la 12 zile', @Nec = 1;
Go

Exec uspMedication @PersID = 28, @MedID = 2, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 28, @MedID = 25, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 28, @MedID = 72, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 28, @MedID = 72, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 28, @MedID = 52, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 28, @MedID = 39, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 28, @MedID = 98, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 28, @MedID = 98, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 28, @MedID = 99, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 28, @MedID = 78, @MedHID = 3, @Dos = '2', @Nec = 1;
Go

Exec uspMedication @PersID = 28, @MedID = 22, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 28, @MedID = 13, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 29, @MedID = 64, @MedHID = 1, @Dos = '1/2 la 2 zile', @Nec = 1;
Go

Exec uspMedication @PersID = 29, @MedID = 1, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 29, @MedID = 7, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 29, @MedID = 7, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 30, @MedID = 58, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 30, @MedID = 10, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 30, @MedID = 39, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 30, @MedID = 52, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 30, @MedID = 18, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 30, @MedID = 18, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 30, @MedID = 6, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 31, @MedID = 13, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 31, @MedID = 6, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 31, @MedID = 60, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 31, @MedID = 60, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 31, @MedID = 12, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 31, @MedID = 12, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 31, @MedID = 52, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 31, @MedID = 54, @MedHID = 1, @Dos = '1(L-V)', @Nec = 1;
Go

Exec uspMedication @PersID = 31, @MedID = 17, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 31, @MedID = 17, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 31, @MedID = 42, @MedHID = 1, @Dos = '1/4', @Nec = 1;
Go

Exec uspMedication @PersID = 32, @MedID = 40, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 32, @MedID = 40, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 32, @MedID = 103, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 32, @MedID = 6, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 33, @MedID = 35, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 33, @MedID = 34, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 34, @MedID = 106, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 34, @MedID = 121, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 34, @MedID = 6, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 34, @MedID = 110, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 34, @MedID = 110, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 34, @MedID = 58, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 34, @MedID = 75, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 34, @MedID = 76, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 34, @MedID = 18, @MedHID = 1, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 34, @MedID = 18, @MedHID = 3, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 34, @MedID = 109, @MedHID = 2, @Dos = '1/2', @Nec = 1;
Go

Exec uspMedication @PersID = 35, @MedID = 32, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 35, @MedID = 32, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 35, @MedID = 13, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 35, @MedID = 54, @MedHID = 1, @Dos = '1(L,Mi,V)', @Nec = 1;
Go

Exec uspMedication @PersID = 35, @MedID = 111, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 36, @MedID = 78, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 36, @MedID = 78, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 36, @MedID = 104, @MedHID = 1, @Dos = '1 la 10 zile', @Nec = 1;
Go

Exec uspMedication @PersID = 36, @MedID = 92, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 36, @MedID = 92, @MedHID = 2, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 36, @MedID = 105, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 37, @MedID = 1, @MedHID = 1, @Dos = '', @Nec = 0;
Go

Exec uspMedication @PersID = 37, @MedID = 2, @MedHID = 1, @Dos = '2', @Nec = 1;
Go

Exec uspMedication @PersID = 37, @MedID = 6, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 37, @MedID = 113, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 37, @MedID = 113, @MedHID = 2, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 37, @MedID = 113, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 38, @MedID = 23, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 38, @MedID = 121, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 38, @MedID = 121, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 38, @MedID = 4, @MedHID = 2, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 38, @MedID = 114, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 38, @MedID = 116, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 38, @MedID = 115, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 38, @MedID = 115, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 39, @MedID = 51, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 39, @MedID = 4, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 39, @MedID = 4, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 39, @MedID = 76, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 39, @MedID = 102, @MedHID = 1, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 39, @MedID = 102, @MedHID = 3, @Dos = '1', @Nec = 1;
Go

Exec uspMedication @PersID = 39, @MedID = 49, @MedHID = 1, @Dos = '1 la 4 ore', @Nec = 0;
Go
	
Print 'Done.';

Use master;
Go
