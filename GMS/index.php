<?php session_start(); 
if(isset($_SESSION['id'])) unset($_SESSION['id']); 
if(isset($_SESSION['name'])) unset($_SESSION['name']);
if(isset($_SESSION['pp'])) unset($_SESSION['pp']);
$test=@mysql_close ();
?>
<html>
<head>
<SCRIPT LANGUAGE="JavaScript">
  <!--
    
    
    function soumettre_form() {
      if ( document.forms.form1.login.value == "" ) {
        alert ("Veuillez vous identifier !! ") ;
        return false ;
      } else{
         document.form1.method = "POST" ;
         document.form1.action = "verif.php" ;
         document.close () ;
         return true ;
       }
      }
      
      -->
      
  </SCRIPT>
<title>GMS</title>	
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="icon" type="image/png" href="img/favicon.ico">

</head>
<body>
<center>

<table width=100%><tr><td><center>Le logo de votre &eacute;tablissemet ici ! </td></tr></table>
<font size='18px'>Bienvenue dans GMS</font><div id='middle'>
<img src='img/test.GIF' width=200 height=200 />
</div>
<h2 align='center' color='blue'>identifiez vous :</h2>
<form name='form1'>
<center>
<input type='hidden' name='type' value='log'>
login :<input type="text" name="login"><br>
mdp :<input type="PASSWORD" name="mdp"><br>
<input type="submit" value="0k" onClick='soumettre_form()'>
</form>
<center>
<tt>-- Logiciel de gestion des notes pour lycée --
<br>-- Développé par <a href="mailto:baptisteschalck@gmail.com?Subject=GMS" onMouseOver="window.status='envoyer un mail';return true;">SCHALCK Baptiste</A> --
<br>-- optimise pour <a href="http://www.spreadfirefox.com/?q=affiliates&amp;id=0&amp;t=219"><img border="0" alt="Firefox 2" title="Firefox 2" src="http://sfx-images.mozilla.org/affiliates/Buttons/firefox2/ff2b80x15.gif"/></a></a> --</tt>
<form>
<input type='button' value='Fermer l application' OnClick='javascript:window.close();'>
</form>
</div>
</body>
</html>
