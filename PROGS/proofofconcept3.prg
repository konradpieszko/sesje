*POC 3 - wysy�anie danych z polskimi znakami do WFP.......................
*nie za bardzo chce dzia�ac - trzeba sprobowac z ADO
DO "c:\program files\microsoft visual foxpro 9\sesje_send_recieve_string.prg"
LOCAL lnHandle
lnHandle =SQLCONNECT("sesjeplenarne")

LOCAL lTest

*lTest = "Delegat Oddzia�u ��d�" 
*nIle=LEN(lTest)
*lTest=TRIM(lTest)

*FOR i=1 TO (25-nIle)
*lTest=LTest+" "
*ENDFOR
*?LEN(lTest)

wstaw=SSEND("za��� g�l� ",25)
lTest=CREATEBINARY(wstaw)
*?lTest


sql="INSERT into miasta (nazwa_delegata, nazwa_skrot) values ( CAST(CAST(?lTest as BINARY(30)) as CHAR(30)), 'pl')"
*?SQLEXEC(lnHandle,"INSERT into miasta (nazwa_delegata, nazwa_skrot) values ( CAST(CAST(?lTest as BINARY(30)) as CHAR(30)), 'pl')","kk")


*?SQLEXEC(lnHandle,"INSERT into glosowania (plenarka_id, nazwa, typ, zakonczone, opiswyniku) values (1, CAST(CAST(?lTest as BINARY(250)) as CHAR(250)), 'pl', 1, 'victory')","kk")

*?"wstaw:"
*?wstaw
*sql="INSERT into miasta (nazwa_delegata, nazwa_skrot) values ("+wstaw+", 'pl')"
*?"sql:" 
*?sql
*InputBOX("in","in",sql)
?SQLEXEC(lnHandle,sql,"kk")



SQLDISCONNECT(lnHandle)