<!--#include virtual="/common/config/config.asp"-->
<%

Dim abc, funcNum, fileUrl, message
Dim fileNum, addFile, fileSize

funcNum = RequestQuery("CKEditorFuncNum")

Set abc = Server.CreateObject("ABCUpload4.XForm")
abc.Maxuploadsize = 1024*1024*20
abc.AbsolutePath = True
fileNum = abc.item("upload").count



dim fso, i, delFile, ofile, strFileName, strFileWholePath, strName, strExt, bExist, countFileName, pFile
set fso = server.createobject("Scripting.FileSystemObject")

FileUpload abc.item("upload") '파일 업로드 처리 Sub 호출(업로드필드, 저장될 폴더, 수정시기존이미지필드)

set abc=nothing
set fso=Nothing

Sub FileUpload(objFile) ' 업로드 처리 Sub

	set ofile = objFile(1)

	strFileName = ofile.SafeFileName '원래 파일명을 얻어온다.

	Call GetFileNameAndExt(strFileName, strName, strExt)

	if ofile.Length > 0 Then

		If (LCase(strExt) = "jpg" or LCase(strExt) = "jpeg" or LCase(strExt) = "gif" or LCase(strExt) = "bmp" or LCase(strExt) = "png") Then
			strFileWholePath = GENERAL_CKEDITOR_UPLOAD_DATA & strName & "." & strExt 
			
			fileUrl = GENERAL_CKEDITOR_FILE_URL & strName & "." & strExt 

			fileSize = ofile.Length '파일 사이즈

			'imgWidth(i-1) = ofile.imageWidth '이미지 넓이 저장 - 필요시 사용
			'imgHeight(i-1) = ofile.imageHeight '이미지 높이 저장 - 필요시 사용
			'response.write ofile.RawFileName & "/" '파일명 리턴
			'response.write ofile.RawFileType & "/" '확장자 리턴
			'response.write ofile.RawFilePath & "/" '파일명 리턴
			'response.write ofile.FileType & "/" '확장자
			'response.write ofile.imageType & "/" '이미지 일 경우 2, 아닐 경우 0 리턴
			'response.write ofile.imageWidth & "/" '이미지 일 경우 넓이, 아닐 경우 0 리턴
			'response.write ofile.imageHeight & "<br>" '이미지 일 경우 높이, 아닐 경우 0리턴

			'addFile=strName & "." & strExt  '실제 저장될 파일명 
			ofile.Save strFileWholePath '저장한다.
			message = "파일을 성공적으로 적용 하였습니다."
		Else 
			message = "jpg, jpeg, gif, bmp, png 종류의 이미지 파일만 적용 됩니다."
		End If 

		
	Else '파일이 없을경우 변수값 할당
		addFile(i-1) = Null
		fileSize(i-1) = 0
		message = "적용할 파일이 업습니다."
	End If 

End Sub



%>
<script type="text/javascript">
    // 가장 중요한 부분인것 같군요
    // ckeditor의 순번과 유효한 파일 경로만 넘기면 자동으로 이미지나 플래쉬 속성 변경 탭으로 이동합니다.
    window.parent.CKEDITOR.tools.callFunction(<%=funcNum %>, '<%=fileUrl%>', '<%=message%>');
</script>



