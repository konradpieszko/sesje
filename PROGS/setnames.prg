
sqlh =SQLCONNECT("sesjeplenarne")



SQLEXEC(sqlh,"set names 'cp1250'","k1")

SQLDISCONNECT(sqlh)
