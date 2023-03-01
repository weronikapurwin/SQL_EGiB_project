create table EGB_ReprezentacjaPowDzialk (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_ReprezentacjaPowDzialk VALUES ('1','doklDoM'), ('2','doklDoAra')

create table EGB_OFU (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_OFU VALUES  ('R','gruntOrny'), ('S','sad'), ('Ł','lakaTrwala')

create table EGB_OZU (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_OZU VALUES  ('R','gruntOrny'), ('Ł','lakaTrwala'), ('Ps','pastwiskoTrwale');

create table EGB_OZK (
key text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_OZK VALUES  ('I'), ('II'), ('III')

/create table EGB_OznaczenieKlasouzytku(
/key text not null,
/OFU text references EGB_OFU (key) not null,
/OZU text references EGB_OZU (key),
/OZK text references EGB_OZK (key),
/PRIMARY KEY (key)
/);


create table EGB_WyroznienieGospodarstwRolnychLesnych
(key text not null,
nazwa text not null,
PRIMARY KEY (key));

INSERT INTO EGB_WyroznienieGospodarstwRolnychLesnych VALUES 
('0','jednostkaRejestrowaNieBedacaGospodarstwemRolnymLubLesnym'), 
('1','jednostkaRejestrowaWchodzacaWSkladGospodarstwaRolnego'),
('2','jednostkaRejestrowaWchodzacaWSkladGospodarstwaLesnego');


--

create table EGB_GlebyLIPsNaTerNizIWyz (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_GlebyLIPsNaTerNizIWyz VALUES 
('BZ.','brunatneIRdzawe'), 
('BZ(G)','brunatneGlejowe'),
('CZ.','czarnoziemy');

create table EGB_GlebyTerNizIWyz (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_GlebyTerNizIWyz VALUES 
('AB.','brunatnePloweBielicoweRdzawe'), 
('A.','plowe'),
('B.','brunatne');

create table EGB_GlebyTerGorskich (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_GlebyTerGorskich VALUES 
('H.','inicjalne'), 
('I.','brunatnePloweIBielicowe'),
('J.','mady');

create table EGB_GlebyLIPsNaTerGorskich (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_GlebyLIPsNaTerGorskich VALUES 
('HZ.','inicjalne'), 
('IZ.','brunatnePloweIBielicowe'),
('JZ.','mady');

--budynek--

create table EGB_StatusBudynku (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_StatusBudynku VALUES 
('1','wybudowany'), 
('2','wBudowie'),
('3','objetyNakazemRozbiorki');

create table EGB_RodzajWgKST (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_RodzajWgKST VALUES 
('101','budynekPrzemyslowy'), 
('102','budynekTransportuILacznosci'),
('103','budynekHandlowoUslugowy');

create table EGB_ZakresPrzebudowyBudynku (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_ZakresPrzebudowyBudynku VALUES 
('1','przebudowa'), 
('2','nadbudowaBezZmian'),
('3','czesciowaRozbiorkaBezZmian');

create table EGB_ZrodloDatyBudowy (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_ZrodloDatyBudowy VALUES 
('1','dokument'), 
('2','zrodloNiepotwierdzone'),
('3','szacowana');

create table EGB_FunkcjaBudynku (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_FunkcjaBudynku VALUES 
('1110.Dj','budynekJednorodzinny'), 
('1110.Dl','domLetniskowy'),
('1110.Ls','lesniczowka');

create table EGB_KlasaWgPKOB (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_KlasaWgPKOB VALUES 
('1110','budynkiMieszkalneJednorodzinne'), 
('1121','budynkiODwochMieszkaniach'),
('1122','budynkiOTrzechIWiecejMieszkaniach');

create table EGB_MaterialScianZewnBudynku (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_MaterialScianZewnBudynku VALUES 
('1','mur'), 
('2','drewno'),
('3','inny');

create table EGB_StanUzytkowaniaBudynku (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_StanUzytkowaniaBudynku VALUES 
('1','budynekOddanyDoUzytkowaniaWCalosci'), 
('2','budynekOddanyDoUzytkowaniaWCzesci');

create table EGB_PrzyczynaRozbiorki (
key text NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_PrzyczynaRozbiorki VALUES 
('1','zlyStanBudynku'), 
('2','kolizjaZNowaInwestycja'),
('3', 'inna');

create table EGB_LiczbaLokali (
key integer NOT NULL,
nazwa text NOT NULL,
PRIMARY KEY (key)
);

INSERT INTO EGB_LiczbaLokali VALUES 
(1,'liczbaMieszkan1izbowych'), 
(2,'liczbaMieszkan2izbowych'),
(3, 'liczbaMieszkan3izbowych');

create table EGB_InfOCzesciBudynku(
lokalnyID text PRIMARY KEY not null,
oznaczenieCzesciBudynku text not null,
dataOddaniaDoUzytkowania date not null,
dataRozbiorki date,
przyczynaRozbiorki text references EGB_PrzyczynaRozbiorki (key));


--tables

CREATE TABLE EGB_DzialkaEwidencyjna
(lokalnyID text PRIMARY KEY not null,
przestrzenNazw text not null,
wersjaId date,
startObiekt date not null,
startWersjaObiekt date not null,
koniecWersjiObiekt date not null,
koniecObiekt date not null,
georeferencja geometry(Point, 2180),
idDZIALKI text not null,
powierzchniaEwidencyjna double precision not null,
dodatkoweInformacje text,
geometria geometry(Polygon, 2180),
waznoscOd date,
waznoscDo date,
wartoscGruntu double precision,
dataWyceny date,
numerKW text,
informacjaODokladnReprezentacjiPola text references EGB_ReprezentacjaPowDzialk (key) not null,
nrRejestruZabytkow text,
idRejonuStatystycznego text); 

CREATE TABLE EGB_Klasouzytek
(lokalnyID text PRIMARY KEY not null,
przestrzenNazw text not null,
wersjaId date,
startObiekt date not null,
startWersjaObiekt date not null,
koniecWersjiObiekt date not null,
koniecObiekt date not null,
OFU text references EGB_OFU (key) not null,
OZU text references EGB_OZU (key),
OZK text references EGB_OZK (key),
powierzchniaEwidencyjnaKlasouzytku double precision not  null
);

CREATE TABLE EGB_ArkuszEwidencyjny
(lokalnyID text PRIMARY KEY not null,
przestrzenNazw text not null,
wersjaId date,
startObiekt date not null,
startWersjaObiekt date not null,
koniecWersjiObiekt date not null,
koniecObiekt date not null,
idArkusza text not null,
geometria geometry(MultiPolygon, 2180) 
);


--obreb edwidencyjny--

create table EGB_ObrebEwidencyjny(
lokalnyID text PRIMARY KEY not null,
przestrzenNazw text not null,
wersjaId date,
startObiekt date not null,
startWersjaObiekt date not null,
koniecWersjiObiekt date not null,
koniecObiekt date not null,
geometria geometry(MultiPolygon, 2180) not null,
idObrebu text not null,
nazwaWlasna text 
	);
	
CREATE TABLE EGB_JednostkaEwidencyjna
(lokalnyID text PRIMARY KEY not null,
przestrzenNazw text not null,
wersjaId date,
startObiekt date not null,
startWersjaObiekt date not null,
koniecWersjiObiekt date not null,
koniecObiekt date not null,
geometria geometry(MultiPolygon, 2180) not null,
idJednostkiEwid text not null,
nazwaWlasna text not null);

--/obreb ewidencyjny--

create table EGB_KonturUzytkuGruntowego(
lokalnyID text PRIMARY KEY not null,
przestrzenNazw text not null,
wersjaId date,
startObiekt date not null,
startWersjaObiekt date not null,
koniecWersjiObiekt date not null,
koniecObiekt date not null,
geometria geometry(MultiPolygon, 2180) not null,
idUzytku text not null,
ofu text references EGB_OFU (key) not null);

create table EGB_KonturKlasyfikacyjny(
lokalnyID text PRIMARY KEY not null,
przestrzenNazw text not null,
wersjaId date,
startObiekt date not null,
startWersjaObiekt date not null,
koniecWersjiObiekt date not null,
koniecObiekt date not null,
geometria geometry(MultiPolygon, 2180) not null,
idKonturu text not null,
ozu text references EGB_OZU (key) not null,
ozk text references EGB_OZK (key) not null,
terNizinneIWyzynne text references EGB_GlebyTerNizIWyz (key),
terGorskie text references EGB_GlebyTerGorskich (key),
lakiIPsNaTerNizinnychIWyzynnych text references EGB_GlebyLIPsNaTerNizIWyz (key),
lakiIPsNaTerGorskich text references EGB_GlebyLIPsNaTerGorskich (key)
);

CREATE TABLE EGB_JednostkaRejestrowaGruntow
(lokalnyID text PRIMARY KEY not null,
przestrzenNazw text not null,
wersjaId date,
startObiekt date not null,
startWersjaObiekt date not null,
koniecWersjiObiekt date not null,
koniecObiekt date not null,
idJednostkiRejestrowej text not null,
wyroznienieGospodarstwRolnychLesnych text references EGB_WyroznienieGospodarstwRolnychLesnych (key) not null
);

CREATE TABLE EGB_JednostkaRejestrowaLokali
(lokalnyID text PRIMARY KEY not null,
przestrzenNazw text not null,
wersjaId date,
startObiekt date not null,
startWersjaObiekt date not null,
koniecWersjiObiekt date not null,
koniecObiekt date not null,
idJednostkiRejestrowej text not null,
licznikUdzialuWNieruchomosciWspolnej integer not null,
mianownikUdzialuWNieruchomosciWspolnej integer not null
);

CREATE TABLE EGB_JednostkaRejestrowaBudynkow
(lokalnyID text PRIMARY KEY not null,
przestrzenNazw text not null,
wersjaId date,
startObiekt date not null,
startWersjaObiekt date not null,
koniecWersjiObiekt date not null,
koniecObiekt date not null,
idJednostkiRejestrowej text not null
 );
 
 
CREATE TABLE EGB_Budynek
(lokalnyID text PRIMARY KEY not null,
przestrzenNazw text not null,
wersjaId date,
startObiekt date not null,
startWersjaObiekt date not null,
koniecWersjiObiekt date not null,
koniecObiekt date not null,
idBudynku text not null,
statusBudynku text references EGB_StatusBudynku (key) not null,
rodzajWgKST text references EGB_RodzajWgKST (key) not null,
lacznaPowUzytkLokaliNiewyodrebnionych double precision,
lacznaPowUzytkowaLokaliWyodrebnionych double precision,
powierzchniaUzytkowaBudynkuZObmiarow double precision,
powierzchniaUzytkowaBudynkuWgProjektuBudowlanego double precision,
powierzchniaUzytkowaPomieszczenPrzynaleznychDoLokali double precision,
dodatkoweInformacje text,
rokZakonczeniaPrzebudowy date,
wiekZakonczeniaBudowy integer,
wiekZakonczeniaPrzebudowy  integer,
zakresPrzebudowy text references EGB_ZakresPrzebudowyBudynku (key),
stopienPewnosciUstaleniaDatyPrzebudowy text references EGB_ZrodloDatyBudowy (key),
georeferencja geometry(Point, 2180),
innaFunkcjaBudynku text references EGB_FunkcjaBudynku (key),
geometria geometry(Multipolygon, 2180),
numerKW text,
klasaWgPKOB text references EGB_KlasaWgPKOB (key),
glownaFunkcjaBudynku text references EGB_FunkcjaBudynku (key),
dataWyceny date,
liczbaKondygnacjiNadziemnych integer,
liczbaKondygnacjiPodziemnych integer,
liczbaUjawnionychSamodzielnychLokali integer,
materialScianZewn text references EGB_MaterialScianZewnBudynku (key),
numerRejestruZabytkow text,
powZabudowy geometry(Multipolygon, 2180),
rokZakonczeniaBudowy  date,
wartoscBudynku  double precision,
stopienPewnosciUstaleniaDatyBudowy text references EGB_ZrodloDatyBudowy (key),
stanUzytkowaniaBudynku text references EGB_StanUzytkowaniaBudynku (key),
dataOddaniaDoUzytkowaniaBudynku date,
dataRozbiorkiBudynku date,
przyczynaRozbiorkiBudynku text references EGB_PrzyczynaRozbiorki (key),
informacjaDotyczacaCzesciBudynku text unique, 
liczbaLokaliOOkreslonejLiczbieIzb integer references EGB_LiczbaLokali (key),
acznaLiczbaIzbWBudynku integer 
);


create table delta_konturklasyfikacyjny
(id serial PRIMARY KEY, 
czaszmiany timestamp,
delta double precision);

--relations

create table int_info_info (
idinformacjaDotyczacaCzesciBudynku text references EGB_Budynek (informacjaDotyczacaCzesciBudynku),
idinfoOczesciBudynku text references EGB_InfOCzesciBudynku (lokalnyID),
primary key (idinformacjaDotyczacaCzesciBudynku, idinfoOczesciBudynku ));

create table int_dzialka_budynek (
idbudynku text references EGB_Budynek (lokalnyID),
iddzialki text references EGB_DzialkaEwidencyjna (lokalnyID) not null,
	primary key (idbudynku, iddzialki)
);

alter table EGB_DzialkaEwidencyjna 
add column iddzialkarejestrowagruntow text references EGB_JednostkaRejestrowaGruntow (lokalnyID) unique not null;

alter table EGB_DzialkaEwidencyjna 
add column idarkuszewidencyjny text references EGB_ArkuszEwidencyjny (lokalnyID) unique not null;

alter table EGB_DzialkaEwidencyjna 
add column idobrebewidencyjny text references EGB_ObrebEwidencyjny (lokalnyID) unique not null;

alter table EGB_Klasouzytek
add column iddzialkaewidencyjna text references 
EGB_DzialkaEwidencyjna (lokalnyID) on delete cascade on update cascade unique not null;

alter table EGB_KonturUzytkuGruntowego 
add column idobrebewidencyjny text references EGB_ObrebEwidencyjny (lokalnyID) unique not null;

alter table EGB_KonturKlasyfikacyjny 
add column idobrebewidencyjny text references EGB_ObrebEwidencyjny (lokalnyID) unique;

alter table EGB_ArkuszEwidencyjny 
add column idobrebewidencyjny text references EGB_ObrebEwidencyjny (lokalnyID) unique;


alter table EGB_JednostkaRejestrowaGruntow
add column idobrebewidencyjny text references EGB_ObrebEwidencyjny (lokalnyID) unique not null;

alter table EGB_JednostkaRejestrowaBudynkow
add column idobrebewidencyjny text references EGB_ObrebEwidencyjny (lokalnyID) unique;

alter table EGB_JednostkaRejestrowaLokali
add column idobrebewidencyjny text references EGB_ObrebEwidencyjny (lokalnyID) unique;

alter table EGB_JednostkaRejestrowaLokali
add column idjednostkarejestrowagruntow text references EGB_JednostkaRejestrowaGruntow (lokalnyID) unique;

create table int_jedrejlokal_budynek (
idbudynku text references EGB_Budynek (lokalnyID) not null,
idjedrejlokal text references EGB_JednostkaRejestrowaLokali (lokalnyID) ,
	primary key (idbudynku, idjedrejlokal)
);

alter table EGB_ObrebEwidencyjny
add column idjednostkaewidenycjna text references EGB_JednostkaEwidencyjna (lokalnyID) unique not null;


--geometry index
CREATE INDEX EGB_DzialkaEwidencyjna_idx ON EGB_DzialkaEwidencyjna USING gist(geometria);

CREATE INDEX EGB_DzialkaEwidencyjna_idx2 ON EGB_DzialkaEwidencyjna USING gist(georeferencja);

CREATE INDEX EGB_KonturUzytkuGruntowego_idx ON EGB_KonturUzytkuGruntowego USING gist(geometria);

CREATE INDEX EGB_KonturKlasyfikacyjny_idx ON EGB_KonturUzytkuGruntowego USING gist(geometria);

CREATE INDEX EGB_ArkuszEwidencyjny_idx ON EGB_ArkuszEwidencyjny USING gist(geometria);

CREATE INDEX EGB_Budynek_idx ON EGB_Budynek USING gist(geometria);

CREATE INDEX EGB_Budynek_idx2 ON EGB_Budynek USING gist(georeferencja);

CREATE INDEX EGB_JednostkaEwidencyjna_idx ON EGB_JednostkaEwidencyjna USING gist(geometria);

CREATE INDEX EGB_ObrebEwidencyjny_idx ON EGB_ObrebEwidencyjny USING gist(geometria);

--foreign keys index

CREATE INDEX EGB_DzialkaEwidencyjna_idx3 ON EGB_DzialkaEwidencyjna (iddzialkarejestrowagruntow);

CREATE INDEX EGB_DzialkaEwidencyjna_idx4 ON EGB_DzialkaEwidencyjna (idarkuszewidencyjny);

CREATE INDEX EGB_DzialkaEwidencyjna_idx5 ON EGB_DzialkaEwidencyjna (idobrebewidencyjny);

CREATE INDEX EGB_Klasouzytek_idx2 ON EGB_Klasouzytek (iddzialkaewidencyjna);

CREATE INDEX EGB_KonturUzytkuGruntowego_idx2 ON EGB_KonturUzytkuGruntowego (idobrebewidencyjny);

CREATE INDEX EGB_KonturKlasyfikacyjny_idx2 ON EGB_KonturKlasyfikacyjny (idobrebewidencyjny);

CREATE INDEX EGB_ArkuszEwidencyjny_idx2 ON EGB_ArkuszEwidencyjny (idobrebewidencyjny);

CREATE INDEX EGB_JednostkaRejestrowaGruntow_idx2 ON EGB_JednostkaRejestrowaGruntow (idobrebewidencyjny);

CREATE INDEX EGB_JednostkaRejestrowaBudynkow_idx2 ON EGB_JednostkaRejestrowaBudynkow (idobrebewidencyjny);

CREATE INDEX EGB_JednostkaRejestrowaLokali_idx3 ON EGB_JednostkaRejestrowaLokali (idjednostkarejestrowagruntow);

CREATE INDEX EGB_ObrebEwidencyjny_idx3 ON EGB_ObrebEwidencyjny (idjednostkaewidenycjna);








