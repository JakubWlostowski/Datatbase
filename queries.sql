
/*CREATE VIEW [NajwyzszePromocje] AS
 SELECT Id_promocji, Nazwa, Wysokosc_znizki
	FROM Promocje
	WHERE Wysokosc_znizki > 12;*/
/*SELECT * FROM [NajwyzszePromocje];


SELECT * FROM NajwyzszePromocje;*/

/* 1. Wyswietl nazwy pociagow, ich numery, przewoznikow danego pociagu oraz uslugi w nim wystepujacych alfabetycznie wedlug nazwy pociagu */
SELECT Pociagi.Nazwa_pociagu, Pociagi.Nazwa_przewoznika, Pociagi.Numer_pociagu, Uslugi.Nazwa_uslugi, Uslugi.Rodzaj_uslugi
 FROM Pociagi JOIN Uslugi ON Pociagi.Id_pociagu=Uslugi.FK_ID_POCIAGU ORDER BY Pociagi.Nazwa_pociagu

/* 2. Jak wiele jest uslug w danym pociagu*/

SELECT FK_ID_USLUGI, COUNT(Id_cennika) AS 'Ilosc biletow na usluge', SUM(Cena) AS 'Suma pieniedzy za sprzedane bilety'
FROM Cenniki WHERE Cena >= 10 AND (Rodzaj_biletu='Ulgowy' OR Rodzaj_biletu='Normalny')
GROUP BY FK_ID_USLUGI;

/* 3. Ile komunikatow ogloszono na danej stacji*/

SELECT FK_ID_STACJI, COUNT(Id_komunikatu) AS "Liczba komunikatow"
FROM Komunikaty
GROUP BY FK_ID_STACJI
HAVING COUNT(Id_komunikatu) > 1;

/* 4.  Lista pociagow ktore posiadaja ogolne udogodnienia w swoich wagonach i gdzie numer pociagu jest wiekszy od 100*/

SELECT *
FROM Pociagi
WHERE Id_pociagu IN (SELECT FK_ID_POCIAGU FROM Uslugi WHERE Rodzaj_uslugi='Ogólne udogodnienia')
AND Numer_pociagu > 100;


/* 5.  Lista stacji na ktorej odjezdzaja pociagi miedzy godzina 14 a 18, a id nastêpnej stacji jest wiêksze od 3*/

SELECT *
FROM Stacje
WHERE Id_stacji IN (SELECT FK_ID_STACJI FROM Postoje WHERE Godzina_odjazdu LIKE '14%' OR Godzina_odjazdu LIKE '15%'
OR Godzina_odjazdu LIKE '17%')
AND FK_ID_NASTEPNEJ_STACJI > 3

/* 6.  Nazwa, numer i przewoznik pociagu, stacja na ktorej sie zatrzymuje oraz godziny postoju*/

SELECT Postoje.Godzina_odjazdu, Postoje.Godzina_przyjazdu, Postoje_rzeczywiste.Faktyczna_godzina_odjazdu, Postoje_rzeczywiste.Faktyczna_godzina_przyjazdu, Pociagi.Nazwa_pociagu, Pociagi.Nazwa_przewoznika, Pociagi.Numer_pociagu, Stacje.Nazwa_stacji
FROM Postoje JOIN Postoje_rzeczywiste ON Postoje.Id_postoju=Postoje_rzeczywiste.FK_ID_POSTOJU JOIN Pociagi ON Pociagi.Id_pociagu=Postoje.FK_ID_POCIAGU JOIN Stacje ON Stacje.Id_stacji=Postoje.FK_ID_STACJI
WHERE Nazwa_przewoznika='SKM' OR Nazwa_pociagu='Kazimierz'

/* 7.  Wypisuje spis pociagow oraz sprawdza czy rozklad jazdy danego pociagu jest nadal wazny */

SELECT Pociagi.Numer_pociagu, Pociagi.Nazwa_pociagu, Pociagi.Nazwa_przewoznika,
	CASE
		WHEN Rozklady_jazdy.Data > '25-11-2018' THEN 'Rozklad jazdy wazny'
		WHEN Rozklady_jazdy.Data < '25-11-2018' THEN 'Rozklad jazdy juz niewazny'
	END AS 'Waznosc rozkladu jazdy'
	FROM Rozklady_jazdy, Pociagi WHERE Pociagi.Id_pociagu=Rozklady_jazdy.FK_ID_POCIAGU