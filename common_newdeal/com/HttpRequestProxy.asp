<!--#include virtual="common/com/com.asp"//-->
<%
'Response.Buffer = false
'Response.ContentType = "text/xml"
'Response.CharSet = "euc-kr"
%>
<%
Dim url : url = RequestQuery("url")
Dim pHttpObject
Dim tmp

Set pHttpObject = Server.CreateObject("Microsoft.XMLHTTP")

'// URL 호출
pHttpObject.Open "GET", url, false

Response.Write pHttpObject.send

tmp = pHttpObject.responseText

Set pHttpObject = Nothing

'Response.Write tmp
%>