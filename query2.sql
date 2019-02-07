
CREATE TABLE Pociagi
(
	Id_pociagu INT PRIMARY KEY,
	Numer_pociagu INT NOT NULL UNIQUE,
	Nazwa_pociagu CHAR(20),
	Nazwa_przewoznika CHAR(20) NOT NULL,
	CHECK (Numer_pociagu > 0)
);

CREATE TABLE Typy_wagonow
(
	Id_wagonu INT PRIMARY KEY,
	Numer_wagonu INT NOT NULL,
	Klasa CHAR(15) NOT NULL,
	Ilosc_miejsc_w_przedziale INT NOT NULL,
	Numer_miejsca INT NOT NULL,
	CHECK(Ilosc_miejsc_w_przedziale > 1)
);

CREATE TABLE Zawieranie
(
	FK_ID_POCIAGU INT NOT NULL  REFERENCES Pociagi ON UPDATE CASCADE PRIMARY KEY,
	FK_ID_TYPU_WAGONU INT NOT NULL REFERENCES Typy_wagonow
);

CREATE TABLE Uslugi
(
	Id_uslugi INT PRIMARY KEY,
	Nazwa_uslugi CHAR(50) NOT NULL,
	Rodzaj_uslugi CHAR(50),
	FK_ID_POCIAGU INT NOT NULL REFERENCES Pociagi ON UPDATE CASCADE
);

CREATE TABLE Promocje
(
	Id_promocji INT PRIMARY KEY,
	Nazwa CHAR(60),
	Wysokosc_znizki INT NOT NULL
);

CREATE TABLE Cenniki
(
	Id_cennika INT PRIMARY KEY,
	Cena INT NOT NULL,
	Rodzaj_biletu CHAR(10) NOT NULL,
	FK_ID_USLUGI INT NOT NULL REFERENCES Uslugi,
	FK_ID_PROMOCJI INT REFERENCES Promocje ON DELETE CASCADE ON UPDATE CASCADE,
);

CREATE TABLE Rozklady_jazdy
(
	Id_rozkladu INT PRIMARY KEY,
	Data DATE NULL,
	FK_ID_POCIAGU INT NOT NULL REFERENCES Pociagi ON UPDATE CASCADE
);

CREATE TABLE Stacje
(
	Id_stacji INT PRIMARY KEY,
	Nazwa_stacji CHAR(20) NOT NULL UNIQUE,
	FK_ID_NASTEPNEJ_STACJI INT NULL REFERENCES Stacje 
);

CREATE TABLE Postoje
(
	Id_postoju INT PRIMARY KEY,
	Godzina_odjazdu CHAR(5) NOT NULL,
	Godzina_przyjazdu CHAR(5) NOT NULL,
	Numer_peronu CHAR(1) NOT NULL,
	FK_ID_POCIAGU INT NOT NULL REFERENCES Pociagi ON UPDATE CASCADE,
	FK_ID_STACJI INT NOT NULL REFERENCES Stacje
);

CREATE TABLE Postoje_rzeczywiste
(
	Id_postoju_rzeczywistego INT PRIMARY KEY,
	Faktyczna_godzina_przyjazdu CHAR(5) NOT NULL,
	Faktyczna_godzina_odjazdu CHAR(5) NOT NULL, 
	FK_ID_ROZKLADU_JAZDY INT NOT NULL REFERENCES Rozklady_jazdy,
	FK_ID_POSTOJU INT NOT NULL REFERENCES Postoje
);

CREATE TABLE Komunikaty
(
	Id_komunikatu INT PRIMARY KEY,
	Tresc CHAR(150) NOT NULL UNIQUE,
	Rodzaj CHAR(20) NOT NULL,
	FK_ID_POSTOJU_RZECZYWISTEGO INT NULL REFERENCES Postoje_rzeczywiste,
	FK_ID_STACJI INT NOT NULL REFERENCES Stacje
);


CREATE NONCLUSTERED INDEX IndexNie_promocje ON Promocje(Nazwa, Wysokosc_znizki);

CREATE NONCLUSTERED INDEX IndexNie_Typy_wagonow ON Typy_wagonow(Numer_wagonu, Klasa, Ilosc_miejsc_w_przedziale, Numer_miejsca);