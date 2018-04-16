<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<!-- Metadatos -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="Page-Exit" content="progid:DXImageTransform.Microsoft.GradientWipe(duration=1.0, gradientsize=0.2)"/>
<meta name="description" content="ZAI BOX es una servicio gratuito de ZAICARGO INC. para llevar sus compras en Estados Unidos hasta la puerta de su casa" lang="ES" />
<meta name="keywords" content="compras USA, compras estados unidos, purchases united states, casilleros, casillero, casilleros postales, PO Boxes, PO Boxes Miami, USA, Miami, Colombia, Ecuador, compras miami, Purchases Miami, purchases, buy, casilleros internacionales, international PO Boxes, compras en China, purchases in China, compras China, purchases China, buying in China, comercio electronico, e-commerce" />
<META NAME="robots" CONTENT="index,follow">
<!-- Metadatos -->

<!-- Analytics -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-98253721-1', 'auto');
  ga('send', 'pageview');
</script>
<!-- Analytics -->

<title>Zaibox</title>
<link rel="stylesheet" type="text/css" href="chrometheme/chromestyle.css" />

<script language="javascript"> 
//Su explorador no soporta java o lo tiene deshabilitado; esta pagina necesita javascript para funcionar correctamente<!-- 
//Copyright © McAnam.com 

function abrir(direccion, pantallacompleta, herramientas, direcciones, estado, barramenu, barrascroll, cambiatamano, ancho, alto, izquierda, arriba, sustituir){ 
     var opciones = "fullscreen=" + pantallacompleta + 
                 ",toolbar=" + herramientas + 
                 ",location=" + direcciones + 
                 ",status=" + estado + 
                 ",menubar=" + barramenu + 
                 ",scrollbars=" + barrascroll + 
                 ",resizable=" + cambiatamano + 
                 ",width=" + ancho + 
                 ",height=" + alto + 
                 ",left=" + izquierda + 
                 ",top=" + arriba; 
     //var ventana = window.open(direccion,"venta",opciones,sustituir); 

}                    
//-->     
</script> 

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
.style1 {font-size: 10px;
	font-family: Arial, Helvetica, sans-serif;
	color: #FFFFFF;
}
-->
</style>
<style type="text/css">

div.scrolled {
  width: 600px;
  height: 380px;
  overflow: scroll;
}

</style>

<script language="javascript">

carpeta = '';
fotos = ['cuerpo_pp.png','cuerpo_pp_2.png'];
n = 0;

function verImg()
{
	document.getElementById('pic').src = carpeta+fotos[n];
	n++;
	if(n>=fotos.length) n=0;
}
  
setInterval('verImg()',5000);

</script>

<script language=javascript> 

/*function validar(e,obj) {
  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla != 13) return;
  filas = obj.rows;
  txt = obj.value.split('\n');
  return (txt.length < filas);
}

function fp(URL)
{
    var winl = (screen.width - 400) / 2;
    var wint = (screen.height - 400) / 2;
	
	window.open(URL,"cityPopUp","width=400,height=400,top=" + wint + ",left=" + winl + ",scrollbars=no,toolbar=no,resizable=yes");
}*/

function abreSugerencias (){ 
   window.open("sugerencias.asp","ventana1","width=500,height=400,scrollbars=NO,toolbar=no") 
}

function abreTarifas (){ 
   window.open("tarifas.asp","ventana1","width=815,height=250,scrollbars=NO,toolbar=no") 
}

function abreChat (){ 
   window.open("http://www.zaicargochat.com/index.php?option=com_jlivechat&view=popup&tmpl=component&popup_mode=popup","ventana1","width=500,height=400,scrollbars=NO,toolbar=no") 
}

</script> 

</head>

<!--FONDO HORA-->
<%
	Dim hora, fondo, color, logo, texto1, texto2, pasos
	hora = CInt(hour(Now))
	if hora > 6 and hora < 15 Then
		fondo = "FondoDia"
		color = "#044E91"
		colordia = "#021C3C"
		logo = "_W"
		texto1 = "letrasLCTelsWhite"
		texto2 = "letrasLCTelsWhite"
		texto3 = "letrasLCWhite"
		pasos = ""
    Else if hora > 15 and hora <18 Then
		fondo = "FondoTarde"
		color = "#505050"
		logo = ""
		texto1 = "letrasLC"
		texto2 = "letrasLCNeg"
		texto3 = "letrasLCAster"
		pasos = ""
	Else
		fondo = "FondoNoche"
		color = "#636363"
		logo = "_W"
		texto1 = "letrasLCTelsWhite"
		texto2 = "letrasLCTelsWhite"
		texto3 = "letrasLCAster"
		pasos = "_n"
	End if
	End if		
	
