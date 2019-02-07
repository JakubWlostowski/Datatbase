/* POCIAGI */

INSERT INTO Pociagi VALUES ('1', '165', 'Chrobry', 'SKM');
INSERT INTO Pociagi VALUES ('2', '321', '£okietek', 'SKM');
INSERT INTO Pociagi VALUES ('32', '132', 'Mieszko', 'SKM');
INSERT INTO Pociagi VALUES ('43', '437', 'Kazimierz', 'SKS');
INSERT INTO Pociagi VALUES ('5', '35', 'Jagie³³o', 'SKS');
INSERT INTO Pociagi VALUES ('6', '21', 'Zbyszko', 'SKM');
INSERT INTO Pociagi VALUES ('7', '54', 'Paderewski', 'SKM');
INSERT INTO Pociagi VALUES ('8', '143', 'Pi³sudski', 'SKM');
INSERT INTO Pociagi VALUES ('9', '355', 'Dmowski', 'SKS');
INSERT INTO Pociagi VALUES ('10', '13', 'Skar¿yñski', 'SKM');

/* TYPY WAGONOW */

INSERT INTO Typy_wagonow VALUES ('1', '12', 'Pierwsza', '6', '3');
INSERT INTO Typy_wagonow VALUES ('2', '4', 'Deluxe', '2', '1');
INSERT INTO Typy_wagonow VALUES ('3', '5', 'Pierwsza', '6', '6');
INSERT INTO Typy_wagonow VALUES ('4', '1', 'Druga', '12', '5');
INSERT INTO Typy_wagonow VALUES ('5', '3', 'Druga', '12', '7');
INSERT INTO Typy_wagonow VALUES ('6', '9', 'Druga', '12', '1');
INSERT INTO Typy_wagonow VALUES ('7', '2', 'Deluxe', '3', '3');
INSERT INTO Typy_wagonow VALUES ('8', '9', 'Pierwsza', '6', '2');
INSERT INTO Typy_wagonow VALUES ('9', '7', 'Druga', '12', '12');
INSERT INTO Typy_wagonow VALUES ('10', '8', 'Pierwsza', '4', '3');

/* USLUGI */

INSERT INTO Uslugi VALUES ('1', 'Bar', 'Gastronomia', '1');
INSERT INTO Uslugi VALUES ('2', 'Porêcze dla niepe³nosprawnych', 'Udogodnienia dla niepe³nosprawnych', '32');
INSERT INTO Uslugi VALUES ('3', 'Gniazdko pod siedzeniem', 'Ogólne udogodnienia', '43');
INSERT INTO Uslugi VALUES ('4', 'Wjazd dla niepe³nosprawnych', 'Udogodnienia dla niepe³nosprawnych', '8');
INSERT INTO Uslugi VALUES ('5', 'Toaleta', 'Ogólne udogodnienia', '10');
INSERT INTO Uslugi VALUES ('6', 'Skórzane fotele', 'Ogólne udogonienia', '9');
INSERT INTO Uslugi VALUES ('7', 'Klimatyzacja', 'Ogólne udogodnienia', '9');
INSERT INTO Uslugi VALUES ('8', 'Toaleta dla niepe³nosprawnych', 'Udogodnienia dla niepe³nosprawnych', '6');
INSERT INTO Uslugi VALUES ('9', 'Porêcze na rowery', 'Ogólne udogodnienia','5');
INSERT INTO Uslugi VALUES ('10', 'Œmietniki', 'Ogólne udogodnienia', '32');


/* PROMOCJE */

INSERT INTO Promocje VALUES ('1', 'Miko³ajkowa promocja', '15');
INSERT INTO Promocje VALUES ('2', 'Wiosenna promocja', '5');
INSERT INTO Promocje VALUES ('3', 'Kup 1 bilet na drugi otrzymaj 10 z³ zni¿ki', '10');
INSERT INTO Promocje VALUES ('4', 'Œwiêta z SKM', '30');
INSERT INTO Promocje VALUES ('5', 'Promocja na pocz¹tek roku szkolnego', '13');
INSERT INTO Promocje VALUES ('6', 'Wielka rodzina', '10');
INSERT INTO Promocje VALUES ('7', 'Na wakacje z SKM', '8');
INSERT INTO Promocje VALUES ('8', 'Promocja dla seniorów', '20');
INSERT INTO Promocje VALUES ('9', 'Promocja na 100-lecie niepodleg³oœci', '10');
INSERT INTO Promocje VALUES ('10', 'Promocja na ferie', '12');

