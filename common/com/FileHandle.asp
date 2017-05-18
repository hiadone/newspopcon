<%
'//유니크한 파일명 만들기
Function MakeUniqueFileName( ByVal strPrename )
  Dim strFilename
  Dim dtNow
  dtNow = now()
  Randomize()
  strFilename = strPrename & "_"
  strFilename = strFilename & Year(dtNow)
  strFilename = strFilename & FillDigit( Month(dtNow),   "0", 2, "FRONT" )
  strFilename = strFilename & FillDigit( Day(dtNow),     "0", 2, "FRONT" )
  strFilename = strFilename & "_"
  strFilename = strFilename & FillDigit( Hour(dtNow),    "0", 2, "FRONT" )
  strFilename = strFilename & FillDigit( Minute(dtNow),  "0", 2, "FRONT" )
  strFilename = strFilename & FillDigit( Second(dtNow),  "0", 2, "FRONT" )
  strFilename = strFilename & "_"  
  strFilename = strFilename & FillDigit ( Int(Rnd * 1000000), "0", 7, "FRONT" )
  MakeUniqueFileName = strFilename
 End Function
%>
