<html>
<HEAD>
<SCRIPT LANGUAGE="JavaScript">
  <!--
    
    
    function soumettre_form() {
      if ( document.forms.form2.matiere.value == "" ) {
        alert ("Vous avez laisse le champ vide !! ") ;
        return false ;
      } else {
        document.form2.method = "POST" ;
        document.form2.action = "verif.php" ;
        document.close () ;
        return true ;
      }
    }
        
   //-->
  </SCRIPT>
<title>ajout_matiere</title>

<?php
$annee=2007;
if(!$connect=mysql_connect("localhost","root","")) mysql_error();
		$db=mysql_select_db("isja_profnotes".$annee,$connect);
		?>	
<link rel="stylesheet" type="text/css" href="style.css">
</head><body>

</body>
<h1>Ajout d'une nouvelle matiere</h1>
<form name='form2'>
<input type='hidden' name='type' value='matiere'>
Nom de la nouvelle matiere :<input type='text' name='matiere'><br />
<input type='submit' value='ajouter matiere' onClick='soumettre_form()'>
</form>
</html>