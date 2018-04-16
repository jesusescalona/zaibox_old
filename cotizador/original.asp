<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="Page-Exit" content="progid:DXImageTransform.Microsoft.GradientWipe(duration=1.0, gradientsize=0.2)"/>
<title>Casillero - Zaicargo</title>
<link rel="stylesheet" type="text/css" href="../../chrometheme/chromestyle.css" />

<script type="text/javascript" src="../../chromejs/chrome.js">
/***********************************************
* Chrome CSS Drop Down Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/
</script>
<script language="javascript">AC_FL_RunContent = 0;</script>
<script src="../../AC_RunActiveContent.js" language="javascript"></script>
<script src="../../m4m/mootools.js" type="text/javascript"></script>
<script type="../../text/javascript" src="expandclass/imagemenu/imageMenu.js"></script>
<link href="../../web.css" rel="stylesheet" type="text/css" />
<link type="../../image/x-icon" href="favicon.ico" rel="icon" />

<link href="../../expandclass/imagemenu/imageMenu.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style7 {font-family: Calibri;
	font-size: 14px;
}
.style1 {	font-size: 10px;
	font-family: Arial, Helvetica, sans-serif;
	color: #FFFFFF;
}
.style11 {font-family: Calibri}
.style18 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: 14px; }
.style2 {font-family: Calibri; color: #000000; }
.style21 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: 12px; }
.style3 {color: #000000}
.style71 {font-size: 16px}
-->
</style>

<script LANGUAGE="JavaScript">
 
   function Calcula(cbTipoProducto, txtValorProducto, txtPesoLibras, txtPesoKilos)
   { 
   
	//Declaración de variables 
	var r=1;
	 
	 //Validar los campos, que no sean nulos y que sean numéricos 
	if (formulario.txtValorProducto.value=="") {r=0;alert("Por favor ingrese el Valor del Producto"); formulario.txtValorProducto.focus}
	else if (formulario.txtValorProducto.value<1) {r=0;alert("El Valor del producto debe ser mayor a 0"); formulario.txtValorProducto.focus}
	else if (formulario.txtPesoLibras.value=="" && formulario.txtPesoKilos.value=="") {r=0;alert("Por favor ingrese el Peso en Libras ó en kilos"); formulario.txtPesoLibras.focus}
	else if (formulario.txtPesoLibras.value<5 && formulario.txtPesoKilos.value<2.27) {r=0;alert("El Peso mínimo debe ser 5 Lbs ó 2,27 Kgs"); formulario.txtPesoLibras.focus}
	else {r=1};
  
  if (r==1){
   
  var VarTipoProducto;
  var VarValorProducto;
  var VarPesoLibras;
  var VarPesoLibrasV;
  var VarPesoKilos;
  var VarPesoKilosV;
  var VarLargo;
  var VarAlto;
  var VarAncho;
  var VarDimensiones;
  
  var VarCIF;
  var VarArancel;
  var VarIVA;
  var VarAduana;
  var VarFlete;
  var VarSeguro;
  var VarCostoEnvio;
  var VarCostoTotal;
  var VarImpuestos;
  
  VarTipoProducto= parseFloat(formulario.cbTipoProducto.value);
  VarValorProducto= parseFloat(formulario.txtValorProducto.value);
  VarPesoLibras= parseFloat(formulario.txtPesoLibras.value);
  VarPesoLibrasV= parseFloat(formulario.txtPesoLibras.value);
  VarPesoKilos= parseFloat(formulario.txtPesoKilos.value);
  VarPesoKilosV= parseFloat(formulario.txtPesoKilos.value);
  VarLargo= parseFloat(formulario.txtLargo.value);
  VarAlto= parseFloat(formulario.txtAlto.value);
  VarAncho= parseFloat(formulario.txtAncho.value);
  
  VarDimensiones = (VarLargo * VarAlto * VarAncho)/166;
  if (VarDimensiones > VarPesoLibras) {VarPesoLibras = VarDimensiones}
  
  VarAduana = 0; /*VarValorProducto * 0.05;*/
  VarSeguro = VarValorProducto * 0.005;
  VarFlete = VarPesoLibras * 0.1587;
  VarCIF = VarValorProducto + VarSeguro + VarFlete;
  
  VarArancel = VarCIF * VarTipoProducto;
  VarIVA = (VarCIF + VarArancel) * 0.16
  
  VarImpuestos = VarArancel + VarIVA;
   
  //Costos
  VarCostoEnvio = VarAduana + VarSeguro + VarFlete + VarArancel + VarIVA;
  VarCostoTotal = VarValorProducto + VarCostoEnvio;
  
  //Flete Us
  VarFlete = VarPesoLibras * 3;
  if(VarPesoLibras < 5) {VarFlete = 15;}
  
  //Seguro Us
  VarSeguro = VarValorProducto * 0.03;
  
  //Costo Envío
  VarCostoEnvio = VarImpuestos + VarFlete + VarSeguro;
  
  //Resultados
  /*formulario.txtCIF.value = Math.round(VarCIF*100)/100;*/
  /*formulario.txtArancel.value = Math.round(VarArancel*100)/100;*/
  /*formulario.txtIVA.value = Math.round(VarIVA*100)/100;*/
  /*formulario.txtAduana.value = Math.round(VarAduana*100)/100;*/
  
  if(VarPesoLibrasV != 0){VarPesoKilosV = VarPesoLibrasV * 0.454;}
  else if (VarPesoKilosV != 0){VarPesoLibrasV = VarPesoKilosV / 0.454;}
  
  formulario.txtImpuestos.value = Math.round(VarImpuestos*100)/100;
  formulario.txtFlete.value = Math.round(VarFlete*100)/100;
  formulario.txtSeguro.value = Math.round(VarSeguro*100)/100;
  formulario.txtCostoEnvio.value = Math.round(VarCostoEnvio*100)/100 + "  (USD)";
  
  /*formulario.txtPesoLibras.value = Math.round(VarPesoLibrasV*100)/100;
  formulario.txtPesoKilos.value = Math.round(VarPesoKilosV*100)/100;*/
  /*formulario.txtCostoTotal.value = Math.round(VarCostoTotal*100)/100;*/
	  
	  return;
   } 
   }
   
	function ConvierteaKilos(txtPesoLibras)
   	{
   
    var VarPesoLibrasV;
	var VarPesoKilosV;
	
	VarPesoLibrasV= parseFloat(formulario.txtPesoLibras.value);   
	VarPesoKilosV = VarPesoLibrasV * 0.454;
	formulario.txtPesoKilos.value = Math.round(VarPesoKilosV*100)/100;
	
	}
	
	function ConvierteaLibras(txtPesoKilos)
   	{
   
    var VarPesoLibrasV;
	var VarPesoKilosV;
	
	VarPesoKilosV= parseFloat(formulario.txtPesoKilos.value);   
	VarPesoLibrasV = VarPesoKilosV / 0.454;
	formulario.txtPesoLibras.value = Math.round(VarPesoLibrasV*100)/100;
	
	}
 
