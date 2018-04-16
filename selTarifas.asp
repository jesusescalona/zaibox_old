<%@ Language=VBScript %>
 
<% 	
	Dim pais
	pais = Request.form("cboPais")

'CODIGO PARA REDIRIGIR
if (pais = "#") Then
response.redirect("http://zaibox.net/tarifas.asp")
else
response.redirect("http://zaibox.net/tarifas/" & pais) 
end if

%>