%>

<body onLoad="abrir('anuncio.asp',0,0,0,0,0,1,0,450,500,512,250,100);" style="background-color:<%= color%>; background-repeat:repeat-x; background-image:url(imagenes/<%= fondo%>.jpg);">
<!--url's used in the movie-->
<!--text used in the movie-->
<!-- saved from url=(0013)about:internet -->
<table width="970" border="0" align="center">

  <tr>
    <td align="left" valign="default"><img src="imagenes/Banner_Superior_Master_com<%= logo%>.png" width="231" height="121" alt="Casillero"></td>
    <td align="right" valign="default">
    
    <div style="width:540px; height:28px; background-color:#069">
      <!--#include file="_INC_menu.asp"-->
    </div>
    
    </td>
  </tr>

  <tr>
    <td colspan="2"></td>
  </tr>
  <tr>
    <td colspan="2" align="center" style="background-repeat:no-repeat"><table border="0">
        <tr>
          <td rowspan="2"><img src="imagenes/Registrese.png" alt="Registro" width="152" height="55" border="0" usemap="#Map2"></td>
          
          <td rowspan="3">
		  <!--#include file="_INC_loginp.asp"-->
          </td>
          
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td rowspan="8" class="letrasLC"><table width="100" border="0" style="background:url(imagenes/m_cajitas.png); background-position:right; background-position:top; background-repeat:no-repeat">
            <tr align="right">
              <td valign="top"><table width="100" border="0">
                <tr align="center">
                  <td><span class="<%= texto3%>">Colombia</span></td>
                  <td><span class="<%= texto3%>">Ecuador</span></td>
                  <td><span class="<%= texto3%>">España</span></td>
                  <td><span class="<%= texto3%>">Francia</span></td>
                  </tr>
                <tr>
                  <td class="letrasLCAster"><img src="imagenes/B_Colombia.jpg" alt="Colombia" width="60" height="34" border="1" usemap="#Map6"></td>
                  <td class="letrasLCAster"><img src="imagenes/B_Ecuador.jpg" alt="Ecuador" width="60" height="34" border="1" usemap="#Map8"></td>
                  <td class="letrasLCAster"><img src="imagenes/B_Espana.jpg" alt="España" width="60" height="34" border="1" usemap="#Map10"></td>
                  <td class="letrasLCAster"><img src="imagenes/B_Francia.jpg" alt="Francia" width="60" height="34" border="1"></td>
                </tr>
              </table></td>
              </tr>
            <tr align="right">
              <td>
              
              	<div class="scrolled" align="center">
				 <table width="580" border="0" bgcolor="#FFFFFF">
                  <tr align="center">
                    <td><a href="http://www.appliancepartspros.com/" target="_blank"><img src="imagenes/tiendas/appliance.png" width="220" height="30"  alt=""/></a></td>
                    <td><a href="http://www.adidas.com/us/" target="_blank"><img src="imagenes/tiendas/adidas.png" width="178" height="55"  alt=""/></a></td>
                    <td><a href="http://www.fnac.com/" target="_blank"><img src="imagenes/tiendas/fnac.jpg" width="70" height="55"  alt=""/></a></td>
                  </tr>
                  <tr align="center">
                    <td><a href="http://www.cookieskids.com/Default.aspx?utm_source=Linkshare&utm_medium=CPA&utm_campaign=lp8*isVNBXE&cid=AF|lp8*isVNBXE|10000015" target="_blank"><img src="imagenes/tiendas/cookies.jpg" width="217" height="50"  alt=""/></a></td>
                    <td><a href="http://www.elcorteingles.es/" target="_blank"><img src="imagenes/tiendas/corteIngles.png" width="178" height="52"  alt=""/></a></td>
                    <td><a href="http://www.ebay.com/" target="_blank"><img src="imagenes/tiendas/ebay.png" width="125" height="50"  alt=""/></a></td>
                  </tr>
                  <tr align="center">
                    <td><a href="http://www.esportsonline.com/?WEBSRC=LS_BANN_GENERIC&utm_source=LS&utm_medium=CSE&utm_campaign=LS_BANN" target="_blank"><img src="imagenes/tiendas/esports.gif" width="224" height="60"  alt=""/></a></td>
                    <td><a href="es.buyvip.com" target="_blank"><img src="imagenes/tiendas/buyvip.jpg" width="167" height="50"  alt=""/></a></td>
                    <td><a href="http://www.fragrancenet.com/" target="_blank"><img src="imagenes/tiendas/fragance.jpg" width="120" height="60"  alt=""/></a></td>
                  </tr>
                  <tr align="center">
                    <td><a href="http://www.fold3.com/" target="_blank"><img src="imagenes/tiendas/footnote.png" width="224" height="39"  alt=""/></a></td>
                    <td><a href="http://www.gameduell.com/" target="_blank"><img src="imagenes/tiendas/gameduell.gif" width="150" height="50"  alt=""/></a></td>
                    <td><a href="http://www.kmart.com/" target="_blank"><img src="imagenes/tiendas/kmart.png" width="83" height="55"  alt=""/></a></td>
                  </tr>
                  <tr align="center">
                    <td><a href="http://www.macys.com/" target="_blank"><img src="imagenes/tiendas/macys.png" width="142" height="55"  alt=""/></a></td>
                    <td><a href="http://www.newegg.com/" target="_blank"><img src="imagenes/tiendas/newegg.png" width="137" height="55"  alt=""/></a></td>
                    <td><a href="http://www.nike.com/" target="_blank"><img src="imagenes/tiendas/nike.jpg" width="110" height="55"  alt=""/></a></td>
                  </tr>
                  <tr align="center">
                    <td><a href="http://www.payless.com/" target="_blank"><img src="imagenes/tiendas/payless.png" width="182" height="55"  alt=""/></a></td>
                    <td><a href="http://www.petsmart.com/" target="_blank"><img src="imagenes/tiendas/petsmart.png" width="178" height="44"  alt=""/></a></td>
                    <td><a href="http://www.puma.com/" target="_blank"><img src="imagenes/tiendas/puma.png" width="110" height="55"  alt=""/></a></td>
                  </tr>
                  <tr align="center">
                    <td><a href="http://www.target.com/" target="_blank"><img src="imagenes/tiendas/target.jpg" width="221" height="50"  alt=""/></a></td>
                    <td><a href="http://www.toysrus.com/" target="_blank"><img src="imagenes/tiendas/toysrus.png" width="160" height="55"  alt=""/></a></td>
                    <td><a href="http://www.sears.com/" target="_blank"><img src="imagenes/tiendas/sears.png" width="87" height="55"  alt=""/></a></td>
                  </tr>
                  <tr align="center">
                    <td><a href="http://www.tigerdirect.com/" target="_blank"><img src="imagenes/tiendas/tigerdirect.jpg" width="200" height="35"  alt=""/></a></td>
                    <td><a href="http://www.vipventa.com/" target="_blank"><img src="imagenes/tiendas/vipventa.png" width="178" height="38"  alt=""/></a></td>
                    <td><a href="http://www.walgreens.com/" target="_blank"><img src="imagenes/tiendas/walgreens.png" width="145" height="55"  alt=""/></a></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
				</div>
              
              </td>
            </tr>
            <tr>
              <td align="right"></td>
              </tr>
            <tr>
              <td align="center"><img src="imagenes/Pasos<%= pasos%>.png" width="575" height="120" alt="3 sencillos pasos"></td>
              </tr>
          </table></td>
        </tr>
        <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        </tr>
      <tr>
        <td colspan="2"><table width="100" border="0">
          <tr>
            <td><img src="imagenes/Calculadora.jpg" alt="Cotizador" width="77" height="80" border="0" usemap="#Map5"></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><img src="imagenes/Noticias.jpg" alt="Cotizador" width="80" height="80" border="0" usemap="#Map7"></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td align="center"><img src="imagenes/Condiciones.jpg" alt="Cotizador" width="71" height="80" border="0" usemap="#Map3"></td>
            <td>&nbsp;</td>
            <td><!-- <a href="javascript:abreTarifas()"><img src="imagenes/Tarifas.jpg" alt="Cotizador" width="71" height="80" border="0"></a> --></td>
            <td>&nbsp;</td>
            </tr>
          <tr>
            <td align="center"><span class="<%= texto2%>">Cotizador</span></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td align="center"><span class="<%= texto2%>">Noticias</span></td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center"><span class="<%= texto2%>">Condiciones</span></td>
            <td align="center">&nbsp;</td>
            <td align="center"><!-- <span class="<%= texto2%>">Tarifas</span> --></td>
            <td align="center">&nbsp;</td>
            </tr>
          <tr>
            <td colspan="10">&nbsp;</td>
            </tr>
          <tr>
            <td><a href="javascript:abreSugerencias()"><img src="imagenes/Sugerencias.jpg" alt="Cotizador" width="80" height="80" border="0"></a></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><img src="imagenes/Contactenos.jpg" alt="Cotizador" width="80" height="80" border="0" usemap="#Map4"></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><img src="imagenes/Soporte.jpg" alt="Cotizador" width="80" height="80" border="0" usemap="#Map9"></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
          <tr>
            <td align="center"><span class="<%= texto2%>">Sugerencias</span></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td align="center"><span class="<%= texto2%>">Cont&aacute;ctenos</span></td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center"><span class="<%= texto2%>">Ayuda en l&iacute;nea</span></td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            </tr>
          <tr>
            <td colspan="10"></td>
            </tr>
          </table></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        
        <form action="http://zaicargo.controlbox.net/app/rastreo/rastreo.asp" method="post" target="_blank">

       	<td colspan="2"><span class="letrasLCRed">Gu&iacute;a</span>
          <input name="nrogui" style="background-color:#FFD" type="text" id="nrogui" />
          <input name="ffw" type="hidden" value="00001" />
          <input type="submit" class="botones" value="Rastree su paquete"></td>
        
        </form>
          
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" valign="top"><table border="0" background="imagenes/fondo.png">
          <tr>
            <td><img src="imagenes/pse.png"  alt="" width="75" height="75" usemap="#Map8Map" border="0"/></td>
            <td>&nbsp;</td>
            <td><img src="imagenes/paypal.png"  alt="" width="75" height="75" usemap="#Map9Map" border="0"/></td>
          </tr>
          </table>
          <map name="Map8Map">
            <area shape="rect" coords="1,2,79,74" href="http://zaibox.net/pagos.asp" target="_blank">
          </map>
          <map name="Map9Map">
            <area shape="rect" coords="1,4,75,73" href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=UB9MP2QMKX87A" target="_blank">
          </map></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" valign="bottom"><img src="imagenes/S_facebook.png" width="25" height="25" alt="Facebook"><img src="imagenes/S_twitter.png" width="25" height="25" alt="Twitter"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td align="center">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="5"><span class="letrasLCWhite">Powered by Kerberus</span></td>
        <td align="right"><span class="letrasLCWhite">Zaibox.net 2014</span></td>
      </tr>
    </table></td>
  </tr>
  <tr align="left">
    <td colspan="2" class="letrasLCBlue"></td>
  </tr>
  
  <tr>
    <td colspan="4" align="center" valign="bottom"><script type="text/javascript">
