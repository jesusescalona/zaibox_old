<form action="http://zaicargo.controlbox.net/webcasilleros/clientes/login.asp" method="POST" name="frmaIngreso">
<table align="right" border="0" cellspacing="0" cellpadding="0" >
  <tr>
    <td class="<%= texto1%>"><div align="right">Usuario</div>
    <td><div align="left">
      <input name="usuario" type="text" class="txtCajas" placeholder="Escriba su casillero ZB#-###" style="background-color:#FFD" value="" />
    </div></tr>
  <tr>
    <td colspan="2"></td>
    </tr>
  <tr>
    <td class="<%= texto1%>"><div align="right"><span class="txtTextoI">Contrase&ntilde;a</span></div></td>
    <td align="left"><div align="left">
      <input name="clave" style="background-color:#FFD" type="password" class="txtCajas" />
    </div></td>
  </tr>
  <tr>
    <td colspan="2" align="right" class="letrasLCAster"><a href="javascript:window.open('http://zaicargo.controlbox.net/webcasilleros/oc.asp','RecuperarContra','width=400,height=400,scrollbars=no,toolbar=no')">Olvido su clave?</a>
      <input name="Ingreso" type="submit" value="Ingresar" class="btnAccion" /></td>
  </tr>
</table>
</form>
