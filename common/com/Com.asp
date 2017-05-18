<!--#INCLUDE VIRTUAL="/common/com/conn.asp"//-->
<%
'///////////////////////////////////////////////////////////////////////////////////////////////////

'// 전체 서비스 관련 상수
'///////////////////////////////////////////////////////////////////////////////////////////////////
'// 메인 URL
CONST GENERAL_MAIN_URL				= "http://newspopcon.com"
CONST GENERAL_MOBILE_MAIN_URL		= "http://newspopcon.com"
CONST GENERAL_MAIN_LINK_URL			= "http://newspopcon.com/"
CONST GENERAL_MAIN_URL_HTTPX		= "newspopcon.com"
'// 로그인 URL
CONST GENERAL_LOGIN_URL				= "http://newspopcon.com/member/login/"
'///////////////////////////////////////////////////////////////////////////////////////////////////
'// 로그아웃 URL
CONST GENERAL_LOGOUT_URL			= "http://newspopcon.com/login/logout.asp"
'///////////////////////////////////////////////////////////////////////////////////////////////////
'// 서비스 별 URL
'///////////////////////////////////////////////////////////////////////////////////////////////////

'///////////////////////////////////////////////////////////////////////////////////////////////////
'// 서비스 별 코드
'///////////////////////////////////////////////////////////////////////////////////////////////////

'///////////////////////////////////////////////////////////////////////////////////////////////////
'// 서비스 별 영문
'///////////////////////////////////////////////////////////////////////////////////////////////////
'Const GENERAL_UPLOAD_DATA = "D:\WWW_FIT\data"
Const GENERAL_MAIN_ROOT = "D:\html\hiadone"
Const GENERAL_UPLOAD_DATA = "D:\html\hiadone\data\"
Const GENERAL_CKEDITOR_UPLOAD_DATA = "D:\html\hiadone\data\ckeditor\"
Const GENERAL_UPLOAD_GALLERY_ROOT = "/data/gallery_img/"
Const GENERAL_UPLOAD_FILE_ROOT = "/data/"
Const GENERAL_CKEDITOR_FILE_URL = "/data/ckeditor/"
'///////////////////////////////////////////////////////////////////////////////////////////////////
'// 현재 페이지 정보
'///////////////////////////////////////////////////////////////////////////////////////////////////
Dim sThisPageUrl, sThisPageQuery, sThisPageName
sThisPageUrl = Request.ServerVariables("URL")

sThisPageName = Mid(sThisPageUrl, InstrRev(sThisPageUrl, "/")+1)
sThisPageQuery = Request.ServerVariables("QUERY_STRING")

Dim sThisUrlDomain : sThisUrlDomain = Request.ServerVariables("SERVER_NAME")
Dim sThisUserClientIp : sThisUserClientIp = Request.ServerVariables("REMOTE_HOST")
Dim sBeforeUserBrowser : sBeforeUserBrowser = request.ServerVariables("HTTP_REFERER")

'//금일 날자 지정 변수
Dim CURRENT_YYYY : CURRENT_YYYY = Year(Date)
Dim CURRENT_MONTH : CURRENT_MONTH = FillDigit(month(Date), "0", 2, "FRONT")
Dim CURRENT_DAY : CURRENT_DAY = FillDigit(Day(Date), "0", 2, "FRONT")

'//레프트 메뉴를 위해 변수 추가
Dim sLeftMenu
Dim sRightMenuNum

'//탑 메뉴를 위해 변수 추가
Dim sTopMenu : sTopMenu = GetUserGrade()


Function GetDomainName(ByVal P_Full_Domain)
	If ( P_Full_Domain = "" ) Then
		GetDomainName = P_Full_Domain
		Exit Function
	End If

	If ( Instr(P_Full_Domain, ".") > 0 ) Then
		P_Full_Domain = Mid(P_Full_Domain, Instr(P_Full_Domain, ".") + 1)
	End If
	GetDomainName = Trim(P_Full_Domain)
End Function



'***************************

'	Method Name : Is_Null
'	Description : Null 값을 대상 값으로 치환

'***************************
Function Is_Null(ByVal str, ByVal replace_v)
	If ( IsNull(str)  or Trim(str) = "") Then
		str = replace_v
	End If
	Is_Null = Trim(str)