</script> 
 
 
<script LANGUAGE="JavaScript"> 
 
	function Reflesh()
	{
		window.location.reload();
	}
</script>

</head>

<body style="background-color:#999; background-repeat:repeat-x; background-image:url(../../imagenes/Fondo_Master3_V3.png)">
<!--url's used in the movie-->
<!--text used in the movie-->
<!-- saved from url=(0013)about:internet -->
<table width="981" border="0" align="center">

  <tr>
    <td align="left" valign="default"><img src="../../imagenes/Banner_Superior_Master.jpg" width="424" height="107" alt="Casillero"></td>
    <td align="center"><table width="100" border="0">
      <tr>
        <td align="center"><img src="../../imagenes/Calculadora.jpg" width="67" height="70" alt="Cotizador"></td>
        </tr>
      <tr>
        <td align="center"><span class="letrasLCBlue">Cotice su env&iacute;o</span></td>
        </tr>
    </table></td>
  </tr>

  <tr bgcolor="#006599">
    <td colspan="2">
    
   <!--#include file="../../_INC_menu.asp"-->

<script type="text/javascript">
cssdropdown.startchrome("chromemenu")
</script>    </td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
  <form action="../../selPais.asp" method="post" name="form2" id="form2">
    <td colspan="2" class="letrasLC" align="center">Calcule su env&iacute;o desde USA a:  
      <select style="background-color:#D7EBFF" name="cboPais" id="cboPais" onChange="javascript: document.forms['formulario'].submit();">
