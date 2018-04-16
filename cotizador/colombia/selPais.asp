<%@ Language=VBScript %>
 
<% 	
	Dim pais
	pais = Request.form("cboPais")

'CODIGO PARA REDIRIGIR
if (pais = "#") Then
response.redirect("http://zaibox.net/cotizador.asp")
else
response.redirect("http://zaibox.net/cotizador/" & pais) 
end if

%>