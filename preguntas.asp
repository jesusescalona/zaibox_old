<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="Page-Exit" content="progid:DXImageTransform.Microsoft.GradientWipe(duration=1.0, gradientsize=0.2)"/>
<title>Casillero - Zaicargo</title>
<link rel="stylesheet" type="text/css" href="chrometheme/chromestyle.css" />

<script type="text/javascript" src="chromejs/chrome.js">
/***********************************************
* Chrome CSS Drop Down Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/
</script>
<script language="javascript">AC_FL_RunContent = 0;</script>
<script src="AC_RunActiveContent.js" language="javascript"></script>
<script src="m4m/mootools.js" type="text/javascript"></script>
<script type="text/javascript" src="expandclass/imagemenu/imageMenu.js"></script>
<link href="web.css" rel="stylesheet" type="text/css" />
<link type="image/x-icon" href="favicon.ico" rel="icon" />

<link href="expandclass/imagemenu/imageMenu.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style7 {font-family: Calibri;
	font-size: 14px;
}
.style1 {	font-size: 10px;
	font-family: Arial, Helvetica, sans-serif;
	color: #FFFFFF;
}
-->
</style>

<script language="javascript">

carpeta = '';
fotos = ['cuerpo_pp.jpg','cuerpo_pp_2.jpg','cuerpo_pp_3.jpg'];
n = 0;

function verImg()
{
	document.getElementById('pic').src = carpeta+fotos[n];
	n++;
	if(n>=fotos.length) n=0;
}
  
setInterval('verImg()',4000);

</script>

<script language="JavaScript" src="https://seal.networksolutions.com/siteseal/javascript/siteseal.js" type="text/javascript"></script>

</head>

<body style="background-repeat:no-repeat; background-image:url(imagenes/shop2.jpg); background-position:inherit">
<!--url's used in the movie-->
<!--text used in the movie-->
<!-- saved from url=(0013)about:internet -->
<table width="981" border="0" align="center">

  <tr>
    <td align="left" valign="default"><a href="index.asp"><img src="imagenes/Banner_Superior_Master_com.png" alt="Casillero" width="231" height="121" border="0"></a></td>
    <td align="right"><div style="width:520px; height:28px; background-color:#069">
      <!--#include file="_INC_menu.asp"-->
    </div></td>
  </tr>
  <tr>
    <td colspan="2"><table width="930" border="0">
      <tr>
        <td valign="top"><table border="0" dwcopytype="CopyTableCell">
          <tr>
            <td rowspan="2"><a href="http://zaicargo.controlbox.net/webcasilleros/registro.asp"><img src="imagenes/Registrese.png" alt="Registro" width="152" height="55" border="0" usemap="#Map2"></a></td>
            <td class="letrasLC" align="right">Usuario</td>
            <td><input style="background-color:#FFD" name="cas_contrasena" type="text" class="txtCajas" value="<%=request.form("cas_nombre")%>"></td>
          </tr>
          <tr>
            <td class="letrasLC" align="right">Contrase&ntilde;a</td>
            <td><input style="background-color:#FFD" name="cas_contrasena" type="text" class="txtCajas" value="<%=request.form("cas_nombre")%>"></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td colspan="2" align="right"><span class="letrasLCAster">&iquest;Olvid&oacute; su contrase&ntilde;a?</span>
              <input type="submit" class="botones" value="Ingresar"></td>
          </tr>
        </table></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><img src="imagenes/Banner_Preguntas.jpg" width="800" height="190" alt="Registro"></td>
  </tr>
  <tr>
    <td colspan="2" align="center" style="background-repeat:no-repeat"><table width="600" border="0" cellspacing="0" cellpadding="0" height="216">
      <tr>
        <th scope="col"> <form method="post" action="registro.asp" name="form1">
          <table style="background:url(Imagenes/Body.jpg);" width="800" border="0" align="center" cellpadding="3" cellspacing="0" class="titulos2">
            <%if errores="El casillero se creo satisfactoriamente, " then %>
            <%else%>
            <tr valign="baseline" >
              <td colspan="3" align="center" nowrap></td>
            </tr>
            <tr valign="baseline" >
              <td colspan="3" align="center" nowrap></td>
              </tr>
            <tr valign="baseline" >
              <td colspan="3" align="right" nowrap bgcolor="#FEDA00"><div align="left" class="letrasLCHBlue"><strong>MISI&Oacute;N </strong></div></td>
              </tr>
            <tr valign="baseline">
              <td colspan="3" align="justify"><span class="letrasLCTels">ZAI CARGO INC</span><span class="letrasLCCopy">&nbsp;</span><span class="letrasLCTelsWhite">es una empresa prestadora de servicios dedicada a la consolidaci&oacute;n internacional de carga, nacionalizaci&oacute;n y distribuci&oacute;n especializada, que satisface necesidades de transporte de env&iacute;os tanto personales como empresariales en los pa&iacute;ses donde hace presencia, para lo cual cuenta con personal id&oacute;neo y profesional en el &aacute;rea, una infraestructura log&iacute;stica eficaz, que garantiza solidez y permanencia en el mercado contribuyendo con su labor al desarrollo de su personal y de los pa&iacute;ses donde opera. </span></td>
            </tr>
            <tr valign="baseline">
              <td colspan="3" nowrap class="letrasLCTelsWhite">&nbsp;</td>
            </tr>
            <tr valign="baseline" >
              <td colspan="3" align="right" nowrap bgcolor="#FEDA00"><div align="left" class="letrasLCHBlue"><strong>VISI&Oacute;N </strong></div></td>
            </tr>
            <tr valign="baseline">
              <td colspan="3" align="justify" class="letrasLCTelsWhite"> Ser reconocida nacional e internacionalmente como una empresa multimodal de carga conectando con su servicio a todos los pa&iacute;ses del mundo.</td>
            </tr>
            <tr valign="baseline">
              <td colspan="3" align="right" nowrap class="letrasLCTelsWhite">&nbsp;</td>
            </tr>
            <%end if%>
            </table>
        </form>
          </th>
      </tr>
    </table>
      <table width="800" border="0" bgcolor="#FFFFDB" style="background:url(Imagenes/Body.jpg);">
        <tr>
          <td></td>
          <td></td>
        </tr>
        <tr>
          <td colspan="2" align="right" nowrap bgcolor="#FEDA00" class="boxesNoCase"><div align="left" class="letrasLCHBlue"><strong>PREGUNTAS FRECUENTES </strong>DE NUESTROS CLIENTES</div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div><a href='#' style="margin-left: 0px;" onClick="if(this.parentNode.getElementsByTagName('div')[0].style.display != '')	{this.parentNode.getElementsByTagName('div')[0].style.display = '';}else{this.parentNode.getElementsByTagName('div')[0].style.display = 'none';}return false" ><span class="letrasLCEsp">&iquest;C&oacute;mo le puedo hacer seguimiento a mi env&iacute;o?</span></a>
            <div style="display: none;" ><span class="letrasLCTelsWhite">Puede ingresar a la p&aacute;gina web www.zaicargo.com e introducir el n&uacute;mero de la gu&iacute;a de Zai Cargo en el icono rastrear, all&iacute; el sistema le entregara toda la informaci&oacute;n acerca del estado de su env&iacute;o</span></div>
          </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div><a href='#' style="margin-left: 0px;" onClick="if(this.parentNode.getElementsByTagName('div')[0].style.display != '')	{this.parentNode.getElementsByTagName('div')[0].style.display = '';}else{this.parentNode.getElementsByTagName('div')[0].style.display = 'none';}return false" ><span class="letrasLCHBlue">&iquest;Lleg&oacute; mi compra a Zaicargo?</span></a>
            <div style="display: none;" ><span class="letrasLC">Si es gu&iacute;a Zai Cargo lo puede rastrear en la p&aacute;gina WEB de Zai Cargo, si es un tracking number del vendedor, nos env&iacute;a un email a zaibox@zaicargo.com y le entregamos la informaci&oacute;n.</span></div>
          </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div><a href='#' style="margin-left: 0px;" onClick="if(this.parentNode.getElementsByTagName('div')[0].style.display != '')	{this.parentNode.getElementsByTagName('div')[0].style.display = '';}else{this.parentNode.getElementsByTagName('div')[0].style.display = 'none';}return false" ><span class="letrasLCHBlue">&iquest;C&oacute;mo puedo comprar en eBay?</span></a>
            <div style="display: none;" ><span class="letrasLC">Ingrese a la p&aacute;gina de ebay.com, reg&iacute;strese abriendo una nueva cuenta y luego procede a realizar las compras que usted desee.</span></div>
          </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div><a href='#' style="margin-left: 0px;" onClick="if(this.parentNode.getElementsByTagName('div')[0].style.display != '')	{this.parentNode.getElementsByTagName('div')[0].style.display = '';}else{this.parentNode.getElementsByTagName('div')[0].style.display = 'none';}return false" ><span class="letrasLCHBlue">&iquest;Por qu&eacute; Amazon no acepta mi tarjeta de cr&eacute;dito?</span></a>
            <div style="display: none;" ><span class="letrasLC">Para realizar compras con tarjetas de cr&eacute;dito de Colombia es necesario, solicitar autorizaci&oacute;n al Banco de origen de la tarjeta de cr&eacute;dito para que habiliten la tarjeta de cr&eacute;dito para compras en el exterior.</span></div>
          </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div><a href='#' style="margin-left: 0px;" onClick="if(this.parentNode.getElementsByTagName('div')[0].style.display != '')	{this.parentNode.getElementsByTagName('div')[0].style.display = '';}else{this.parentNode.getElementsByTagName('div')[0].style.display = 'none';}return false" ><span class="letrasLCHBlue">&iquest;D&oacute;nde debo incluir el c&oacute;digo ZB1-0000?</span></a>
            <div style="display: none;" ><span class="letrasLC">Debe colocar el n&uacute;mero de su casillero postal al lado de la direcci&oacute;n para una mejor identificaci&oacute;n de su caja a la hora de la entrada a la bodega de Miami.</span></div>
          </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div><a href='#' style="margin-left: 0px;" onClick="if(this.parentNode.getElementsByTagName('div')[0].style.display != '')	{this.parentNode.getElementsByTagName('div')[0].style.display = '';}else{this.parentNode.getElementsByTagName('div')[0].style.display = 'none';}return false" ><span class="letrasLCHBlue">&iquest;Puedo pagar mi env&iacute;o con tarjeta de cr&eacute;dito desde Miami?</span></a>
            <div style="display: none;" ><span class="letrasLC">Si, puede pagar su envi&oacute; con tarjeta de cr&eacute;dito desde Miami.</span></div>
          </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div><a href='#' style="margin-left: 0px;" onClick="if(this.parentNode.getElementsByTagName('div')[0].style.display != '')	{this.parentNode.getElementsByTagName('div')[0].style.display = '';}else{this.parentNode.getElementsByTagName('div')[0].style.display = 'none';}return false" ><span class="letrasLCHBlue">&iquest;Qu&eacute; es el tracking number?</span></a>
            <div style="display: none;" ><span class="letrasLC">Es el n&uacute;mero de identificaci&oacute;n con el cual el vendedor env&iacute;a su compra a su direcci&oacute;n f&iacute;sica en Miami (Casillero Postal), que es la oficina de Zai Cargo &ndash; Miami.</span></div>
          </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div><a href='#' style="margin-left: 0px;" onClick="if(this.parentNode.getElementsByTagName('div')[0].style.display != '')	{this.parentNode.getElementsByTagName('div')[0].style.display = '';}else{this.parentNode.getElementsByTagName('div')[0].style.display = 'none';}return false" ><span class="letrasLCHBlue">&iquest;C&oacute;mo y d&oacute;nde debo pagar mi env&iacute;o?</span></a>
            <div style="display: none;" ><span class="letrasLC">Puede pagar con tarjeta de cr&eacute;dito en Miami o Colombia, con transferencia, consignaci&oacute;n bancaria o en efectivo en la oficina donde usted resida al momento de recibir su envi&oacute;.</span></div>
          </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div><a href='#' style="margin-left: 0px;" onClick="if(this.parentNode.getElementsByTagName('div')[0].style.display != '')	{this.parentNode.getElementsByTagName('div')[0].style.display = '';}else{this.parentNode.getElementsByTagName('div')[0].style.display = 'none';}return false" ><span class="letrasLCHBlue">Me lleg&oacute; esta informaci&oacute;n de Amazon &iquest;Qu&eacute; es este n&uacute;mero: 1ZW676550341741879?</span></a>
            <div style="display: none;" ><span class="letrasLC">R/: Ese es el tracking number con el cual el vendedor env&iacute;a su compra a su casillero postal en Miami. (Zai Cargo &ndash; Miami).</span></div>
          </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div><a href='#' style="margin-left: 0px;" onClick="if(this.parentNode.getElementsByTagName('div')[0].style.display != '')	{this.parentNode.getElementsByTagName('div')[0].style.display = '';}else{this.parentNode.getElementsByTagName('div')[0].style.display = 'none';}return false" ><span class="letrasLCHBlue">&iquest;El n&uacute;mero de orden es el mismo tracking number?</span></a>
            <div style="display: none;" ><span class="letrasLC">No, el n&uacute;mero de orden es el n&uacute;mero de identificaci&oacute;n de la compra interna entre usted y el vendedor. El tracking number es el numero con el cual vendedor envi&oacute; su compra a su casillero postal en Miami. (Zai Cargo &ndash; Miami). </span></div>
          </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
    </table></td>
  </tr>
  
  <tr>
    <td colspan="2" align="left" valign="bottom"></td>
  </tr>
  <tr>
    <td colspan="2" align="left" valign="bottom"></td>
  </tr>
  <tr>
    <td align="left" valign="bottom"><span class="letrasLCDere">Powered by Kerberus</span></td>
    <td align="right" valign="bottom"><span class="letrasLCDere">Zaicargo INC 2012</span></td>
  </tr>
</table>

<map name="Map">
  <area shape="rect" coords="4,3,307,92" href="http://zaicargo.controlbox.net/webcasilleros/registro.asp" target="_blank">
</map>
</body>
</html>
