<html>
<?php
require("ajout_func.php");
$annee=$_GET['annee'];
$anneeprec=$annee-1;
$id_classe=$_GET['id_classe'];
$classe=$_GET['classe'];
$liste_classe=explode(':',$classe);
if(!$connect=mysql_connect("localhost","root","")) mysql_error();
$db=mysql_select_db("isja_profnotes".$anneeprec,$connect);
$classe=mysql_query("select * from CLASSE");
$nb_classe=mysql_num_rows($classe);
$select_eleve=mysql_query("SELECT * from ELEVE,CLASSE where ELEVE.id_classe=CLASSE.id_classe and CLASSE.id_classe='$id_classe' ORDER BY ELEVE.nom_eleve");
mysql_close($connect);
if(!$connect=mysql_connect("localhost","root","")) mysql_error();
$db=mysql_select_db("isja_profnotes".$annee,$connect);
$nb=0;
while($liste_eleve=mysql_fetch_array($select_eleve)){
	if(!mysql_query("insert into ELEVE(nom_eleve,prenom_eleve,id_classe) values('$liste_eleve[0]','$liste_eleve[1]','$liste_classe[$nb]')")) print(mysql_error().$_LINE);
	$nb++;
}
?>

</html>