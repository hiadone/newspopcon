<!--#include virtual="/common/config/config.asp"-->
<%	
	Dim Upload, message
	Dim sOrgFilename
	' DEXT Upload를 사용하고 있습니다.
	Set Upload = Server.CreateObject("DEXT.FileUpload")
	Upload.DefaultPath = GENERAL_UPLOAD_DATA'Server.MapPath ("/data")
	Upload.AutoMakeFolder = true ' 자동으로 폴더명을 생성하라 !

	Dim folderPath
	Dim upload_filename, img_filesize, fileExt, path
	folderPath = GENERAL_UPLOAD_DATA
	upload_filename = Upload("file").Filename
	path = Upload("path")
	sOrgFilename = upload_filename

	if IsNull(Upload("file")) or Upload("file").FileLen <= 0 then
		upload_filename = ""
		img_filesize = 0
		message = "업로드 파일이 존재하지 않습니다."
	Else
		fileExt = GetFileExt(upload_filename)
		If (LCase(fileExt) = "jpg" or LCase(fileExt) = "jpeg" or LCase(fileExt) = "gif" or LCase(fileExt) = "bmp" or LCase(fileExt) = "png" Or LCase(fileExt) = "zip" or LCase(fileExt) = "tar" or LCase(fileExt) = "gz" or LCase(fileExt) = "bz2" or LCase(fileExt) = "rar"  or LCase(fileExt) = "alz"  or LCase(fileExt) = "txt"  or LCase(fileExt) = "hwp"  or LCase(fileExt) = "pdf"  or LCase(fileExt) = "hwp" or LCase(fileExt) = "doc"  or LCase(fileExt) = "docx"  or LCase(fileExt) = "xls"  or LCase(fileExt) = "xlsx"  or LCase(fileExt) = "ppt"  or LCase(fileExt) = "pptx" or LCase(fileExt) = "xlsm") Then
			upload_filename = MakeUniqueFileName("file") & "." & GetFileExt(upload_filename)
			img_filesize = Upload("file").FileLen
			if img_filesize > 0 then
				' 확장자 체크 해야 하는데 귀찮아서
				' Request("type") 으로 Images / Flash 구별해서 확장자 추출함수인 GetFileExt(upload_filename) 이걸로 체크하면 되겠죠
				' 이미지는 jpg, gif, png..   플래쉬는 swf 파일만.. ㅎㅎㅎ
				' 만성피로와 귀찮음으로 그냥 넘어가기.. 
				'response.write "title : " & folderPath & "\" & upload_filename & "<br>"
				Upload("file").SaveAs GENERAL_UPLOAD_FILE_ROOT & upload_filename'folderPath & "\" & path & "\" & upload_filename
				message = "정상적으로 파일을 업로드했습니다."
			else
				message = "업로드 파일 사이즈가 0입니다."
			end if
		Else 
			message = "이미지파일만 업로드 가능 합니다."
		End If 
        
    end if
    
    'fileUrl = "/data/ckeditor/" & upload_filename
   Response.write sOrgFilename & "|" & upload_filename & "|" & GENERAL_UPLOAD_FILE_ROOT & upload_filename
%>