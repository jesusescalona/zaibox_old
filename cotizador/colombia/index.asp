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
.style2 {	font-size: 14px;
	font-family: Arial, Helvetica, sans-serif;
	color: #FFF;
}
.style18 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: 14px; }
.style2 {font-family: Calibri; color: #000000; }
.style21 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: 12px; }
.style3 {color: #000000}
.titulos2 tr .letrasLCTelsWhite table tr th #formulario2 .titulos2 tr td div table tr th table tr td table tr .style2 .style2 {
	color: #FFF;
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

<script LANGUAGE="JavaScript">
 
   function Calcula(cbTipoProducto, txtValorProducto, txtPesoLibras, txtPesoKilos)
   { 
   
	//Declaración de variables 
	var r=1;
	 
	 //Validar los campos, que no sean nulos y que sean numéricos 
	if (formulario.txtValorProducto.value=="") {r=0;alert("Por favor ingrese el Valor del Producto"); formulario.txtValorProducto.focus}
	else if (formulario.txtValorProducto.value<1) {r=0;alert("El Valor del producto debe ser mayor a 0"); formulario.txtValorProducto.focus}
	else if (formulario.txtValorProducto.value>2000) {r=0;alert("El Valor del producto no puede superar los 2000 USD"); formulario.txtValorProducto.focus}
	else if (formulario.txtPesoLibras.value=="" && formulario.txtPesoKilos.value=="") {r=0;alert("Por favor ingrese el Peso en Libras ó en kilos"); formulario.txtPesoLibras.focus}
	else if (formulario.txtPesoLibras.value>110) {r=0;alert("El Peso máximo es de 110Lbs o 49.9Kgs"); formulario.txtPesoLibras.focus}
	else if (formulario.txtPesoLibras.value<2) {r=1;VarTipoProducto}
	/*else if (formulario.txtPesoLibras.value<5 && formulario.txtPesoKilos.value<2.27) {r=0;alert("El Peso mínimo debe ser 5 Lbs ó 2,27 Kgs"); formulario.txtPesoLibras.focus}*/
	else {r=1};
  
  if (r==1){
   
  var VarTipoProducto;
  var VarValorProducto;
  var VarPesoLibras;
  var VarPesoLibrasV;
  var VarPesoKilos;
  var VarPesoKilosV;
  var VarLargo=0;
  var VarAlto=0;
  var VarAncho=0;
  var VarDimensiones=0;
  
  var VarCIF;
  var VarImpArancel;
  var Arancel
  var VarImpIVA;
  var IVA=0.19;
  var VarAduana;
  var VarFlete;
  var VarSeguro;
  var VarCostoEnvio;
  var VarCostoTotal;
  var VarImpuestos;
  
  VarTipoProducto= parseFloat(formulario.cbTipoProducto.value);
  VarValorProducto= parseFloat(formulario.txtValorProducto.value);

  /*Redondear Peso*/
  pos1 = formulario.txtPesoLibras.value.indexOf(".");
  pos2 = formulario.txtPesoLibras.value.indexOf(",");
  if(pos1 >=0 || pos2 >=0) {VarPesoLibras = parseInt(formulario.txtPesoLibras.value); VarPesoLibras = VarPesoLibras + 1}
  else {VarPesoLibras = parseInt(formulario.txtPesoLibras.value);}
  
  VarPesoLibrasV= parseFloat(formulario.txtPesoLibras.value);
  VarPesoKilos= parseFloat(formulario.txtPesoKilos.value);
  VarPesoKilosV= parseFloat(formulario.txtPesoKilos.value);
  /*VarLargo= parseFloat(formulario.txtLargo.value);
  VarAlto= parseFloat(formulario.txtAlto.value);
  VarAncho= parseFloat(formulario.txtAncho.value);*/
  
  VarDimensiones = (VarLargo * VarAlto * VarAncho)/166;
  /*if (VarDimensiones > VarPesoLibras) {VarPesoLibras = VarDimensiones}*/
  
  /*VALIDACION DE TIPO DE PRODUCTO SELECCIONADO*/
  
  if (VarTipoProducto==1) {Arancel=0; IVA=0}
  if (VarTipoProducto==2) {Arancel=0;}
  if (VarTipoProducto==3) {Arancel=0.1; IVA=0}
  if (VarTipoProducto==4) {Arancel=0; IVA=0}
  if (VarTipoProducto==5) {Arancel=0.05;}
  if (VarTipoProducto==6) {Arancel=0.05;}
  if (VarTipoProducto==7) {Arancel=0.05;}
  if (VarTipoProducto==8) {Arancel=0.05;}
  if (VarTipoProducto==9) {Arancel=0.15;}
  if (VarTipoProducto==10) {Arancel=0;}
  if (VarTipoProducto==11) {Arancel=0;}
  if (VarTipoProducto==12) {Arancel=0;}
  if (VarTipoProducto==13) {Arancel=0;}
  if (VarTipoProducto==14) {Arancel=0;}
  if (VarTipoProducto==15) {Arancel=0;}
  if (VarTipoProducto==16) {Arancel=0;}
  if (VarTipoProducto==17) {Arancel=0; IVA=0}
  if (VarTipoProducto==18) {Arancel=0;}
  if (VarTipoProducto==19) {Arancel=0.05;}
  if (VarTipoProducto==20) {Arancel=0.05;}
  if (VarTipoProducto==21) {Arancel=0;}
  if (VarTipoProducto==22) {Arancel=0.05;}
  if (VarTipoProducto==23) {Arancel=0;}
  if (VarTipoProducto==24) {Arancel=0;}
  if (VarTipoProducto==25) {Arancel=0;}
  if (VarTipoProducto==26) {Arancel=0.05;}
  if (VarTipoProducto==27) {Arancel=0.1;}
  if (VarTipoProducto==28) {Arancel=0; IVA=0}
  if (VarTipoProducto==29) {Arancel=0;}
  if (VarTipoProducto==30) {Arancel=0;}
  if (VarTipoProducto==31) {Arancel=0.1;}
  if (VarTipoProducto==32) {Arancel=0;}
  if (VarTipoProducto==33) {Arancel=0.05;}
  if (VarTipoProducto==34) {Arancel=0;}
  if (VarTipoProducto==35) {Arancel=0.3; IVA=0;}
  
  /*FIN VALIDACION DE PRODUCTO SELECCIONADO*/
  
  //if(pos1 <0 || pos2 <0) {varPesoLibras = varPesoLibras + 1;}
  
  /*LEY 14/07/2014 No IVA hasta 200USD*/
  if (VarValorProducto<201 && VarTipoProducto==35) {Arancel=0.14; IVA=0;}
  
  VarAduana = 0; /*VarValorProducto * 0.05;*/
  VarFlete = VarPesoLibras * 3;
  //VarFlete = ((VarPesoLibras-1) * 3)+5; /*0.1587;*/
  var VarFleteCIF = VarPesoLibras * 0.5;
  
  //Seguro Us
  VarSeguroImpuesto = VarValorProducto * 0.005;
  VarSeguro = VarValorProducto * 0.03;
  if(VarSeguro < 3){VarSeguro = 3;}
  
  /*VarCIF = VarValorProducto + VarSeguro + VarFlete*0.05;*/
  VarCIF = VarValorProducto + VarSeguroImpuesto + VarFleteCIF;
  if (VarTipoProducto==35) {VarCIF=VarValorProducto;}
  
  VarImpArancel = VarCIF * Arancel;
  VarImpIVA = (VarCIF + VarImpArancel) * IVA
  
  VarImpuestos = VarImpArancel + VarImpIVA;
   
  //Costos
  VarCostoEnvio = VarAduana + VarSeguro + VarFlete + VarImpArancel + VarImpIVA;
  VarCostoTotal = VarValorProducto + VarCostoEnvio;
  
  //Flete Us
  if(VarPesoLibras < 6) {VarFlete = 15;}
  
  //Costo Envío
  VarCostoEnvio = VarImpuestos + VarFlete + VarSeguro;
  
  //Resultados
  /*formulario.txtCIF.value = Math.round(VarCIF*100)/100;*/
  /*formulario.txtArancel.value = Math.round(VarImpArancel*100)/100;*/
  /*formulario.txtIVA.value = Math.round(VarImpIVA*100)/100;*/
  /*formulario.txtAduana.value = Math.round(VarAduana*100)/100;*/
  
  if(VarPesoLibrasV != 0){VarPesoKilosV = VarPesoLibrasV * 0.454;}
  else if (VarPesoKilosV != 0){VarPesoLibrasV = VarPesoKilosV / 0.454;}
  
  formulario.txtImpuestos.value = Math.round(VarImpuestos*100)/100;
  formulario.txtFlete.value = Math.round(VarFlete*100)/100;
  formulario.txtSeguro.value = Math.round(VarSeguro*100)/100;
  formulario.txtCostoEnvio.value = Math.round(VarCostoEnvio*100)/100 + "  (USD)";
  
  var VD = VarValorProducto;
  var CIF = VarCIF;
  
  formulario.txtVD.value = VD;
  formulario.txtCIF.value = CIF;

  /*document.writeln(VarValorProducto);
  document.writeln(VarSeguro);
  document.writeln(VarFleteCIF);*/
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
<table width="480" border="0" align="center">

  <tr>
    <td align="left" valign="default"><img src="../..//imagenes/Banner_Superior_Master_com.png" alt="Casillero" width="231" height="121" border="0" usemap="#Map"></td>
    <td align="right"><div style="width:540px; height:28px; background-color:#069">
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
            <form method="post" action="selPais.asp" name="formulario2" id="formulario2">
              <td colspan="3" align="center" style="background-color:#0053A6"><span class="letrasLCTelsWhite">Calcule su env&iacute;o desde USA a:</span><span class="letrasLC">
                <select style="background-color:#D7EBFF" name="cboPais" id="cboPais" onChange="javascript: document.forms['formulario2'].submit();">
                  <option value="#">Seleccione su país...</option>
                  <option value="#">---------------------</option>
                  <option value="colombia">Colombia</option>
                  <option value="ecuador">Ecuador</option>
                  <option value="peru">Peru</option>
                  </select>
                </span></span></td>
                </form>
            </tr>
            
            <tr valign="baseline">
              <td colspan="4" align="justify" style="background-color:#0053A6"></td>
            </tr>
            <tr valign="baseline">
              <td colspan="4" align="right" nowrap class="letrasLCTelsWhite"><table width="600" border="0" cellspacing="0" cellpadding="0" style="background:url(Imagenes/Body.jpg)" height="216">
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
                                        <td class="letrasLC"><div align="left">Tipo de Producto</div></td>
                                        <td colspan="3"><div align="left">
                                          <select style="background-color:#FFD" class="letrasLC" name="cbTipoProducto" id="cbTipoProducto">
                                          	<option value="35">Otros productos</option>
                                            <option value="1">Laptops y desktops que no excedan los 82 UVT - Arancel 0% - IVA 0%</option>
                                            <option value="2">Teclados, dispositivos - Arancel 0% - IVA 19%</option>
                                            <option value="3">Sillas de ruedas y transportes para minusválidos - Arancel 10% - IVA 0%</option>
                                            <option value="4">Libros  - Arancel 0% - IVA 0%</option>
                                            <option value="5">Monitores computadores - Arancel 5% - IVA 19%</option>
                                            <option value="6">Partes computadores - Arancel 5% - IVA 19%</option>
                                            <option value="7">Instrumentos musicales de teclado - Arancel 5% - IVA 19%</option>
                                            <option value="8">Instrumentos musicales con amplificación - Arancel 5% - IVA 19%</option>
                                            <option value="9">Televisores - Arancel 15% - IVA 19%</option>
                                            <!-- <option value="10">Tel&eacute;fonos m&oacute;viles - Arancel 0% - IVA 19%</option> -->
                                            <option value="11">Microfonos y sus partes - Arancel 0% - IVA 19%</option>
                                            <option value="12">Unidades de memoria - Arancel 0% - IVA 19%</option>
                                            <option value="13">Importacion equipos inalambricos - Arancel 0% - IVA 19%</option> 
                                            <option value="14">Circuitos electr&oacute;nicos - Arancel 0% - IVA 19%</option>
                                            <option value="15">Microscopios, excepto opticos; difractografos - Arancel 0% - IVA 19%</option>
                                            <option value="16">Serruchos - Arancel 0% - IVA 19%</option>
                                            <option value="17">Vitaminas y sus derivados - Arancel 0% - IVA 0%</option>
                                            <option value="18">Mangueras de fabricacion textil (riego) - Arancel 0% - IVA 19%</option>
                                            <option value="19">Llantas caucho endurecido - Arancel 5% - IVA 19%</option>
                                            <option value="20">DVD aparatos para reproduccion laser - Arancel 5% - IVA 19%</option>
                                            <option value="21">Proyectores de perfiles - Arancel 0% - IVA 19%</option>
                                            <option value="22">Partes valvulas - Arancel 5% - IVA 19%</option>
                                            <option value="23">Partes instrumentacion - Arancel 0% - IVA 19%</option>
                                            <option value="24">Reproductor de imagen y sonido alta gama - Arancel 0% - IVA 19%</option>
                                            <option value="25">Maquinarias Agricolas, Accesorios - Arancel 0% - IVA 19%</option>
                                            <option value="26">Partes y accesorios vehiculos automoviles - Arancel 5% - IVA 19%</option>
                                            <option value="27">Amplificadores de sonido - Arancel 10% - IVA 19%</option>
                                            <option value="28">Tabletas tablets ipo/ad que no excedan los 43 uvt - Arancel 0% - IVA 0%</option>
                                            <option value="29">Tabletas tablets ipo/ad que excedan los 43 uvt - Arancel 0% - IVA 19%)</option>
                                            <option value="30">Maquinas de coser y agujas de partes - Arancel 0% - IVA 19%</option>
                                            <option value="31">Instrumentos musicales de percusion - Arancel 10% - IVA 19%</option>
                                            <option value="32">Lectores magneticos u opticos otros electronicos - Arancel 0% - IVA 19%</option>
                                            <option value="33">Camaras fotograficas y sus accesorios - Arancel 5% - IVA 19%</option>
                                            <option value="34">Impresoras y scanners - Arancel 0% - IVA 19%</option>
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
                                        <td colspan="4" class="style2">&nbsp;</td>
                                      </tr>
                                      <tr>
                                        <td colspan="4" bgcolor="#D9ECFF" class="style2"><div align="center">
                                          <input type="button" value=" Calcular " onClick="javascript:Calcula();" />
                                          <input type="button" value=" Limpiar " onClick="javascript:Reflesh();" />
                                        </div></td>
                                      </tr>
                                      <tr>
                                        <td colspan="4" class="style2">&nbsp;</td>
                                      </tr>
                                      <tr>
                                        <td colspan="4" bgcolor="#285179" class="style2" align="center"><div class="style2"><strong>
                                          <script type="text/javascript">document.writeln(VD);</script></strong>
                                          <!-- <table width="424" border="0">
                                            <tr>
                                              <td><div class="style2">Valor Declarado <strong>
                                                <script type="text/javascript">document.writeln(VD);</script>
                                                </strong><span class="style18">
                                                <input name="txtVD" type="text" class="style1" id="txtVD" style="background-color:#285179" value="0" readonly />
                                                </span></div></td>
                                              <td><div class="style2">Valor CIF <strong>
                                                <script type="text/javascript">document.writeln(VD);</script>
                                                </strong><span class="style18">
                                                <input name="txtCIF" type="text" class="style1" id="txtCIF" style="background-color:#285179" value="0" readonly />
                                                </span></div></td>
                                              </tr>
                                            </table> -->
                                        </div></td>
                                        </tr>
                                    </table></td>
                                    <td valign="top"><table border="0">
                                      
                                        <td colspan="2"  bgcolor="#FEDA00" class="letrasLCHBlue">COSTO CALCULADO DEL ENV&Iacute;O</td>
                                      </tr>
                                      
                                        <td bgcolor="#E7E7E7" class="style7 style3 style1 txtTextoBJ"><span class="letras">Impuestos<br>
                                          (Arancel + IVA)</span></td>
                                        <td class="style2"><span class="style18">
                                          <input style="background-color:#F2F2F2" name="txtImpuestos" type="text" id="txtImpuestos" value="0" readonly />
                                        </span></td>
                                      </tr>
                                      
                                        <td bgcolor="#E7E7E7" class="style7 style3 style1 txtTextoBJ"><span class="letras">Flete</span></td>
                                        <td class="style2"><span class="style18">
                                          <input style="background-color:#F2F2F2" name="txtFlete" type="text" id="txtFlete" value="0" readonly />
                                        </span></td>
                                      </tr>
                                      
                                        <td bgcolor="#E7E7E7" class="style7 style3 style1 txtTextoBJ"><span class="letras">Seguro</span></td>
                                        <td class="style2"><span class="style18">
                                          <input style="background-color:#F2F2F2" name="txtSeguro" type="text" id="txtSeguro" value="0" readonly />
                                        </span></td>
                                      </tr>
                                      
                                        <td bgcolor="#FFDBB7" class="style7 style3 style1 txtTextoBJ"><span class="style21">COSTO TOTAL DE ENVÍO </span></td>
                                        <td class="style2"><span class="style18">
                                          <input name="txtCostoEnvio" type="text" class="letrasLCNeg" id="txtCostoEnvio" style="background-color:#FFD9B3; text-decoration:overline" value="0" readonly />
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
                                  <tr>
                                    <td colspan="2">&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td colspan="2"><span class="letrasLCAster"><u>Tarifas</u><br>
                                      Primeras 5 Libras 15USD, libra Adicional 3USD.<br>
                                      Seguro del 3% sobre el valor de la factura(m&iacute;nimo 3USD)<br>
                                      El cotizador no cobrar&aacute; IVA a los paquetes con valor declarado inferior a 200 d&oacute;lares (Solo aplica para el tipo de producto &quot;Otros productos&quot;).                                     <br>
                                      Impuestos de arancel m&aacute;s IVA sobre el valor declarado  (Aplican posiciones arancelarias en casos espec&iacute;ficos individuales)
                                      <br>
                                      **NO COBRAMOS VOLUMEN, UNICAMENTE COBRAMOS POR  EL PESO FISICO DE SU CARGA**</span></td>
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
    <td align="right" valign="bottom"><span class="letrasLCDere">Zaibox.net 2014</span></td>
  </tr>
</table>



<map name="Map">
  <area shape="rect" coords="2,1,228,123" href="../..//index.asp">
</map>

<map name="Map2">
  <area shape="rect" coords="2,2,180,70" href="http://zaicargo.controlbox.net/webcasilleros/registro.asp" target="_blank">
</map>
</body>
</html>
