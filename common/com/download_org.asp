<%
Response.Buffer = False

phyFilePath = Server.MapPath(filePath) & "\" 

phyFilePath = phyFilePath & fileName

Dim oFSO : Set oFSO = Server.CreateObject("Scripting.FileSystemObject")

Dim oFile : Set oFile = oFSO.GetFile(phyFilePath)	

Response.AddHeader "Content-Disposition","attachment;filename=" & fileOrgName
Response.AddHeader "Content-Length", oFile.Size
Response.ContentType = "application/unknown"
Response.CacheControl = "public"

'다운로드 개체생성
Dim objDownload : Set objDownload = Server.CreateObject("DEXT.FileDownload")
'다운로드
objDownload.Download phyFilePath

Set objDownload = Nothing
Set oFile = Nothing
Set oFSO = Nothing
%>