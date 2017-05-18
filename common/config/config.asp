<!--METADATA TYPE= "typelib"  NAME= "ADODB Type Library" FILE="C:\Program Files\Common Files\SYSTEM\ADO\msado15.dll"  -->
<!--METADATA TYPE="typelib" FILE="c:\windows\system32\scrrun.dll"-->
<%OPTION EXPLICIT%>
<%
Response.AddHeader "P3P", "CP=ALL CURa ADMa DEVa TAIa OUR BUS IND PHY ONL UNI PUR FIN COM NAV INT DEM CNT STA POL HEA PRE LOC OTC"
Response.addHeader "pragma", "no-cache"
Response.addHeader "cache-control", "private"
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "No-Cache"
Response.CharSet = "utf-8"
Response.CodePage = 65001
Session.CodePage = 65001
Response.ContentType="text/html;charset=UTF-8"
Response.Expires = -1
%>

<!--#INCLUDE VIRTUAL="/common/com/com.asp"//-->