End Function

'///////////////////////////////////////////////////////////////////////////////////////////////////
'// Request 정보
'///////////////////////////////////////////////////////////////////////////////////////////////////
'-- Request.Form 구현
Function RequestForm(ByVal Param)
	RequestForm = ConvertTextFromHtml(Replace(Request.Form(Trim(Param)), "'", "''"))
End Function


'-- Request.Query 구현
Function RequestQuery(ByVal Param)

	Dim bInjectResult
	Dim pQueryString
	pQueryString = ConvertTextFromHtml(Replace(Request.QueryString(Trim(Param)), "'", "''"))
	bInjectResult = IsSqlInjectString(pQueryString)
	If ( bInjectResult ) Then
		Response.Write AlertMove("SQL Injection을 시도하셨습니다.\n잘 못된 접근으로 간주하여 이동합니다.", "location.href='/'")
		Response.End
	End If

	RequestQuery = Replace(Request.QueryString(Trim(Param)), "'", "''")

End Function

'-- Sql Injection 문자열 포함 여부
Function IsSqlInjectString(ByVal v)

	Dim regEx, retVal
	Set regEx = New RegExp
	regEx.IgnoreCase = True
	regEx.Global = True

	Dim i
	Dim arrayPattern
	arrayPattern = Array( _
		"(update) (\w*) (set) (\w*)" _
		, "(delete from) (\w*)" _
		, "(insert) (into|values|select)(\w*)" _
		, "(cast\()" _
		, "(is_srvrolemember\()" _
		, "(db_name\()" _
		, "(char\()" _
		, "(count\()" _
		, "(sysobjects)" _
		, "(is_member\()" _
	)

	For i = 0 To UBOUND(arrayPattern)
		regEx.Pattern = arrayPattern(i)
		retVal = regEx.Test(v)
		If ( retVal ) Then
			Exit For
		End If
	Next

	IsSqlInjectString = retVal

End Function

'///////////////////////////////////////////////////////////////////////////////////////////////////
'// 자바스크립트 정보
'///////////////////////////////////////////////////////////////////////////////////////////////////
'-- 자바스크립트 문자 메세지 출력 후 Action 실행
Function AlertMove(ByVal Msg, ByVal Action)
	AlertMove = "<Script Language=JavaScript>alert('" & Msg & "');" & Action & "</Script>"
End Function

Sub Alert_Move(ByVal Msg, ByVal Action)
	Response.Write "<Script Language=JavaScript>alert('" & Msg & "');" & Action & "</Script>"
	Response.End
End Sub

Sub PrintJScript(ByVal v)
	Dim strBuffer
	strBuffer =		"<script language=javascript>" & chr(13)&chr(10) & _
						"<!--" & chr(13)&chr(10) & _
						v & chr(13)&chr(10) & _
						"//-->" & chr(13)&chr(10) & _
						"</script>" & chr(13)&chr(10)
	Response.Write strBuffer

End Sub

'-- HTML 및 Java Script 무시 모든 문자를 일반 텍스트로 변환
Function OnlyText(ByVal P_Src)
	OnlyText = StrForScript(NoHtml(P_Src))
End Function

'-- HTML / Script 무력화
Function ConvertTextFromHtml(ByVal P_Src)
	ConvertTextFromHtml = NoScript(NoHtml(P_Src))
End Function

