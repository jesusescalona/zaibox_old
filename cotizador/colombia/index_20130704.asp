<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="Page-Exit" content="progid:DXImageTransform.Microsoft.GradientWipe(duration=1.0, gradientsize=0.2)"/>
<title>Casillero - Zaicargo</title>
<link rel="stylesheet" type="text/css" href="../..//chrometheme/chromestyle.css" />

<script type="text/javascript" src="../..//chromejs/chrome.js">
/***********************************************
* Chrome CSS Drop Down Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/
</script>
<script language="javascript">AC_FL_RunContent = 0;</script>
<script src="../..//AC_RunActiveContent.js" language="javascript"></script>
<script src="../..//m4m/mootools.js" type="text/javascript"></script>
<script type="text/javascript" src="../..//expandclass/imagemenu/imageMenu.js"></script>
<link href="../..//web.css" rel="stylesheet" type="text/css" />
<link type="image/x-icon" href="../..//favicon.ico" rel="icon" />

<link href="../..//expandclass/imagemenu/imageMenu.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style7 {font-family: Calibri;
	font-size: 14px;
}
.style1 {	font-size: 10px;
	font-family: Arial, Helvetica, sans-serif;
	color: #FFFFFF;
}
.style18 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: 14px; }
.style2 {font-family: Calibri; color: #000000; }
.style21 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: 12px; }
.style3 {color: #000000}
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

<body style="background-color:#E6E6E6; background-repeat:no-repeat; background-image:url(../../imagenes/shop2.jpg); background-position:inherit">
<!--url's used in the movie-->
<!--text used in the movie-->
<!-- saved from url=(0013)about:internet -->
<table width="981" border="0" align="center">

  <tr>
    <td align="left" valign="default"><img src="../..//imagenes/Banner_Superior_Master_com.png" alt="Casillero" width="231" height="121" border="0" usemap="#Map"></td>
    <td align="right"><div style="width:520px; height:28px; background-color:#069">
      <!--#include file="../../_INC_menu.asp"-->
    </div></td>
  </tr>
  <tr>
    <td colspan="2"><table width="930" border="0">
      <tr>
        <td valign="top"><table border="0" dwcopytype="CopyTableCell">
           <tr>
            <td><img src="../..//imagenes/Registrese.png" alt="Registro" width="152" height="55" border="0" usemap="#Map2"></td>
            <td rowspan="2" align="right" class="letrasLC">
		  <!--#include file="../..//_INC_login.asp"-->
            </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            </tr>
        </table></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2" align="center">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="center">
    <table width="600" border="0" cellspacing="0" cellpadding="0" height="216">
      <tr>
        <th scope="col"> 
          <table width="800" bgcolor="#FFFFFF" border="0" align="center" cellpadding="3" cellspacing="0" class="titulos2">

            <tr valign="baseline" >
              <td colspan="4" align="right" nowrap bgcolor="#FEDA00"><div align="left" class="letrasLCHBlue"><strong>COTIZADOR</strong></div></td>
              </tr>
            <tr valign="baseline">
              <td align="left" style="background-color:#0053A6"><img src="../../imagenes/B_Colombia.jpg" width="53" height="30" alt="Colombia"><span class="letrasLCWhite"> Colombia</span></td>
              <td colspan="2" align="center" style="background-color:#0053A6">&nbsp;</td>
            </tr>
            <tr valign="baseline">
              <td colspan="3" align="center" style="background-color:#0053A6"><span class="letrasLCTelsWhite">Calcule su env&iacute;o desde USA a:</span><span class="letrasLC">
                <select style="background-color:#D7EBFF" name="cboPais" id="cboPais" onChange="javascript: document.forms['formulario'].submit();">
                  <option value="#">Seleccione su país...</option>
                  <option value="#">---------------------</option>
                  <option value="Colombia">Colombia</option>
                  <option value="#">Ecuador</option>
                  <option value="#">Panama</option>
                  </select>
                </span></span></td>
            
            <form action="selPais.asp" method="post" name="form2" id="form2">
              </form>
                
            </tr>
            <tr valign="baseline">
              <td colspan="4" align="justify" style="background-color:#0053A6"></td>
            </tr>
            <tr valign="baseline">
              <td colspan="4" align="right" nowrap class="letrasLCTelsWhite"><table width="600" border="0" cellspacing="0" cellpadding="0" style="background:url(Imagenes/Body.jpg)" height="216">
                <tr>
                  <th scope="col"> <form method="post" action="index.asp" name="formulario" id="formulario2">
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
                                        <td class="letrasLC"><div align="left">Tipo de Producto</div></td>
                                        <td colspan="3"><div align="left">
                                          <select style="background-color:#FFD" class="letrasLC" name="cbTipoProducto" id="cbTipoProducto">
                                            <option value="0.15">Art Deportivos, Maq. Ejercicios - (15.00%)</option>
                                            <option value="0.05">C&aacute;maras Digitales - (5.00%)</option>
                                            <option value="0.00">Computadoras, Portátiles, Tablets - (0.00%)</option>
                                            <option value="0.05">Computadoras, Partes - (5.00%)</option>
                                            <option value="0.05">Computadoras, Monitores - (5.00%)</option>
                                            <option value="0.05">Neum&aacute;ticos - (5.00%)</option>
                                            <option value="0.05">Instrumentos musicales - (5.00%)</option>
                                            <option value="0.05">Instrumentos musicales de juguete - (5.00%)</option>
                                            <option value="0.00">Libros - (0.00%)</option>
                                            <option value="0.05">Televisores - (5.00%)</option>
                                            <option value="0.00">Tel&eacute;fonos m&oacute;viles - (0.00%)</option>
                                            <option value="0.05">Reproductores de música - (5.00%)</option>
                                            <option value="0.00">Unidades de memoria - (0.00%)</option> 
                                            <option value="0.00">Circuitos electr&oacute;nicos - (0.00%)</option>
                                            <option value="0.3">Otros - (30.00%)</option>
                                          </select>
                                        </div></td>
                                      </tr>
                                      <tr>
                                        <td class=letrasLC><div align="left">Valor del Producto (Factura) </div></td>
                                        <td colspan="3" class="style2"><div align="left"><span class="letrasLC"><span class="style18">
                                          <input  style="background-color:#FFD" class="letrasLC" name="txtValorProducto" type="text" id="txtValorProducto" tabindex="3" value="0" />
                                        </span>(USD)</span></div></td>
                                      </tr>
                                      <tr>
                                        <td class=letrasLC>Dimensiones Largo (Pulg)</td>
                                        <td colspan="3" class=letrasLC><span class="style18">
                                          <input  style="background-color:#FFD" class="letrasLC" name="txtLargo" type="text" id="txtLargo" tabindex="2" value="0" size="5" maxlength="10" />
                                          </span>
                                          <div align="left"></div></td>
                                      </tr>
                                      <tr>
                                        <td class=letrasLC>Dimensiones Alto (Pulg)</td>
                                        <td colspan="3" class=letrasLC><span class="style18">
                                          <input style="background-color:#FFD" class="letrasLC" name="txtAlto" type="text" id="txtAlto" tabindex="2" value="0" size="5" maxlength="10" />
                                          </span>
                                          <div align="left"></div></td>
                                      </tr>
                                      <tr>
                                        <td class=letrasLC>Dimensiones Ancho (Pulg)</td>
                                        <td colspan="3" class=letrasLC><span class="style18">
                                          <input style="background-color:#FFD" class="letrasLC" name="txtAncho" type="text" id="txtAncho" tabindex="2" value="0" size="5" maxlength="10" />
                                          </span>
                                          <div align="left"></div></td>
                                      </tr>
                                      <tr>
                                        <td class=letrasLC><div align="left">Peso</div></td>
                                        <td colspan="3" class=letrasLC><span class="style3"><span class="style18">
                                          <input style="background-color:#FFD" class="letrasLC" name="txtPesoLibras" type="text" id="txtPesoLibras" tabindex="2" value="0" size="5" maxlength="10" onBlur="javascript:ConvierteaKilos();" />
                                          </span></span>(Lbs) &oacute; <span class="style3"><span class="style18">
                                            <input style="background-color:#FFD" class="letrasLC" name="txtPesoKilos" type="text" id="txtPesoKilos" tabindex="2" value="0" size="5" maxlength="10" onBlur="javascript:ConvierteaLibras();" />
                                          </span></span>(Kgs)</td>
                                      </tr>
                                      <tr>
                                        <td colspan="4" class="style2">&nbsp;</td>
                                      </tr>
                                      <tr>
                                        <td colspan="4" bgcolor="#D9ECFF" class="style2"><div align="center">
                                          <input type="button" value=" Calcular " onClick="javascript:Calcula();" />
                                          <input type="button" value=" Limpiar " onClick="javascript:Reflesh();" />
                                        </div></td>
                                      </tr>
                                    </table></td>
                                    <td valign="top"><table border="0">
                                      
                                        <td colspan="2"  bgcolor="#FEDA00" class="letrasLCHBlue">COSTO CALCULADO DEL ENV&Iacute;O</td>
                                      </tr>
                                      
                                        <td bgcolor="#E7E7E7" class="style7 style3 style1 txtTextoBJ"><span class="letras">Impuestos<br>
                                          (Arancel + IVA)</span></td>
                                        <td class="style2"><span class="style18">
                                          <input style="background-color:#F2F2F2" name="txtImpuestos" type="text" id="txtImpuestos" value="0" readonly="readonly" />
                                        </span></td>
                                      </tr>
                                      
                                        <td bgcolor="#E7E7E7" class="style7 style3 style1 txtTextoBJ"><span class="letras">Flete</span></td>
                                        <td class="style2"><span class="style18">
                                          <input style="background-color:#F2F2F2" name="txtFlete" type="text" id="txtFlete" value="0" readonly="readonly" />
                                        </span></td>
                                      </tr>
                                      
                                        <td bgcolor="#E7E7E7" class="style7 style3 style1 txtTextoBJ"><span class="letras">Seguro</span></td>
                                        <td class="style2"><span class="style18">
                                          <input style="background-color:#F2F2F2" name="txtSeguro" type="text" id="txtSeguro" value="0" readonly="readonly" />
                                        </span></td>
                                      </tr>
                                      
                                        <td bgcolor="#FFDBB7" class="style7 style3 style1 txtTextoBJ"><span class="style21">COSTO TOTAL DE ENVÍO </span></td>
                                        <td class="style2"><span class="style18">
                                          <input name="txtCostoEnvio" type="text" class="letrasLCNeg" id="txtCostoEnvio" style="background-color:#FFD9B3; text-decoration:overline" value="0" readonly="readonly" />
                                        </span></td>
                                      </tr>
                                      
                                        <td class="style2">&nbsp;</td>
                                        <td class="style2">&nbsp;</td>
                                      </tr>
                                      
                                        <td class="style2">&nbsp;</td>
                                        <td class="style2">&nbsp;</td>
                                      </tr>
                                      
                                        <td class="style2">&nbsp;</td>
                                        <td class="style2">&nbsp;</td>
                                      </tr>
                                      
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
            <tr valign="top" bgcolor="#E6E6E6">
              <td colspan="4" align="center" nowrap><span class="letrasLCAster">* El precio calculado es un estimado del costo de env&iacute;o, los costos finales pueden variar con base en el peso real del mismo y el valor de la factura de compra.</span></td>
            </tr>
            <tr valign="baseline">
              <td colspan="4" align="right" nowrap bgcolor="#E6E6E6" class="letrasLCTelsWhite">&nbsp;</td>
            </tr>
            </table>
      
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
    <td align="right" valign="bottom"><span class="letrasLCDere">Zaicargo INC 2012</span></td>
  </tr>
</table>



<map name="Map">
  <area shape="rect" coords="2,1,228,123" href="../..//index.asp">
</map>

<map name="Map2">
  <area shape="rect" coords="2,2,180,70" href="../..//registro.asp">
</map>
</body>
</html>
