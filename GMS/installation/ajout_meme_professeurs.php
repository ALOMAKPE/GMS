<html>
<body>
<?php
require("ajout_func.php");
$annee=$_GET['annee'];
$anneeprec=$annee-1;

if(!$connect=mysql_connect("localhost","root","")) mysql_error();
if(!$db=mysql_select_db("isja_profnotes".$anneeprec,$connect)) {
	print("ERREUR CONNECTION BASE DE DONNEES POUR ANNEE".$anneeprec."! <br>");
	exit(2);
}else{
?>
	<div id="professeur" width='100%'><h2>Etape 1 : Inscriptions des professeurs</h2></div>
	<?php
	$liste_prof=$_GET['id_select'];
	$liste_select=explode(":",$liste_prof);
	$i=0;
	$insert_db='';
	while($i<(count($liste_select)-1)){
		$sql_select=mysql_query("select * from PROFESSEUR where id_professeur='".$liste_select[$i]."'");
		$ligne=mysql_fetch_array($sql_select);
		$insert_db=$insert_db.$ligne[1].":".$ligne[2].":";
		$i++;
	}
	mysql_close($connect);
	$prof=explode(":",$insert_db);
	$i=0;
	if(!$connect2=mysql_connect("localhost","root","")) mysql_error();
	if(!$db2=mysql_select_db("isja_profnotes".$annee,$connect2)) {
	print("ERROR CONNECTION BDD".$annee.mysql_error());
	}else{
		while($i<(count($prof)-1)){
			$id=ajout_professeur($prof[$i++],$prof[$i++]);
		}
		print("<table align='center'><tr><th>Nom</th><th>Prenom</th></tr>");
		$sql_select=mysql_query("select * from PROFESSEUR");
		while($profinsere=mysql_fetch_array($sql_select)){
			print("<tr><td>".$profinsere[1]."</td><td>".$profinsere[2]."</td>");
		}
		?>
		</table>
		<form method='POST'>
		<input type='hidden' value='2007' name='annee_choisie'>
		<input type="submit" value="Continuez"  action='index.php'>
		</form>
		<?php	
	}
}
?>
</body>
</html>
