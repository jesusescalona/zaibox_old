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

//carpeta = '';
//fotos = ['cuerpo_pp.jpg','cuerpo_pp_2.jpg','cuerpo_pp_3.jpg'];
//n = 0;

//function verImg()
//{
	//document.getElementById('pic').src = carpeta+fotos[n];
	//n++;
	//if(n>=fotos.length) n=0;
//}
  
//setInterval('verImg()',4000);


function fp(URL)
{
    var winl = (screen.width - 400) / 2;
    var wint = (screen.height - 400) / 2;
	
	window.open(URL,"cityPopUp","width=400,height=400,top=" + wint + ",left=" + winl + ",scrollbars=no,toolbar=no,resizable=yes");
}

function receiveMessage(event)
{
//alert('msm: ' + event.origin);
alert(event.data);

}


/*	if(!window.addEventListener)
	{		alert('attachEvent');
		window.attachEvent("message", receiveMessage);
	}
	else
	{alert('addEventListener');
		window.addEventListener("message", receiveMessage, false);
	}
*/
//window.addEventListener("message", receiveMessage, false);window.attachEvent("message", receiveMessage, false);


// Create IE + others compatible event handler
var eventMethod = window.addEventListener ? "addEventListener" : "attachEvent";
var eventer = window[eventMethod];
var messageEvent = eventMethod == "attachEvent" ? "onmessage" : "message";

// Listen to message from child window...
eventer(messageEvent,function(e) {
 alert('parent received message!:  ' + e.data);
 
 
var str=e.data;
var posi = str.indexOf(',');
//alert(str.substring(0,posi));
  document.getElementById('nomciudad').value=str.substring(posi +1);
  
  document.getElementById('cas_ciudad_id').value=str.substring(0,posi);
  
},false);

</script>

<script language="JavaScript" src="https://seal.networksolutions.com/siteseal/javascript/siteseal.js" type="text/javascript"></script>

</head>

<body style="background-color:#E6E6E6; background-repeat:no-repeat; background-image:url(imagenes/shop1.jpg); background-position:inherit">
<!--url's used in the movie-->
<!--text used in the movie-->
<!-- saved from url=(0013)about:internet -->
<table width="981" border="0" align="center">

  <tr>
    <td align="left" valign="default"><img src="imagenes/Banner_Superior_Master_com.png" alt="Casillero" width="231" height="121" border="0" usemap="#Map"></td>
    <td align="right"><div style="width:540px; height:28px; background-color:#069">
      <!--#include file="_INC_menu.asp"-->
    </div></td>
  </tr>
  <tr>
    <td colspan="2"><table width="930" border="0">
      <tr>
        <td valign="top"><table border="0" dwcopytype="CopyTableCell">
          <tr>
            <td><img src="imagenes/Registrese.png" alt="Registro" width="152" height="55" border="0" usemap="#Map2"></td>
            <td rowspan="2" align="right" class="letrasLC">
		  <!--#include file="_INC_login.asp"-->
            </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            </tr>
        </table></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
        	<table border="0" cellspacing="0" cellpadding="0" align="center">
      		<tr>
      		  
            	<td>
				</td>
            	<td>&nbsp;</td>
            	<td>&nbsp;</td>
            	<td>&nbsp;</td>
            	<td>&nbsp;</td>
                
            	<td>
              	<!--