/* CENNIKI */

INSERT INTO Cenniki VALUES ('1', '30', 'Normalny', '2', '1');
INSERT INTO Cenniki VALUES ('2', '15', 'Ulgowy', '7', '5');
INSERT INTO Cenniki VALUES ('3', '30', 'Ulgowy', '5', '4');
INSERT INTO Cenniki VALUES ('4', '30', 'Ulgowy', '6', '7');
INSERT INTO Cenniki VALUES ('5', '30', 'Normalny', '8', '2');
INSERT INTO Cenniki VALUES ('6', '30', 'Normalny', '10', '7');
INSERT INTO Cenniki VALUES ('7', '30', 'Normalny', '7', '1');
INSERT INTO Cenniki VALUES ('8', '30', 'Senior', '4', '5');
INSERT INTO Cenniki VALUES ('9', '30', 'Senior', '3', '6');
INSERT INTO Cenniki VALUES ('10', '30', 'Ulgowy', '1', '7');

/* ROZKLADY JAZDY */

INSERT INTO Rozklady_jazdy VALUES ('1', '21.11.2018', '43');
INSERT INTO Rozklady_jazdy VALUES ('2', '24.11.2018', '1');
INSERT INTO Rozklady_jazdy VALUES ('3', '05.12.2018', '32');
INSERT INTO Rozklady_jazdy VALUES ('4', '23.10.2018', '6');
INSERT INTO Rozklady_jazdy VALUES ('5', '25.09.2018', '8');
INSERT INTO Rozklady_jazdy VALUES ('6', '31.10.2018', '7');
INSERT INTO Rozklady_jazdy VALUES ('7', '04.08.2018', '2');
INSERT INTO Rozklady_jazdy VALUES ('8', '11.03.2018', '10');
INSERT INTO Rozklady_jazdy VALUES ('9', '11.11.2018', '9');
INSERT INTO Rozklady_jazdy VALUES ('10', '17.07.2018', '5');

/* STACJE */

INSERT INTO Stacje VALUES ('10', 'Gdynia Or³owo', '10');
INSERT INTO Stacje VALUES ('9', 'Kamienny Potok', '10');
INSERT INTO Stacje VALUES ('8', 'Sopot Wyœcigi', '9');
INSERT INTO Stacje VALUES ('7', 'Gdañsk ¯abianka', '8');
INSERT INTO Stacje VALUES ('6', 'Gdañsk Oliwa', '7');
INSERT INTO Stacje VALUES ('5', 'Gdañsk Przymorze', '6');
INSERT INTO Stacje VALUES ('4', 'Zaspa SKM', '5');
INSERT INTO Stacje VALUES ('3', 'Politechnika', '4');
INSERT INTO Stacje VALUES ('2', 'Gdañsk Stocznia', '3');
INSERT INTO Stacje VALUES ('1', 'Gdañsk G³ówny', '2');


/* POSTOJE */

INSERT INTO Postoje VALUES ('1', '14:50', '14:45', '3', '43', '1');
INSERT INTO Postoje VALUES ('2', '10:25', '10:15', '2', '8', '4');
INSERT INTO Postoje VALUES ('3', '17:10', '17:00', '1', '2', '10');
INSERT INTO Postoje VALUES ('4', '11:40', '11:30', '3', '1', '9');
INSERT INTO Postoje VALUES ('5', '14:50', '14:45', '5', '5', '8');
INSERT INTO Postoje VALUES ('6', '23:45', '23:40', '3', '6', '6');
INSERT INTO Postoje VALUES ('7', '09:25', '09:20', '1', '7', '7');
INSERT INTO Postoje VALUES ('8', '07:45', '07:40', '2', '9', '5');
INSERT INTO Postoje VALUES ('9', '16:00', '15:55', '4', '10', '2');
INSERT INTO Postoje VALUES ('10', '18:00', '17:55', '1', '32', '3');

