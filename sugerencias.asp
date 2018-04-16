<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Zaibox</title>
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


<script type='text/javascript' src='ValidarEmail.js'></script>

<link href="web.css" rel="stylesheet" type="text/css" />

<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
</head>

<body bgcolor="#4684C1">

<form action="formu01.asp" method="POST" onsubmit="return validaForma(this)" name="frmMail">
      <br />
      <table border="0" style="background:url(Imagenes/Body.jpg);">
        <tr>
          <td colspan="2" bgcolor="#FEDA00"><div align="center" class="style5 style1 style2"><span class="letrasLCHBlue">SUGERENCIAS</span></div></td>
        </tr>
        <tr>
          <td colspan="2" class="letrasLCTels">Su opini&oacute;n es muy importante para nosotros.</td>
        </tr>
        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
          <td><div align="left"><span class="letrasLCTelsWhite">Nombre:</span></div></td>
          <td><input name="nombre" type="text" size="40" maxlength="200" />
          </td>
        </tr>
        <tr>
          <td><div align="left"><span class="letrasLCTelsWhite">Apellido:</span></div></td>
          <td><input name="apellido" type="text" size="40" maxlength="200" /></td>
        </tr>
        <tr>
          <td><div align="left"><span class="letrasLCTelsWhite">Email:</span></div></td>
          <td><input name="email" type="text" size="40" maxlength="200" /></td>
        </tr>
        <tr>
          <td><div align="left"><span class="letrasLCTelsWhite">Sugerencias:</span></div></td>
          <td><span>
            <textarea name="datos" cols="42" rows="9" onkeypress = "return validar(event,this)"></textarea>
          </span></td>
        </tr>
        <tr>
          <td colspan="2" align="center"><input name="submit" type="submit" value="Enviar" /></td>
        </tr>
      </table>
      <br />
</form>

</body>
</html>