SiteSeal Html Builder Code:
Shows the logo at URL https://seal.networksolutions.com/images/basicsqgreen.gif
Logo type is  ("NETSP")
//-->
<script language="JavaScript" type="text/javascript"> SiteSeal("https://seal.networksolutions.com/images/basicsqgreen.gif", "NETSP", "none");</script>
              	</td>
              
      		</tr>
    	</table>
        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><img src="imagenes/Banner_Registro.jpg" width="800" height="190" alt="Registro"></td>
  </tr>
  <tr>
    <td colspan="2" align="center" style="background-repeat:no-repeat"><table width="600" border="0" cellspacing="0" cellpadding="0" height="216">
      <tr>
        <th scope="col"> 
		<form method="post" action="registro.asp" name="form1" id="form1">
          <table style="background:url(Imagenes/Body.jpg);" width="800" border="0" align="center" cellpadding="3" cellspacing="0" class="titulos2">
            <%if errores="El casillero se creo satisfactoriamente, " then %>
            <%else%>
            <tr valign="baseline" >
              <td colspan="4" align="center" nowrap></td>
            </tr>
            <tr valign="baseline" >
              <td colspan="4" align="center" nowrap><div class="letrasLCRed"> <span class="style1"><span class="txtTituloJ"><%=errores%></span><%=response.Write(emailBody)%></span></div></td>
              </tr>
            <tr valign="baseline" >
              <td colspan="4" align="right" nowrap bgcolor="#FEDA00"><div align="left" class="letrasLCHBlue"><strong>DATOS PERSONALES </strong></div></td>
              </tr>
            <tr valign="baseline">
              <td width="147" align="right" nowrap class="letrasLCTelsWhite"><div align="left" >Nombres
                y apellidos:<span>*</span></div></td>
              <td width="300"><div align="left">
                <input style="background-color:#FFD" name="cas_nombre" type="text" class="txtCajas" value="<%=request.form("cas_nombre")%>">
                </div></td>
              <td width="75" class="letrasLCTelsWhite">Empresa:</td>
              <td width="254"><div align="left">
                <input id="cas_empresa" name="cas_empresa" type="text" class="txtCajas" value="<%=request.form("cas_empresa")%>" />
                </div></td>
              </tr>
            <tr valign="baseline">
              <td align="right" nowrap class="letrasLCTelsWhite"><div align="left">Direccion:<span class="requeridos">*</span></div></td>
              <td><div align="left">
                <input style="background-color:#FFD" name="cas_direccion" type="text" class="txtCajas" value="<%=request.form("cas_direccion")%>">
                </div></td>
              <td class="letrasLCTelsWhite"><input type="button" onClick="javascript:fp('http://zaicargo.controlbox.net/app/Ciudades8.asp');" value="Ciudad"></td>
              <td><div align="left"><span class="letrasLCTelsWhite"><span class="requeridos">
                <input type="hidden" name="cas_ciudad_id" id="cas_ciudad_id" value="<%=request("cas_ciudad_id")%>" />
                <input style="background-color:#FFD" id="nomciudad" name="nomciudad" type="text" class="txtCajas" value="<%=request("nomciudad")%>" readonly="True" />
                </span></span></div></td>
              </tr>
            <tr valign="baseline">
              <td align="right" nowrap class="letrasLCTelsWhite"><div align="left">Codigo
                postal:</div></td>
              <td><div align="left">
                <input name="cas_zip" type="text" class="txtCajas" value="<%=request.form("cas_zip")%>">
                </div></td>
              <td class="letrasLCTelsWhite">Email:<span class="requeridos">*</span></td>
              <td><div align="left">
                <input style="background-color:#FFD" name="cas_email" type="text" class="txtCajas" value="<%=request.form("cas_email")%>">
                </div></td>
              </tr>
            <tr valign="baseline">
              <td align="right" nowrap class="letrasLCTelsWhite"><div align="left">Telefono:*</div></td>
              <td><div align="left">
                <input style="background-color:#FFD" name="cas_telefono" type="text" class="txtCajas" value="<%=request.form("cas_telefono")%>">
                </div></td>
              <td class="letrasLCTelsWhite">Fax:</td>
              <td><div align="left">
                <input name="cas_fax" type="text" class="txtCajas" value="<%=request.form("cas_fax")%>">
                </div></td>
              </tr>
            <tr valign="baseline">
              <td colspan="4" align="right" nowrap><div align="left">
                <input type="hidden" name="cas_cuenta_id" value="">
                <input name="cas_pago" type="hidden" id="cas_pago" value="agencia">
                <input type="hidden" value="VE" name="cas_servicio" id="cas_servicio"/>
                <br>
              </div></td>
            </tr>
            <tr valign="baseline" >
              <td colspan="4" align="right" nowrap bgcolor="#FEDA00"><div align="left" class="letrasLCHBlue"><strong>INFORMACI&Oacute;N DEL CASILLERO </strong></div></td>
            </tr>
            <tr valign="baseline">
              <td align="right" nowrap class="letrasLCTelsWhite"><div align="left" >Escriba una clave:<span >*</span></div></td>
              <td class="letrasLC"><input style="background-color:#FFD" name="cas_password" type="text" class="txtCajas">
                <input name="cas_alias" type="hidden" class="boxesNoCase" value="" size="32">
                <input name="ccEmail" type="hidden" class="txtCajas" id="ccEmail" /></td>
              <td align="right" nowrap class="letrasLC">&nbsp;</td>
              <td class="letrasLC"><br>
                <br></td>
              </tr>
            <tr valign="baseline">
              <td colspan="4" align="right" nowrap class="letrasLC"></td>
              </tr>
            <tr valign="baseline" >
              <td colspan="4" align="right" nowrap bgcolor="#FEDA00" class="boxesNoCase"><div align="left" class="letrasLCHBlue"><strong>T&Eacute;RMINOS Y CONDICIONES </strong></div></td>
              </tr>
            <tr valign="baseline">
              <td colspan="4" align="right" nowrap><div align="center">
                <textarea name="textarea" cols="92" rows="5" readonly="readonly" wrap="virtual">Todos los que utilicen los casilleros Postales de Zai Cargo y hagan compras a traves de empresas como Amazon.com &ndash; tigerdirect.com  y otras estan sujetos a los siguientes terminos y condiciones: 
