<%
'//로그인 확인
If (Len(GetUserId())=0) Then
Response.redirect(GENERAL_MAIN_URL)
End If 
%>