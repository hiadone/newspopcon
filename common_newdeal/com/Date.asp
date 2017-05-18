<%
'///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
'날짜 관련 함수 시작 
'///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
'-- 특정일의 월기준의 몇번째 주인지 리턴 
Function WeekOfMonth(ByVal CurrDate) 

	Dim FirstDate 
	Dim intWeekOfYear 
	Dim intWeekOfMonth 

	FirstDate = Year(CurrDate) & "-" & Month(CurrDate) & "-1" 

	intWeekOfYear = datePart("ww", FirstDate) 
	intWeekOfMonth = datePart("ww", CurrDate) 

	intWeekOfMonth = intWeekOfMonth - intWeekOfYear + 1 

	WeekOfMonth = intWeekOfMonth 

End Function 

'-- 특정일이 마지막 주인지 판별 ( Bool Type ) 
Function BoolLastWeekOfMonth(ByVal CurrDate) 

	Dim intWeekOfCurrDate 
	Dim intWeekOfYear 
	Dim intWeekOfMonth 

	'-- 받은 날짜의 주 
	intWeekOfCurrDate = datePart("ww", CurrDate) 

	'-- 받은 날짜의 마지막 주 
	intWeekOfMonth = datePart("ww", LastDateOfMonth(CurrDate)) 

	If ( intWeekOfCurrDate = intWeekOfMonth ) Then 
	BoolLastWeekOfMonth = True 
	Else 
	BoolLastWeekOfMonth = False 
	End If 

End Function 

'-- 현재 달의 마지막 주 
'-- 월기준 1~6주 
Function LastWeekOfMonth(ByVal CurrDate) 

	Dim FirstDate 
	Dim intWeekOfYear 
	Dim intWeekOfMonth 

	'-- 현재 달의 시작일 
	FirstDate = Year(CurrDate) & "-" & Month(CurrDate) & "-1" 

	'-- 현재 달의 마지막일 
	CurrDate= LastDateOfMonth(CurrDate) 

	intWeekOfYear = datePart("ww", FirstDate) 
	intWeekOfMonth = datePart("ww", CurrDate) 

	intWeekOfMonth = intWeekOfMonth - intWeekOfYear + 1 

	LastWeekOfMonth = intWeekOfMonth 

End Function 

'-- 현재 달의 마지막일 리턴 
Function LastDateOfMonth(ByVal CurrDate) 

	Dim FirstDate 
	'-- 현재 달의 시작일 
	FirstDate = Year(CurrDate) & "-" & Month(CurrDate) & "-1" 

	'-- 현재 달의 마지막일 
	CurrDate= dateAdd("m", 1, FirstDate) 
	CurrDate= dateAdd("d", -1, CurrDate) 

	LastDateOfMonth = CurrDate 

End Function 

Function FirstDateOfWeek(ByVal selectYear, ByVal selectMonth, ByVal selectWeek) 

	Dim FirstDateOfMonth, WeekOfFirstDate, selectedWeekOfYear 

	FirstDateOfMonth = selectYear & "-" & selectMonth & "-01" 

	selectedWeekOfYear = Cint(datePart("ww", FirstDateOfMonth)) + selectWeek - 1 

	Dim i, SearchDateOfWeek 
	For i = 0 To Day(LastDateOfMonth(FirstDateOfMonth)) 
	SearchDateOfWeek = dateAdd("d", i, FirstDateOfMonth) 
	If ( Cint(datePart("ww", SearchDateOfWeek)) = selectedWeekOfYear ) Then Exit For 
	Next 

	FirstDateOfWeek = dateAdd("d", -Cint(datePart("w", SearchDateOfWeek)) + 1, SearchDateOfWeek) 

End Function 

'//현제일로 부터 원하는 요일에 날짜를 가져온다.
'//getDateWantDay(앞으로or뒤로, 현제 시간, 원하는 요일)
Function getDateWantDay(ByVal sType, ByVal currentDate, ByVal wantDay)

	Dim i, wantDate
	
	If (sType = "before") Then

		For i = -6 To 0
		
			wantDate = DateAdd("d", i, currentDate)

			If (CLng(DatePart("W", wantDate)) = CLng(wantDay)) Then
				Exit For

			End If
			
		
		Next
	
	Else

		For i = 1 To 7

			wantDate = DateAdd("d", i, currentDate)

			If (CLng(DatePart("W", wantDate)) = CLng(wantDay)) Then

				Exit For

			End If
			
		
		Next

	End If

	getDateWantDay = wantDate


End Function
'///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
'날짜 관련 함수 끝 
'///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
%>