1-Zai cargo NO se hace responsable de ningun envio que recibamos:
 a)Con defectos
 b)Rotos o deteriorados
 c)Equivocados 
 d)Sin informaci�n correcta
  
2-Zai cargo NO asumira ningun tipo de pago a terceros por mercancias que se reciban en nuestras bodegas.
3-Zai Cargo NO se hace responsable de ningun tipo de pago fraudulento realizado por la mercancia que recibamos a traves del casillero postal .
4-Todo el que acepte utilizar a Zai cargo como transportadora, acepta pagar todos los costos por Libra /seguro/Impuestos exigidos por la empresa o por el pais de destino.
5-Solo transportaremos envios con CONTENIDOS legales en el pais origen como en el pais de destino cumpliendo todas las normas aduanales exigidas .

NO podemos transportar : 
 a)Prendas Militares.
 b)Explosivos o Inflamables.
 c)Contaminantes.
 d)Dinero o Titulos Valores.
 e)Aerosoles
 f)Articulos   como &ldquo;Vidrio&rdquo; con empaques  insuficientes para su proteccion.

El Servicio de casillero internacional consiste en la asignaci&oacute;n de un n&uacute;mero de cuenta el cual habilita al subscriptor a recibir mercanc&iacute;a de cualquier &iacute;ndole dentro del marco legal. Realizar los procesos de clasificaci&oacute;n, inspecci&oacute;n, generaci&oacute;n de documentaci&oacute;n, transporte internacional, tr&aacute;mites aduaneros y entrega. 

Una vez aceptada la inscripci&oacute;n del servicio se asignara un n&uacute;mero de cuenta con el cual pueden rastrear sus env&iacute;os v&iacute;a Web. 

Nuestra empresa se compromete a realizar los tr&aacute;mites aduaneros correspondientes a la Mercanc&iacute;a y env&iacute;os urgentes los cuales incluyen desaduanamiento, reconocimiento, liberaci&oacute;n y entrega

Si el SUSCRIPTOR entregara informaci&oacute;n errada sobre direcci&oacute;n u otros elementos necesarios para la oportuna y correcta entrega, nuestra empresa no se har&aacute; responsable de este env&iacute;o y el SUSCRIPTOR correr&aacute; con los gastos extras que ocasione este error. 

Las tarifas de transporte podr&aacute;n ser modificadas sin previo aviso para adecuarlas a los aumentos de costos de las aerol&iacute;neas y/o cualquier otro factor comercial que tenga que ver con la prestaci&oacute;n del servicio. La mercanc&iacute;a se ASEGURA para garantizar la tranquilidad al suscriptor, el seguro no opera para da&ntilde;os o perdidas parciales de la mercancia ,todo opera en caso que el paquete no llegue a su destino. 

