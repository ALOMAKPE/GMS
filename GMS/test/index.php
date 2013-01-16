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
<title>prof_notes</title>	
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<table width=100%><tr><td><center><img src='img/logo.gif'>Institution Sainte Jeanne d'ARC</td></tr></table><h1>Bienvenue dans Profnotes</h1><br><h2>identifiez vous :</h2>
<form name='form1'>
<input type='hidden' name='type' value='log'>
login :<input type="text" name="login"><br>
mdp :<input type="PASSWORD" name="mdp"><br>
<input type="submit" value="0k" onClick='soumettre_form()'>
</form>
<br>
<tt>-- Logiciel de gestion des notes pour lycée --<br>-- Développé par <a href="mailto:baptistemono@gmail.com?Subject=Profnotes" onMouseOver="window.status='m'envoyer un mail';return true">SCHALCK Baptiste</A> --</tt>
<br>
<form>
<input type='button' value='Fermer l application' OnClick='javascript:window.close();'>
</form>
</body>
</html>