/* POSTOJE RZECZYWISTE */

INSERT INTO Postoje_rzeczywiste VALUES ('1', '14:47', '14:52', '1', '1');
INSERT INTO Postoje_rzeczywiste VALUES ('2', '10:18', '10:28', '2', '2');
INSERT INTO Postoje_rzeczywiste VALUES ('3', '17:05', '17:12', '3', '3');
INSERT INTO Postoje_rzeczywiste VALUES ('4', '11:33', '11:45', '4', '4');
INSERT INTO Postoje_rzeczywiste VALUES ('5', '14:49', '14:53', '5', '5');
INSERT INTO Postoje_rzeczywiste VALUES ('6', '23:43', '23:46', '6', '6');
INSERT INTO Postoje_rzeczywiste VALUES ('7', '09:21', '09:25', '7', '7');
INSERT INTO Postoje_rzeczywiste VALUES ('8', '07:39', '07:45', '8', '8');
INSERT INTO Postoje_rzeczywiste VALUES ('9', '15:56', '16:00', '9', '9');
INSERT INTO Postoje_rzeczywiste VALUES ('10', '17:57', '18:03', '10', '10');

/* KOMUNIKATY */

INSERT INTO Komunikaty VALUES ('1', 'OpóŸnienie pomiêdzy stacjami Politechnika i Zaspa SKM spowodowane wykolejeniem poci¹gu. Za utrudnienia przepraszamy'
, 'Wypadek', '1', '3');
INSERT INTO Komunikaty VALUES ('2', 'Pozostawiono baga¿ na siedzeniu. Po odbiór zapraszamy do biura rzeczy znalezionych na stacji.'
, 'Rzeczy znalezione', '2','3');
INSERT INTO Komunikaty VALUES ('3', 'Brak pr¹du w pocagu proszê o zachowanie spokoju. Usterka jest w trakcie usuwania.'
, 'Usterka', '3', '3');
INSERT INTO Komunikaty VALUES ('4', 'Toaleta w trakcie naprawy. Za utrudnienia przepraszamy!', 'Usterka', '4', '1');
INSERT INTO Komunikaty VALUES ('5', 'Zderzanie poci¹gu z dzikim zwierzêciem. Mo¿liwe opóŸnienia!', 'Wypadek', '5', '5');
INSERT INTO Komunikaty VALUES ('6', 'Zepsute tory, proszê o cierpliwoœæ ze wzglêdu na naprawê!', 'Usterka', '6', '1');
INSERT INTO Komunikaty VALUES ('7', 'Prosimy mieæ na oku swój baga¿. Baga¿ pozostwiony bez opieki zostanie zniszczony na koszt klienta.'
, 'Rzeczy znalezione', '7', '5');
INSERT INTO Komunikaty VALUES ('8', 'Remont torów na trasie. Za utrudnienia przepraszamy', 'Usterka', '8', '8');
INSERT INTO Komunikaty VALUES ('9', 'Zapraszamy wszystkich pasa¿erów do baru po darmow¹ herbatê!', 'Us³ugi', '9', '9');
INSERT INTO Komunikaty VALUES ('10', 'Proszê przygotowaæ bilety do kontroli!', 'Ogólne', '10', '9');

/* ZAWIERANIE */

INSERT INTO Zawieranie VALUES ('1', '2')
INSERT INTO Zawieranie VALUES ('2', '1');
INSERT INTO Zawieranie VALUES ('32', '3');
INSERT INTO Zawieranie VALUES ('43', '5');
INSERT INTO Zawieranie VALUES ('5', '4');
INSERT INTO Zawieranie VALUES ('6', '6');
INSERT INTO Zawieranie VALUES ('7', '8');
INSERT INTO Zawieranie VALUES ('8', '7');
INSERT INTO Zawieranie VALUES ('9', '10');
INSERT INTO Zawieranie VALUES ('10', '9');