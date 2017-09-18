
lcDescriptUtf8 = STRCONV("za¿ó³æ gêœl¹ jaŸñ",9)
 


nzw = lcDescriptUtf8
 
lcSql = "Insert into miasta azwa_delegata, nazwa_skrot) values (?nzw,'ado')"
 
SYS(3101,65001)
 
LOCAL oConn as ADODB.Connection
oConn = CREATEOBJECT("ADODB.Connection")
oConn.ConnectionString = 
oConn.Open()
 
LOCAL oCommand as ADODB.Command
oCommand = CREATEOBJECT("ADODB.Command")
oCommand.ActiveConnection = oConn
oCommand.CommandText = lcSQL
 
 
LOCAL oParameter as ADODB.Parameter
oParameter = CREATEOBJECT("ADODB.Parameter")
oParameter.Type= 202  && adVarWChar
oParameter.Value = pcId
oParameter.Size = LEN(pcID)
oCommand.Parameters.Append(oParameter)
 
 
*** Or wrappered
*this.AdoAddParameter(oCommand,pcDescript)
*this.AdoAddParameter(oCommand,pclDescript)
 
 
lnAffected = 0
? oCommand.Execute(@lnAffected,,128)     && No result set