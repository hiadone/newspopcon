<!--#include virtual="/common/config/config.asp"-->
<%
'1) "Content-disposition: attachment"를 쓰는 대신, "Content-disposition: inline"을 사용합니다.
'2) Response.Buffer = False 로 지정합니다.
'3) Response.ContentType = "application/x-msdownload" 로 지정합니다.
'4) Response.AddHeader "Content-Length", 파일크기 를 지정합니다.
'5) Response.CacheControl = "public" 으로 지정합니다.
Dim sFileUrl, sFileName
Dim oObjStrem, sDownload
sFileUrl = stripslashes(Is_Null(RequestForm("hdn_download_path"), ""))
If (sFileUrl = "") Then
	sFileUrl = stripslashes(Is_Null(RequestQuery("hdn_download_path"), ""))
End If 
sFileName = Mid(sFileUrl, InstrRev(sFileUrl,"\") + 1)  '파일명

sFileUrl = GENERAL_MAIN_ROOT & sFileUrl

'Response.ContentType = "application/unknown"
Response.ContentType = "application/x-msdownload"
Response.AddHeader "Content-Disposition","attachment; filename=" & sFileName
Set oObjStrem = Server.CreateObject("ADODB.Stream")
oObjStrem.Open
oObjStrem.Type = 1
oObjStrem.LoadFromFile sFileUrl

sDownload = oObjStrem.Read
Response.BinaryWrite sDownload

oObjStrem.Close
Set oObjStrem = nothing

If err.number<>0 Then
	Response.Write err.Description
End If

Function stripslashes(str)
	'str = Trim(str)
	If isNull(str) or str="" Then
		stripslashes = ""
	Else
		str = Replace(str, "\\","\")
		str = Replace(str, "/","\")
		stripslashes = str
	End if
End Function
%>
