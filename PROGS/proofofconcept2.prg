*POC - konwersja u z utf z mysql do vfp
LOCAL lnHandle
lnHandle =SQLCONNECT("sesjeplenarne")

*uwaga- wnioski
*1) znaki [] sa rownowazne podwojnym cudzysłowom... dziwne..

SQLEXEC(lnHandle,"SELECT CAST(nazwa_delegata AS BINARY(8000) )AS nazwa  FROM miasta","k1")

SELECT "k1"

****obcina znaki ale limit do 254
SELECT  STRCONV (trim(CAST(nazwa as Q(254))),11)  as nazwa FROM "k1" INTO CURSOR kursor2
****bez limitu ale problem ze znakami
*SELECT CAST(STRCONV(nazwa,11) as M) as nazwa FROM "k1" INTO CURSOR kursor2


SELECT "kursor2"

GOTO bottom
SCATTER NAME obiekt
***dla stringa
?obiekt.nazwa
****dla memo
*MODIFY MEMO nazwa




