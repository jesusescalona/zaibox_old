<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!--#include file="../Connections/CPV.asp" -->
<%
Dim CuentasRS__tmpffw
CuentasRS__tmpffw = "00000"
If (request.cookies("DATOS")("ffw") <> "") Then 
  CuentasRS__tmpffw = request.cookies("DATOS")("ffw")
End If
%>
<%
Dim CuentasRS__tmpempresa
CuentasRS__tmpempresa = "zxc"
If (request.form("cuenta") <> "") Then 
  CuentasRS__tmpempresa = request.form("cuenta")
End If
%>
<%
Dim CuentasRS__tmpnombre
CuentasRS__tmpnombre = "qwe"
If (request.form("cuenta") <> "") Then 
  CuentasRS__tmpnombre = request.form("cuenta")
End If
%>
<%
Dim CuentasRS
Dim CuentasRS_numRows

Set CuentasRS = Server.CreateObject("ADODB.Recordset")
CuentasRS.ActiveConnection = MM_CPV_STRING
CuentasRS.Source = "SELECT ciudades.id_ciudad as id_ciudad, paises.nombre as pais, ciudades.nombre as nombre,estado  FROM dbo.Ciudades inner join paises on ciudades.id_pais=paises.id_pais WHERE ciudades.ffw=" + Replace(CuentasRS__tmpffw, "'", "''") + " and ciudades.nombre like '%" + Replace(CuentasRS__tmpempresa, "'", "''") + "%' ORDER BY ciudades.nombre "
CuentasRS.CursorType = 0
CuentasRS.CursorLocation = 2
CuentasRS.LockType = 1
CuentasRS.Open()

CuentasRS_numRows = 0
cuenta=request.Form("cuenta")
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
CuentasRS_numRows = CuentasRS_numRows + Repeat1__numRows
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>BUSCAR CIUDADES</title>
<link href="CSS/divs.css" rel="stylesheet" type="text/css">
</head>
<script>
function closer(val,nom,paisnom){
window.opener.document.form1.cas_ciudad_id.value = val;
window.opener.document.form1.ciudad.value = nom;
window.opener.document.form1.nompais.value = paisnom;
window.close();
//parent.document.form1.cas_ciudad_id.value = val;
//parent.document.form1.ciudad.value = nom;
//parent.Shadowbox.close();
}

</script>

<body onLoad="javascript:document.form1.cuenta.focus();">
<form action="ciudades7.asp" method="post" name="form1">
  <table width="100%"  border="0" cellspacing="0" cellpadding="5">
    <tr bgcolor="#CCCCCC">
      <td nowrap bgcolor="#CCCCCC" class="trs"><strong>City</strong>:</td>
      <td width="10%" class="trs"><input name="cuenta" type="text" class="textbox" id="cuenta"></td>
      <td width="86%" class="trs"><span class="button"><input name="Submit" type="submit"  value="Find"></span>      </td>
    </tr>
    <tr>
      <td colspan="3">
	  <%if Trim(Request.Form("cuenta"))<>"" then %>
      <table border="0" cellpadding="3" cellspacing="0" class="titulos2">
        <tr bgcolor="#CCCCCC">
          <td bgcolor="#CCCCCC" class="trs">&nbsp;</td>
          <td bgcolor="#CCCCCC" class="trs"><strong>Name</strong></td>
          <td bgcolor="#CCCCCC" class="trs"><strong>State</strong></td>
          <td bgcolor="#CCCCCC" class="trs"><strong>Country</strong></td>
        </tr>
        <% While ((Repeat1__numRows <> 0) AND (NOT CuentasRS.EOF)) %>
        <tr class="trs2">
          <td class="tds">
            <input type="image" src="images/ICONOS/Update.gif" class="inputbutton" value="select" onClick="closer('<%=(CuentasRS.Fields.Item("id_ciudad").Value)%>','<%=(CuentasRS.Fields.Item("nombre").Value)%>','<%=(CuentasRS.Fields.Item("pais").Value)%>');"></td>
          <td class="tds"><%=(CuentasRS.Fields.Item("nombre").Value)%></td>
          <td class="tds"><%=(CuentasRS.Fields.Item("estado").Value)%></td>
          <td class="tds"><%=(CuentasRS.Fields.Item("pais").Value)%></td>
        </tr>
        <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  CuentasRS.MoveNext()
Wend
%>
      </table>
      <% End If %>
	  </td>
    </tr>
  </table>
</form>
</body>
</html>
<%
CuentasRS.Close()
Set CuentasRS = Nothing
%>
