<?php session_start(); if(!isset($_SESSION["id"])) echo "<script language=JavaScript> eval(document.location.href='index.php') </script>"; $login=$_SESSION["id"]; ?>
<html>
<HEAD>
<SCRIPT LANGUAGE="JavaScript">
  <!--
    
    
    function soumettre_form() {
      if ( document.forms.form1.nom.value == "" || document.forms.form1.prenom.value== "") {
        alert ("Vous avez des champs vides !! ") ;
        return false ;
      } else {
        document.form1.method = "POST" ;
        document.form1.action = "verif.php" ;
        document.close () ;
        return true ;
      }
    }
        
   //-->
  </SCRIPT>
<title>prof_notes</title>

<?php include("connect.php"); ?>	
<link rel="stylesheet" type="text/css" href="style.css">
</head><body>

</body>
<h1>Ajouter un nouvel eleve</h1>
<form name='form1'>
<input type='hidden' name='type' value='eleve'>
Nom : <input type='text' name='nom'>
Prenom : <input type='text' name='prenom'><br>
dans la classe : <?print("<select name='classe'>");
 $classe=mysql_query("select * from CLASSE where id_pp='$login'");
 while($ligne=mysql_fetch_array($classe)){
 	print("<option value='$ligne[0]'>$ligne[1]");
 }
 ?>
 </select>
 <br>
<input type='submit' value='ajouter eleve'  onClick='soumettre_form()'>
</form>

</html>