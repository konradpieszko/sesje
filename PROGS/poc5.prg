*z wpisywaniem nie ma jak widac najmniejszego problemu..
LOCAL lnHandle
lnHandle =SQLCONNECT("sesjeplenarne")

SET COLLATE To "POLISH"
CLEAR



sql="INSERT into miasta (nazwa_delegata, nazwa_skrot) values ( 'Delegat Oddzia�u ��d�!', 'pl')"

?"instert:"
?SQLEXEC(lnHandle,sql,"kk")

*sql="set names cp1250_polish_ci"
*?"set:"
*?SQLEXEC(lnHandle,sql,"kk")

sql="SELECT CAST(TRIM(nazwa_delegata) as BINARY(1024))as nazwa FROM miasta"
?"select:"
?SQLEXEC(lnHandle,sql,"kk")

SELECT "kk"
SELECT  CAST(nazwa as C(254)) as nazwa FROM "kk" INTO CURSOR kursor2
SELECT "kursor2"
browse
GOTO bottom
SCATTER MEMVAR BLANK
?nazwa

*SELECT  ALLTRIM(CAST(nazwa as C(254))) as nazwa FROM "kk" INTO CURSOR kursor2

*SELECT "kursor2"
*browse






SQLDISCONNECT(lnHandle)