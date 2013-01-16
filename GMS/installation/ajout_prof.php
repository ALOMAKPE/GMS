<html>
<HEAD>
<SCRIPT LANGUAGE="JavaScript">
  <!--
    
    
    function soumettre_form() {
      if ( document.forms.form1.nom.value == "" || document.forms.form1.prenom.value== "") {
        alert ("Vous avez des champs vides !! ") ;
        return false ;
      } else {
        // Les 2 lignes ci-dessous devraient être activées pour réellement passer le form. à script CGI
        document.form1.method = "POST" ;
        document.form1.action = "verif.php" ;
        document.close () ;
        return true ;
      }
    }
        
   //-->
  </SCRIPT>
<title>prof_notes</title>

<?php
$annee=$_GET['annee'];
if(!$connect=mysql_connect("localhost","root","")) mysql_error();
$db=mysql_select_db("isja_profnotes".$annee,$connect);
		?>	
<link rel="stylesheet" type="text/css" href="style.css">
</head><body>

<h1>ajouter un professeur</h1>

<form name='form1'>
<input type='hidden' name='type' value='enseigne'>
<?php

$prof=mysql_query("select * from PROFESSEUR group by nom_professeur order by nom_professeur asc ");
?> NOM : <select onChange="ahah(this.options[this.selectedIndex].value,'Inscriptionenseignant');" name='nom'>
<option><?php if(isset($_GET['idp'])){$nom=$_GET['idp']; print($nom); }else print("CHOIX");?>
<?php
 while($ligne=mysql_fetch_array($prof)){ ?>
 	<option value="ajout_prof.php?annee=<?php print($annee); ?>&idp=<?php print($ligne[1]); ?>" ><?php print($ligne[1]); ?>
 <?php }
?>
</select>
<?php if(isset($_GET['idp'])){ ?>
<?php $prof=mysql_query("select * from PROFESSEUR where nom_professeur='$_GET[idp]'");
?> Prenom : <select name='prenom'>
<?php
 while($ligne=mysql_fetch_array($prof)){
 	print("<option value='$ligne[2]'>$ligne[2]");
 }
?>
</select>
professeur de <?print("<select name='matiere'>");
 $mat=mysql_query("select * from MATIERE ORDER BY nom_matiere ASC");
 while($ligne=mysql_fetch_array($mat)){
 	print("<option value='$ligne[0]'>$ligne[1]");
 }
?>
</select>
<a href='ajout_matiere.php'>ajouter une nouvelle matiere</a><BR>
coefficient <?print("<select name='coef'>");
 $coef=mysql_query("select * from COEFFICIENT");
 while($ligne=mysql_fetch_array($coef)){
 	print("<option value='$ligne[0]'>$ligne[1]");
 }
?>
</select>
<br />
dans la classe: <?php print("<select name='classe'>");
 $classe=mysql_query("select * from CLASSE");
 while($ligne=mysql_fetch_array($classe)){
 	print("<option value='$ligne[0]'>$ligne[1]");
 }
 print("</select>");
 print("<br>");
}
print("<input type='submit' value='ajouter professeur'  onClick='soumettre_form()'>");
print("</form>");
?>

<a href='ajout_nouveau_prof.php'>ajout nouveau prof</a>
</body>
</html>

