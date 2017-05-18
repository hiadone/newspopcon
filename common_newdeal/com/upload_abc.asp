<!--#include virtual="/common/config/config.asp"-->
<%

Dim abc, funcNum, CKEditor, langCode, uploadfile
Dim fileNum, addFile, fileSize

Set abc = Server.CreateObject("ABCUpload4.XForm")
abc.Maxuploadsize = 1024*1024*20
abc.AbsolutePath = True
fileNum = abc.item("filename").count

ReDim addFile(fileNum) '파일명을 저장할 배열 변수
ReDim fileSize(fileNum) ' 파일 사이즈를 저장할 배열 변수



dim fso, i, delFile, ofile, strFileName, strFileWholePath, strName, strExt, bExist, countFileName, pFile
set fso = server.createobject("Scripting.FileSystemObject")

FileUpload abc.item("filename") '파일 업로드 처리 Sub 호출(업로드필드, 저장될 폴더, 수정시기존이미지필드)

set abc=nothing
set fso=Nothing

Sub FileUpload(objFile) ' 업로드 처리 Sub

	for i=1 to objFile.count ' 업로드 갯수만큼 for loop
		set ofile = objFile(i)
		strFileName = ofile.SafeFileName '원래 파일명을 얻어온다.
		Call GetFileNameAndExt(strFileName, strName, strExt)
		
		if ofile.Length > 0 Then

			strFileWholePath = GENERAL_CKEDITOR_UPLOAD_DATA & strName & "." & strExt 
			
			fileSize(i-1)=ofile.Length '파일 사이즈

			'imgWidth(i-1) = ofile.imageWidth '이미지 넓이 저장 - 필요시 사용
			'imgHeight(i-1) = ofile.imageHeight '이미지 높이 저장 - 필요시 사용
			'response.write ofile.RawFileName & "/" '파일명 리턴
			'response.write ofile.RawFileType & "/" '확장자 리턴
			'response.write ofile.RawFilePath & "/" '파일명 리턴
			'response.write ofile.FileType & "/" '확장자
			'response.write ofile.imageType & "/" '이미지 일 경우 2, 아닐 경우 0 리턴
			'response.write ofile.imageWidth & "/" '이미지 일 경우 넓이, 아닐 경우 0 리턴
			'response.write ofile.imageHeight & "<br>" '이미지 일 경우 높이, 아닐 경우 0리턴

			addFile(i-1)=strName & "." & strExt  '실제 저장될 파일명 
			ofile.Save strFileWholePath '저장한다.
			
		Else '파일이 없을경우 변수값 할당
			addFile(i-1) = Null
			fileSize(i-1) = 0
			'imgWidth(i-1) = 0
			'imgHeight(i-1) = 0
		end if
	Next

End Sub




 '유니크한 파일명 만들기
Function MakeUniqueFileName(ByVal pStr )
	Dim strMakeName
	Dim dtNow
	dtNow = now()
	Randomize()
	strMakeName = pStr
	strMakeName = strMakeName & "_"
	strMakeName = strMakeName & Year(dtNow)
	strMakeName = strMakeName & LeftFillString( Month(dtNow),   "0", 2 )
	strMakeName = strMakeName & LeftFillString( Day(dtNow),     "0", 2 )
	strMakeName = strMakeName & LeftFillString( Hour(dtNow),    "0", 2 )
	strMakeName = strMakeName & LeftFillString( Minute(dtNow),  "0", 2 )
	strMakeName = strMakeName & LeftFillString( Second(dtNow),  "0", 2 )
	strMakeName = strMakeName & LeftFillString ( Int(Rnd * 1000000), "0", 7 )
	MakeUniqueFileName = strMakeName
End Function

' 파일 확장자 추출
Sub GetFileNameAndExt(ByVal strFilename, ByRef pName, ByRef pExt )
	Dim nPos
	nPos = InStrRev( strFilename, ".", -1, 1 ) '// Text Compare
	
	if nPos > 0 Then
		pName = MakeUniqueFileName(Mid( strFilename,1, nPos-1 ))
		pExt = Mid( strFilename, nPos+1 )
	end If
End Sub


Public Function LeftFillString ( strValue, fillChar, makeLength )
	Dim strRet
	Dim strLen, diff, i

	strRet  = ""
	strLen  = Len(strValue)
	diff    = CInt(makeLength) - strLen

	if diff > 0 then
		for i=1 to diff
			strRet = strRet & CStr(fillChar)
		next
	end if

	LeftFillString = strRet & CStr(strValue)
End Function
%>





