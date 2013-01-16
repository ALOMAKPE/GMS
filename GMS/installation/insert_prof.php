<html>

<?php

$annee=$_GET['annee'];
$anneeprec=$annee-1;
if(!$connect=mysql_connect("localhost","root","")) mysql_error();
if(!$db=mysql_select_db("isja_profnotes".$annee,$connect)) {
	print("ERREUR CONNECTION BASE DE DONNEES! <br>");
	exit(2);
}else{
	require("ajout_func.php");
	$idpp=$_GET['id_pp'];
	$nom_classe=$_GET['nom_classe'];
	$prof=mysql_query("select * from PROFESSEUR where id_professeur='$idpp'");
	$detailprof=mysql_fetch_array($prof);
	$id=ajout_pp($detailprof[1],$detailprof[2],$nom_classe);
	$select_classe=mysql_query("select * from CLASSE where nom_classe='$nom_classe'");
	$id_classe=mysql_fetch_array($select_classe);
	$idcr=$id_classe[0]+1;
	?>
	<form name='envoie'>
	<input type='hidden' name='idc' value='<?php print($idcr); ?>' >
	<input type='hidden' name='annee' value='<?php print($annee); ?>' >
	<input type='button' value='Suivant' onClick="ahah('ajout_meme_classes.php?id_classe='+document.forms.envoie.idc.value+'&annee='+document.forms.envoie.annee.value,'Inscriptionclasse');" >
	</form>

	<?php
}
	
?>
</HTML>
	