La Mercanc&iacute;a deber&aacute; recibirse para su env&iacute;o Embalada de acuerdo a sus caracter&iacute;sticas, con el prop&oacute;sito de resguardar la misma, ya que el seguro no cubre  da&ntilde;os por  embalaje inapropiado. El suscriptor despu&eacute;s que recibe la Mercanc&iacute;a  y firma  en conformidad  pierde el derecho de reclamar. Recomendamos abrir la Mercanc&iacute;a y chequear en presencia del personal de la Empresa.  Si la Mercanc&iacute;a requiere un embalaje especial es importante notificar a la Empresa para su elaboraci&oacute;n.
Al  Suscriptor se le concede 03 d&iacute;as para retirar la Mercanc&iacute;a desde el momento de la notificaci&oacute;n, en caso contrario la Empresa cobrara Almacenaje y no se responsabilizara por la misma.

Al realizar las compras es necesario que el Suscriptor coloque su nombre propio y  la direccion de zai cargo  , con la finalidad  que el pedido al llegar a la oficina se agregue  al sistema WEB. La p&aacute;gina donde podr&aacute; rastrear sus compras es www.zaicargo.com.
Nuestra empresa no es responsable por el mal direccionamiento de la mercanc&iacute;a a nuestras oficinas de , el suscriptor entiende que debe hacer llegar la mercanc&iacute;a a nuestras oficinas  mediante compa&ntilde;&iacute;as domesticas. 
Las direcciones de recibo de la mercanc&iacute;a pueden ser modificadas en cualquier momento, avisando a los suscriptores  para las correcciones pertinentes, con suficiente antelaci&oacute;n. 

El suscriptor declara conocer las restricciones legales y administrativas a que pueden estar sujetos sus env&iacute;os y ser&aacute; responsable por todo aquello que llegue consignado a su casillero. Nuestra empresa no se har&aacute; responsable por p&eacute;rdidas resultantes de confiscaci&oacute;n aduanera, ni de retrasos ocasionados por la falta de documentaci&oacute;n o informaci&oacute;n necesaria para el despacho o para el tr&aacute;mite aduanero.
Es prohibido Transportar : armas, precursores qu&iacute;micos, joyas, dinero en efectivo, material pornogr&aacute;fico, juguetes b&eacute;licos, billetes de loter&iacute;a y todas aquellas que proh&iacute;ban las autoridades correspondientes  y las contempladas como prohibidas por la Uni&oacute;n Postal Universal.
Nuestra empresa se reserva el derecho de rehusar o  retener env&iacute;os dirigidos a un suscriptor cuya cuenta se encuentre en mora.
Nos reservamos el derecho de admisi&oacute;n y la Empresa tiene autonom&iacute;a para la cancelaci&oacute;n de cuentas en abandono, inactivas o que presenten antecedentes de fraude o mal uso o uso anormal del mismo.

</textarea>
                </div></td>
              </tr>
            <tr valign="baseline">
              <td colspan="4" align="center" nowrap><input name="terminos" type="checkbox" id="terminos" value="1" checked="checked" disabled="disabled" >
                <span class="letrasLCTelsWhite">ACEPTO LOS TERMINOS Y CONDICIONES</span>
                <%if Trim(Request.Form("terminos"))<>"" and Trim(Request.Form("AB"))="AB" then%>
                <span class="letraserrores"><br>
                  </span><span class="letrasLCWhite">Debe aceptar los terminos y condiciones</span>
                <% End If %>
                <input name="AB" type="hidden" class="boxesNoCase" id="AB" value="AB" size="32"></td>
              </tr>
            <tr valign="baseline">
              <td colspan="4" align="center" nowrap><input type="submit" class="botones" value="Registro">
                <input type="hidden" name="cas_ffw" value="00001" size="32">
                <input type="hidden" name="MM_insert" value="form1"></td>
              </tr>
            <%end if%>
            </table>
        </form>
          </th>
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
    <td align="right" valign="bottom"><span class="letrasLCDere">Zaibox.net 2014</span></td>
  </tr>
</table>



<map name="Map">
  <area shape="rect" coords="0,2,230,119" href="index.asp">
</map>

<map name="Map2">
  <area shape="rect" coords="2,2,155,53" href="http://zaicargo.controlbox.net/webcasilleros/registro.asp" target="_blank">
</map>
</body>
</html>