'-- HTML을 문자로 변환
Function NoHtml(ByVal P_Src)
	If ( Not IsNull(P_Src) ) Then
		'P_Src = Replace(P_Src, "&", "&amp;")
		P_Src = Replace(P_Src, "<", "&lt;")
		P_Src = Replace(P_Src, ">", "&gt;")
		P_Src = Replace(P_Src, """", "&quot; ")
		P_Src = Replace(P_Src, "'", "''")
	End If
	NoHtml = P_Src
End Function

'-- 문자를 HTML로 변환
Function YesHtml(ByVal P_Src)
	If ( Not IsNull(P_Src) ) Then
		'P_Src = Replace(P_Src, "&", "&amp;")
		P_Src = Replace(P_Src, "&lt;", "<")
		P_Src = Replace(P_Src, "&gt;", ">")
		P_Src = Replace(P_Src, "&quot;", """")
		P_Src = Replace(P_Src, """", "'")
		P_Src = Replace(P_Src, "''''", "'")
		P_Src = Replace(P_Src, "''", "'")
		P_Src = Replace(P_Src, "&#39;", "'")
	End If
	YesHtml = P_Src
End Function

'-- java script 제한 문자로 변환
Function NoScript(ByVal pValue)

	Dim oRegExp : Set oRegExp = New RegExp

	oRegExp.IgnoreCase = True
	oRegExp.Global = True

	'oRegExp.Pattern = "(<[Ss][Cc][Rr][Ii][Pp][Tt] [Ll][Aa][Nn][Gg][Uu][Aa][Gg][Ee]=?[Jj][Aa][Vv][Aa][Ss][Cc][Rr][Ii][Pp][Tt])"
	'pValue = oRegExp.Replace(pValue, "&lt;script language=javascript")
	oRegExp.Pattern = "(<[Ss][Cc][Rr][Ii][Pp][Tt] )"
	pValue = oRegExp.Replace(pValue, "&lt;script ")

	oRegExp.Pattern = "(<\/[Ss][Cc][Rr][Ii][Pp][Tt]>)"
	pValue = oRegExp.Replace(pValue, "&lt;/script&gt;")

	Set oRegExp = Nothing

	NoScript = pValue

End Function

'-- java script에 문자 전달을 위한 특수 문자 변환
Function StrForScript(ByVal P_Src)
	If (Not IsNull(P_Src)) Then
		If ( P_Src <> "" ) Then
			P_Src = Replace(P_Src, chr(13)&chr(10), "\n")
			P_Src = Replace(P_Src, chr(13), "\f")
			P_Src = Replace(P_Src, chr(10), "\r")
			P_Src = Replace(P_Src, """", "\""")
			P_Src = Replace(P_Src, "'", "\'")
		End If
	End If
	StrForScript = P_Src
End Function


Function FillDigit(ByVal pTargetValue, ByVal pChar, ByVal pDigit, ByVal pArrow)

	pTargetValue = Is_Null(pTargetValue, "")

	If ( Len(pTargetValue) < pDigit ) Then
		Dim subValue
		Dim pI
		Dim pFillValue
		pFillValue = ""
		subValue = pDigit - Len(pTargetValue)
		For pI = 1 To subValue
			pFillValue = pFillValue & pChar
		Next

		If ( pArrow = "FRONT" ) Then
			pTargetValue = pFillValue & pTargetValue
		Else
			pTargetValue = pTargetValue & pFillValue
		End If
	End If

	FillDigit = pTargetValue

End Function
'///////////////////////////////////////////////////////////////////////////////////////////////////
'// 컨넥션 정보
'///////////////////////////////////////////////////////////////////////////////////////////////////
'-- Connection, RecordSet 해제
Sub DbEnd(ByRef oMyConnection)
	If ( IsObject(oMyConnection) ) Then
		If ( oMyConnection.State = adStateOpen ) Then
			oMyConnection.Close
		End If
		Set oMyConnection = Nothing
	End If
End Sub




'// 생년월일를 생일로 변환
'// 작성자 : 전호인
'// 최종 수정일 : 2003-12-02
Function GetBirthday(ByVal P_Jumin)
	Dim F_Birthday
	Dim F_Year_Type
	Dim F_Year_Head
	If ( (Not IsNull(P_Jumin)) AND Len(P_Jumin) = 13 ) Then
		F_Birthday = Left(P_Jumin, 6)
		F_Year_Type = Mid(P_Jumin, 7, 1)
		If ( Cstr(F_Year_Type) = "1" Or Cstr(F_Year_Type) = "2" ) Then
			F_Year_Head = "19"
		Else
			F_Year_Head = "20"
		End If
		F_Birthday = F_Year_Head & Left(F_Birthday, 2) & "-" & Mid(F_Birthday, 3, 2) & "-" & right(F_Birthday, 2)

		If ( Not IsDate(F_Birthday) ) Then
			F_Birthday = "1900-01-01"
		End If
	Else
		F_Birthday = "1900-01-01"
	End If
	GetBirthday = F_Birthday
End Function

'// 생일을 이용하여 나이 계산 ( 만나이가 아니다... )
'// 작성자 : 전호인
'// 최종 수정일 : 2003-12-02
Function GetAge(ByVal P_Today, ByVal P_Birthday)

	ON ERROR RESUME NEXT

	Dim F_Age
	If ( IsDate(P_Birthday) ) Then

		'// 만나이
		F_Age = Year(P_Today) - Year(P_Birthday)

		'// 생일이 지났는지 여부
		If ( Month(P_Today) < Month(P_Birthday) ) Then
			F_Age = F_Age - 1
		ElseIf ( Month(P_Today) = Month(P_Birthday) ) Then
			'// 생일 달이고 날짜가 지나지 않았다면...
			If ( Day(P_Today) < Day(P_Birthday) ) Then
				F_Age = F_Age - 1
			End If
		End If

	Else
		F_Age = 0
	End If

	If ( ERR.NUMBER = 0 ) Then
	Else
		F_Age = 0
	End If

	GetAge = F_Age
End Function





'********************************************

'	쿠키

'********************************************

'// 쿠키 인증 키 값 ( 로그인 시 SetUserId 설정 시 인증 키 값이 설정됩니다. )
Sub SetAuthKey()

	Dim pClientIp : pClientIp = sThisUserClientIp

	If ( Trim(pClientIp) = "" Or LCase(pClientIp) = "localhost" Or LCase(pClientIp) = "127.0.0.1" ) Then
		Exit Sub
	End If

	Response.Cookies("hiadone_auth") = GetCookieAuthKey(pClientIp)
	Response.Cookies("hiadone_auth").Domain = GetDomainName(sThisUrlDomain)

End Sub

'// 쿠키 인증 값
Function GetAuthKey()
	GetAuthKey = Request.Cookies("hiadone_auth")
End Function

'// 현재 쿠키 인증 값의 유효성 검사
Function IsAuthCookie()

	Dim pClientAuthKey
	Dim pCurrentAuthKey
	Dim pClientIp : pClientIp = Request.ServerVariables("REMOTE_HOST")
	If ( Trim(pClientIp) = "" Or LCase(pClientIp) = "localhost" Or LCase(pClientIp) = "127.0.0.1" ) Then
		IsAuthCookie = False
		Exit Function
	End If

	pClientAuthKey = GetAuthKey()
	pCurrentAuthKey = GetCookieAuthKey(pClientIp)
	If ( pClientAuthKey = pCurrentAuthKey ) Then
		IsAuthCookie = True
	Else
		IsAuthCookie = False
	End If

End Function

'// 정상적인 현재 쿠키값을 되돌림.
Function GetCookieAuthKey(pClientIp)

	Dim pMemberId : pMemberId = Request.Cookies("hiadone_id")
	Dim pAddChar : pAddChar = GENERAL_MAIN_URL
	Dim pSumString
	Dim pConvertNum : pConvertNum = 0

	pSumString = Cstr(pMemberId) & Cstr(pClientIp) & Cstr(pAddChar)

	Dim vI
	Dim vLen : vLen = Len(pSumString)
	Dim vCh
	For vI = 1 To vLen
		vCh = Mid(pSumString, vI, 1)
		pConvertNum = CLng(pConvertNum) + ASC(vCh)
	Next
	GetCookieAuthKey = encode(pConvertNum)

End Function

'//아이디
Sub SetUserId(v)
	Response.Cookies("hiadone_id") = v
	Response.Cookies("hiadone_id").Domain = GetDomainName(sThisUrlDomain)

	'// 쿠키 인증 값 설정
	Call SetAuthKey()
End Sub

Function GetUserId()
	'// 인증 된 쿠키라면...
	If ( IsAuthCookie() ) Then
		GetUserId = Request.Cookies("hiadone_id")
	Else
		GetUserId = ""
	End If
End Function

'//이름
Sub SetUserName(v)
	Response.Cookies("hiadone_name") = v
	Response.Cookies("hiadone_name").Domain = GetDomainName(sThisUrlDomain)

	'// 쿠키 인증 값 설정
	Call SetAuthKey()
End Sub

Function GetUserName()
	'// 인증 된 쿠키라면...
	If ( IsAuthCookie() ) Then
		GetUserName = Request.Cookies("hiadone_name")
	Else
		GetUserName = ""
	End If
End Function

'//유저교육타입
Sub SetUserGrade(v)
	Response.Cookies("hiadone_grade") = v
	Response.Cookies("hiadone_grade").Domain = GetDomainName(sThisUrlDomain)

	'// 쿠키 인증 값 설정
	Call SetAuthKey()
End Sub

Function GetUserGrade()
	'// 인증 된 쿠키라면...
	If ( IsAuthCookie() ) Then
		GetUserGrade = Request.Cookies("hiadone_grade")
	Else
		GetUserGrade = ""
	End If
End Function

'//그룹아이디
Sub SetUserOrgId(v)
	Response.Cookies("hiadone_orgId") = v
	Response.Cookies("hiadone_orgId").Domain = GetDomainName(sThisUrlDomain)

	'// 쿠키 인증 값 설정
	Call SetAuthKey()
End Sub

Function GetUserOrgId()
	'// 인증 된 쿠키라면...
	If ( IsAuthCookie() ) Then
		GetUserOrgId = Request.Cookies("hiadone_orgId")
	Else
		GetUserOrgId = ""
	End If
End Function

'//그룹명
Sub SetUserOrgName(v)
	Response.Cookies("hiadone_orgName") = v
	Response.Cookies("hiadone_orgName").Domain = GetDomainName(sThisUrlDomain)

	'// 쿠키 인증 값 설정
	Call SetAuthKey()
End Sub

Function GetUserOrgName()
	'// 인증 된 쿠키라면...
	If ( IsAuthCookie() ) Then
		GetUserOrgName = Request.Cookies("hiadone_orgName")
	Else
		GetUserOrgName = ""
	End If
End Function

'//이메일
Sub SetUserEmail(v)
	Response.Cookies("hiadone_email") = v
	Response.Cookies("hiadone_email").Domain = GetDomainName(sThisUrlDomain)

	'// 쿠키 인증 값 설정
	Call SetAuthKey()
End Sub

Function GetUserEmail()
	'// 인증 된 쿠키라면...
	If ( IsAuthCookie() ) Then
		GetUserEmail = Request.Cookies("hiadone_email")
	Else
		GetUserEmail = ""
	End If
End Function


'//유저레벨
Sub SetUserLevel(v)
	Response.Cookies("hiadone_level") = v
	Response.Cookies("hiadone_level").Domain = GetDomainName(sThisUrlDomain)

	'// 쿠키 인증 값 설정
	Call SetAuthKey()
End Sub

Function GetUserLevel()
	'// 인증 된 쿠키라면...
	If ( IsAuthCookie() ) Then
		GetUserLevel = Request.Cookies("hiadone_level")
	Else
		GetUserLevel = ""
	End If
End Function


'//
Sub SetUserJumin(v)
	Response.Cookies("hiadone_jumin") = v
	Response.Cookies("hiadone_jumin").Domain = GetDomainName(sThisUrlDomain)

	'// 쿠키 인증 값 설정
	Call SetAuthKey()
End Sub

Function GetUserJumin()
	'// 인증 된 쿠키라면...
	If ( IsAuthCookie() ) Then
		GetUserJumin = Request.Cookies("hiadone_jumin")
	Else
		GetUserJumin = ""
	End If
End Function

Sub SetUserMemCheck(v)
	Response.Cookies("hiadone_mem_check") = v
	Response.Cookies("hiadone_mem_check").Domain = GetDomainName(sThisUrlDomain)

	'// 쿠키 인증 값 설정
	Call SetAuthKey()
End Sub

Function GetUserMemCheck()
	'// 인증 된 쿠키라면...
	If ( IsAuthCookie() ) Then
		GetUserMemCheck = Request.Cookies("hiadone_mem_check")
	Else
		GetUserMemCheck = ""
	End If
End Function

'********************************************

'	파일 번호 암호화 모듈(ENCODE)

'********************************************
Function encode(ByVal v)

	CONST CRYPT_KEYWORD = 62

	Dim vLen
	Dim vSum
	Dim vI
	Dim vCh
	vSum = 0

	vLen = Len(v)
	For vI = 1 To vLen

		vCh = Mid(v, vI, 1)
		vSum = CLng(vSum) + ASC(vCh)

	Next

	vSum = vSum XOR CRYPT_KEYWORD
	vSum = vSum Mod 25
	vSum = vSum + ASC("A")
	vSum = Chr(vSum) & v
	encode = vSum

End Function

'********************************************

'	파일 번호 암호화 모듈(DECODE)

'********************************************
Function decode(ByVal v)

	Dim fileId
	Dim vSum
	Dim vCh
	Dim vLen
	Dim vI
	Dim checkChr

	vSum = 0

	If ( IsNull(v) OR IsEmpty(v) OR ( LEN(v) = 0 ) ) Then
		decode = 0
		Exit Function
	End If

	checkChr = Left(v, 1)
	vLen = Len(v)

	If ( v = encode(Mid(v, 2)) ) Then
		decode = Mid(v, 2)
	Else
		decode = 0
	End If

End Function

'***************************

'	Method Name : FormatCommaNum
'	@pNum : 순수 숫자
'	@retur value : 컴마가 포함된 숫자 형식
'	Description : 1000단위 표시로 1000 입력 시 1,000로 리턴

'***************************
Function FormatCommaNum(ByVal pNum)

	If ( IsNull(pNum) Or pNum = "" ) Then
		FormatCommaNum = 0
		Exit Function
	End If

	Dim pPointUnderNum : pPointUnderNum = 0
	If ( Instr(pNum, ".") > 0 ) Then
		pPointUnderNum = Mid(pNum, Instr(pNum, ".")+1)
		pNum = Mid(pNum, 1, Instr(pNum, ".")-1)
	End If

	Dim bLoop : bLoop = True
	Dim pTmp : pTmp = ""
	Dim pTmpBuffer : pTmpBuffer = ""
	Dim i : i = 0
	While ( bLoop )

		If ( Len(pNum) <= 3 ) Then
			If ( pTmpBuffer = "" ) Then
				pTmpBuffer = pNum
			Else
				pTmpBuffer = pNum & "," & pTmpBuffer
			End If

			pNum = pTmpBuffer

			bLoop = False

		Else

			'// 끝에서 3자리를 추출한다.
			pTmp = Right(pNum, 3)

			'// 마지막 3자리를 제외한 나머지를 저장한다.
			pNum = Trim(Mid(pNum, 1, Len(pNum)-3))

			'// 자른 3자리르 버퍼에 담는다.
			If ( pTmpBuffer = "" ) Then
				pTmpBuffer = pTmp
			Else
				pTmpBuffer = pTmp & "," & pTmpBuffer
			End If
		End If

	Wend

	If ( pPointUnderNum = "" ) Then
	Else
		If ( CDbl(pPointUnderNum) > 0 ) Then
			pNum = pNum & "." & pPointUnderNum
		End If
	End If

	FormatCommaNum = pNum

End Function



'***************************

'	Method Name : GetDbDatetime
'	@pConnection : DataBase 의 연결된 커넥션
'	@return value : DataBase의 현재 Datetime
'	Description : Database로 부터 현재 Datetime 값을 받는다.

'***************************
Function GetDbDatetime(ByRef pConnection)

	Dim dteResultDateTime
	Dim pRecordSet
	Dim pSQL : pSQL =	" SELECT	GetDate() AS current_datetime"
	Set pRecordSet = pConnection.Execute(pSQL)
	If ( pRecordSet.BOF Or pRecordSet.EOF ) Then
		dteResultDateTime = Now()
	Else
		dteResultDateTime = pRecordSet("current_datetime")
		dteResultDateTime = CDate(dteResultDateTime)
	End If
	pRecordSet.Close
	Set pRecordSet = Nothing
	GetDbDatetime = dteResultDateTime

End Function



'***************************

'	Method Name : GetDbDatetimeDiffDay
'	@pConnection : DataBase 의 연결된 커넥션
'	@return value : DataBase의 현재 Datetime
'	Description : Database로 부터 파라메터로 부터 남은 분을 얻는다.

'***************************
Function GetDbDatetimeByDiffDay(ByRef pConnection, ByRef pYear, ByRef pMonth, ByRef pDay, ByRef pAddDay)

	Dim dteResultDateTime
	Dim pRecordSet
	Dim pSQL : pSQL =	" SELECT	DATEDIFF(mi,getDate(), DATEADD(d, " & pAddDay & ", '" & pYear & "-" & pMonth & "-" & pDay & "')) AS timeBydiffDay"
	Set pRecordSet = pConnection.Execute(pSQL)
	If ( pRecordSet.BOF Or pRecordSet.EOF ) Then
		dteResultDateTime = Now()
	Else
		dteResultDateTime = pRecordSet("timeBydiffDay")
		'dteResultDateTime = CDate(dteResultDateTime)
	End If
	pRecordSet.Close
	Set pRecordSet = Nothing
	GetDbDatetimeByDiffDay = dteResultDateTime

End Function

'***************************

'	Method Name : GetDbDatetimeForInnoAP
'	@pConnection : DataBase 의 연결된 커넥션
'	@return value : DataBase의 현재 Datetime
'	Description : Database로 INNOAP에 사용될 코드명을 시간을 밀리터리세컨까지 얻는다

'***************************

Function GetDbDatetimeForInnoAP(ByRef pConnection)

	Dim dteResultDateTime
	Dim pRecordSet
	Dim pSQL : pSQL =	" SELECT	Replace(Replace(Replace(Replace(CONVERT(VARCHAR(50), GetDate(), 121), '-', ''), ':', ''), '.', ''), ' ', '') AS current_datetime"
	Set pRecordSet = pConnection.Execute(pSQL)
	If ( pRecordSet.BOF Or pRecordSet.EOF ) Then
		dteResultDateTime = ""
	Else
		dteResultDateTime = pRecordSet("current_datetime")
	End If
	pRecordSet.Close
	Set pRecordSet = Nothing
	GetDbDatetimeForInnoAP = dteResultDateTime

End Function



'// 현재 Db Connection Context에 의해 실행된 Insert 의 Identity를 가져온다.
Function GetIdentity(ByRef MyConn)
	Dim F_SQL
	Dim MyRs
	Dim F_Idx
	F_SQL =	" SELECT @@IDENTITY As Idx"
	Set MyRs = MyConn.Execute(F_SQL)
	If ( MyRs.BOF Or MyRs.EOF ) Then
		F_Idx = 0
	Else
		F_Idx = MyRs("Idx")
	End If
	MyRs.Close
	Set MyRs = Nothing
	GetIdentity = F_Idx
End Function

Function GetIdentity2(ByRef MyConn)
	Dim F_SQL
	Dim MyRs
	Dim F_Idx
	F_SQL =	" SELECT SCOPE_IDENTITY() As Idx"
	Set MyRs = MyConn.Execute(F_SQL)
	If ( MyRs.BOF Or MyRs.EOF ) Then
		F_Idx = 0
	Else
		F_Idx = MyRs("Idx")
	End If
	MyRs.Close
	Set MyRs = Nothing
	GetIdentity = F_Idx
End Function


'***************************

'	Method Name : ReplaceCommaForSQLCondition
'	Description : 콤마 구분자로 구분된 값을 쿼리 조건문에 사용하기 위해 , => ', ' 으로 교체하여 되돌린다.

'***************************
Function ReplaceCommaForSQLCondition(ByVal pValue)

	pValue = Replace(pValue, " ", "")
	pValue = Replace(pValue, ",", "', '")

	ReplaceCommaForSQLCondition = pValue

End Function

Function arrCommaReturn(ByVal pStr)
	Dim str, arrStr, cnt, z

	If (InStr(pStr, "," )>0) Then
		arrStr = Split(pStr, ",", -1, 1)
	Else
		arrStr = Array(pStr)
	End If 

	arrCommaReturn = arrStr
End Function

Function appendStr(ByVal pTarget, ByVal pCnt, ByVal pStr)
	Dim sReturnValue
	Dim sStr1, sStr2

	sStr1 = Mid(pTarget, 1, pCnt) 
	sStr2 = Mid(pTarget, pCnt+1, Len(pTarget)) 
	sReturnValue = sStr1 & pStr & sStr2

	appendStr = sReturnValue
End Function 


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

 ' 파일 확장자 추출
 Function GetFileExt( strFilename )
  Dim strExt
  Dim nPos
  nPos = InStrRev( strFilename, ".", -1, 1 ) '// Text Compare
  if nPos > 0 then
   strExt = Mid( strFilename, nPos+1 )
  end if
  GetFileExt = strExt
 End Function
%>