cssdropdown.startchrome("chromemenu")
</script>
      
    </td>
  </tr>
  <tr>
    <td colspan="2" align="left">&nbsp;</td>
  </tr>
</table>

<map name="Map">
  <area shape="rect" coords="4,3,307,92" href="http://zaicargo.controlbox.net/webcasilleros/registro.asp" target="_blank">
</map>

<map name="Map2">
  <area shape="rect" coords="10,2,145,62" href="http://zaicargo.controlbox.net/webcasilleros/registro.asp" target="_blank">
</map>

<map name="Map3">
  <area shape="rect" coords="0,-1,70,79" href="condiciones.asp" target="_self">
</map>

<map name="Map4">
  <area shape="rect" coords="0,0,83,90" href="https://mapsengine.google.com/map/edit?mid=zS08AxKjofuU.knr_kNu9eVe8" target="_blank">
</map>

<map name="Map5">
  <area shape="rect" coords="2,0,78,81" href="cotizador.asp">
</map>

<map name="Map6">
  <area shape="rect" coords="0,1,65,42" href="http://zaibox.net/cotizador/Colombia/" target="_self" alt="Colombia">
</map>

<map name="Map7">
  <area shape="rect" coords="1,1,101,106" href="noticias.asp">
</map>
<map name="Map9">
  <area shape="rect" coords="3,0,81,81" href="http://www.zaicargochat.com/livehelp/" target="_blank">
</map>

<map name="Map8">
  <area shape="rect" coords="1,0,59,33" href="http://zaibox.net/cotizador/Ecuador/">
</map>

<map name="Map10">
  <area shape="rect" coords="0,1,60,33" href="#">
</map>

<map name="Map11">
  <area shape="rect" coords="1,0,137,56" href="https://www.psepagos.co/PSEHostingUI/ShowTicketOffice.aspx?ID=1482" target="_blank">
</map>

<map name="Map12">
  <area shape="rect" coords="5,3,143,56" href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=UB9MP2QMKX87A" target="_blank">
</map>
</body>
</html>