<option value="#">Seleccione su país...</option>
                      <option value="Argentina">Argentina</option>
                      <option value="Belice">Belice</option>
                      <option value="Bolivia">Bolivia</option>
                      <option value="Brasil">Brasil</option>
                      <option value="Canada">Canada</option>
                      <option value="Chile">Chile</option>
                      <option value="Colombia">Colombia</option>
                      <option value="Costa_Rica">Costa Rica</option>
                      <option value="Ecuador">Ecuador</option>
                      <option value="Espa&ntilde;a">Espa&ntilde;a</option>
                      <option value="Estados_Unidos">Estados Unidos</option>
                      <option value="Francia">Francia</option>
                      <option value="Guatemala">Guatemala</option>
                      <option value="Honduras">Honduras</option>
                      <option value="Mexico">Mexico</option>
                      <option value="Nicaragua">Nicaragua</option>
                      <option value="Panama">Panama</option>
                      <option value="Paraguay">Paraguay</option>
                      <option value="Peru">Peru</option>
                      <option value="Puerto_Rico">Puerto Rico</option>
                      <option value="RepublicaD">Republica Dominicana</option>
                      <option value="Salvador">Salvador</option>
                      <option value="Uruguay">Uruguay</option>
                      <option value="Venezuela">Venezuela</option>
                    </select>
    </td>
    </form>
  </tr>
  <tr>
    <td colspan="2"></td>
  </tr>
  <tr>
    <td colspan="2"></td>
  </tr>
  <tr>
    <td colspan="2" align="center" style="background-repeat:no-repeat"><table width="600" border="0" cellspacing="0" cellpadding="0" style="background:url(Imagenes/Body.jpg)" height="216">
      <tr>
        <th scope="col"> <form method="post" action="index.asp" name="formulario" id="formulario">
          <table width="850" border="0" align="center" cellpadding="3" cellspacing="0" class="titulos2">
            <%if errores="El casillero se creo satisfactoriamente, " then %>
            <%else%>
            <tr valign="baseline">
              <td align="right" nowrap class="letrasLC"></td>
            </tr>
            <tr valign="baseline">
              <td align="right" nowrap><div align="center">
                <table width="870" border="0" cellspacing="0" cellpadding="0" style="background:url(Imagenes/Body.jpg)" height="180">
                  <tr>
                    <th scope="col"><a href="registro.html"></a><a href="tiendas.html"></a>
                      <table width="868" border="0">
                        <tr>
                          <td><table border="0">
                            <tr>
                              <td colspan="4" bgcolor="#FEDA00" class="letrasLCHBlue">INGRESE LA INFORMACI&Oacute;N DEL ENV&Iacute;O</td>
                            </tr>
                            <tr>
                              <td bgcolor="#FFFFFF" class="letrasLC"><div align="left">Tipo de Producto</div></td>
                              <td colspan="3" bgcolor="#FFFFFF" ><div align="left">
                                <select style="background-color:#FFD" class="letrasLC" name="cbTipoProducto" id="cbTipoProducto">
                                  <option value="0.1">Art Deportivos, Maq. Ejercicios - (10.00%)</option>
                                  <option value="0.1">Art&iacute;culos Deportivos - (10.00%)</option>
                                  <option value="0.05">C&aacute;maras Fotogr&aacute;ficas - (5.00%)</option>
                                  <option value="0.05">Computadoras - (5.00%)</option>
                                  <option value="0.05">Computadoras, Accesorios - (5.00%)</option>
                                  <option value="0.05">Computadoras, Monitores - (5.00%)</option>
                                  <option value="0.05">Computadoras, Partes - (5.00%)</option>
                                  <option value="0.05">Computadoras, Programas - (5.00%)</option>
                                  <option value="0.05">Electr&oacute;nicos, Agendas - (5.00%)</option>
                                  <option value="0.05">Electr&oacute;nicos, C&aacute;mara de Digital - (5.00%)</option>
                                  <option value="0.05">Electr&oacute;nicos, C&aacute;mara de Video - (5.00%)</option>
                                  <option value="0.05">Herramienta Neum&aacute;tica - (5.00%)</option>
                                  <option value="0.05">Instrumentos metereolog&iacute;a - (5.00%)</option>
                                  <option value="0.1">Instrumentos Musicales - (10.00%)</option>
                                  <option value="0.05">LABORATORY SUPPLIES  - (5.00%)</option>
                                  <option value="0">Libros - (0%)</option>
                                  <option value="0.1">Otros - (10.00%)</option>
                                  <option value="0.1">Partes - (10.00%)</option>
                                  <option value="0.05">Partes de Cromatograf&iacute;a - (5.00%)</option>
                                  <option value="0.1">Partes, Automotrices - (10.00%)</option>
                                  <option value="0.1">Partes, Electr&oacute;nicos - (10.00%)</option>
                                  <option value="0.05">REACTIVOS DIAGNOSTICO - (5.00%)</option>
                                  <option value="0">Revistas - (0%)</option>
                                </select>
                              </div></td>
                            </tr>
                            <tr>
                              <td bgcolor="#FFFFFF" class=letrasLC><div align="left">Valor del Producto (Factura) </div></td>
                              <td colspan="3" bgcolor="#FFFFFF" class="style2"><div align="left"><span class="letrasLC"><span class="style18">
                                <input  style="background-color:#FFD" class="letrasLC" name="txtValorProducto" type="text" id="txtValorProducto" tabindex="3" value="0" />
                              </span>(USD)</span></div></td>
                            </tr>
                            <tr>
                              <td bgcolor="#FFFFFF" class=letrasLC>Dimensiones Largo (Pulg)</td>
                              <td colspan="3" bgcolor="#FFFFFF" class=letrasLC><span class="style18">
                                <input  style="background-color:#FFD" class="letrasLC" name="txtLargo" type="text" id="txtLargo" tabindex="2" value="0" size="5" maxlength="10" />
                                </span>
                                <div align="left"></div></td>
                            </tr>
                            <tr>
                              <td bgcolor="#FFFFFF" class=letrasLC>Dimensiones Alto (Pulg)</td>
                              <td colspan="3" bgcolor="#FFFFFF" class=letrasLC><span class="style18">
                                <input style="background-color:#FFD" class="letrasLC" name="txtAlto" type="text" id="txtAlto" tabindex="2" value="0" size="5" maxlength="10" />
                                </span>
                                <div align="left"></div></td>
                            </tr>
                            <tr>
                              <td bgcolor="#FFFFFF" class=letrasLC>Dimensiones Ancho (Pulg)</td>
                              <td colspan="3" bgcolor="#FFFFFF" class=letrasLC><span class="style18">
                                <input style="background-color:#FFD" class="letrasLC" name="txtAncho" type="text" id="txtAncho" tabindex="2" value="0" size="5" maxlength="10" />
                                </span>
                                <div align="left"></div></td>
                            </tr>
                            <tr>
                              <td bgcolor="#FFFFFF" class=letrasLC><div align="left">Peso</div></td>
                              <td colspan="3" bgcolor="#FFFFFF" class=letrasLC><span class="style3"><span class="style18">
                                <input style="background-color:#FFD" class="letrasLC" name="txtPesoLibras" type="text" id="txtPesoLibras" tabindex="2" value="0" size="5" maxlength="10" onBlur="javascript:ConvierteaKilos();" />
                                </span></span>(Lbs) &oacute; <span class="style3"><span class="style18">
                                  <input style="background-color:#FFD" class="letrasLC" name="txtPesoKilos" type="text" id="txtPesoKilos" tabindex="2" value="0" size="5" maxlength="10" onBlur="javascript:ConvierteaLibras();" />
                                </span></span>(Kgs)</td>
                            </tr>
                            <tr>
                              <td colspan="4" bgcolor="#FFFFFF" class="style2">&nbsp;</td>
                            </tr>
                            <tr>
                              <td colspan="4" bgcolor="#D9ECFF" class="style2"><div align="center">
                                <input type="button" value=" Calcular " onClick="javascript:Calcula();" />
                                <input type="button" value=" Limpiar " onClick="javascript:Reflesh();" />
                              </div></td>
                              </tr>
                          </table></td>
                          <td valign="top"><table border="0">
                            <tr bgcolor="#FFFFFF">
                              <td colspan="2"  bgcolor="#FEDA00" class="letrasLCHBlue">COSTO DEL ENV&Iacute;O</td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              <td bgcolor="#E7E7E7" class="style7 style3 style1 txtTextoBJ"><span class="style21">Impuestos (Arancel + IVA)</span></td>
                              <td class="style2"><span class="style18">
                                <input style="background-color:#F2F2F2" name="txtImpuestos" type="text" id="txtImpuestos" value="0" readonly="readonly" />
                              </span></td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              <td bgcolor="#E7E7E7" class="style7 style3 style1 txtTextoBJ"><span class="style21">Flete</span></td>
                              <td class="style2"><span class="style18">
                                <input style="background-color:#F2F2F2" name="txtFlete" type="text" id="txtFlete" value="0" readonly="readonly" />
                              </span></td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              <td bgcolor="#E7E7E7" class="style7 style3 style1 txtTextoBJ"><span class="style21">Seguro</span></td>
                              <td class="style2"><span class="style18">
                                <input style="background-color:#F2F2F2" name="txtSeguro" type="text" id="txtSeguro" value="0" readonly="readonly" />
                              </span></td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              <td bgcolor="#FFDBB7" class="style7 style3 style1 txtTextoBJ"><span class="style21">Costo Total del Env&iacute;o</span></td>
                              <td class="style2"><span class="style18">
                                <input style="background-color:#FFD9B3; text-decoration:overline" name="txtCostoEnvio" type="text" id="txtCostoEnvio" value="0" readonly="readonly" />
                              </span></td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              <td class="style2">&nbsp;</td>
                              <td class="style2">&nbsp;</td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              <td class="style2">&nbsp;</td>
                              <td class="style2">&nbsp;</td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              <td class="style2">&nbsp;</td>
                              <td class="style2">&nbsp;</td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              <td class="style2">&nbsp;</td>
                              <td class="style2">&nbsp;</td>
                            </tr>
                          </table></td>
                        </tr>
                      </table></th>
                    </tr>
                  </table>
                </div></td>
            </tr>
            <%end if%>
            </table>
        </form>
          </th>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2" align="center" valign="bottom"><span class="letrasLCAster">* El precio calculado es un estimado del costo de env&iacute;o, los costos finales pueden variar con base en el peso real del mismo y el valor de la factura de compra.</span></td>
  </tr>
  <tr>
    <td colspan="2" align="left" valign="bottom">&nbsp;</td>
  </tr>
  
  <tr>
    <td colspan="2" align="left" valign="bottom">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="left" valign="bottom">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="left" valign="bottom">&nbsp;</td>
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
