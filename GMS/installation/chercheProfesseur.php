<html>
<?php

if(isset($_GET['nom'])) $nom=$_GET['nom'];
if(isset($_GET['prenom'])) $prenom=$_GET['prenom'];
$annee=$_GET['annee'];

if(!$connect=mysql_connect("localhost","root","")) mysql_error();
if(!$db=mysql_select_db("isja_profnotes".$annee,$connect)){ print("PROBLEME BASE DE DONNEE ANNEE : ".$annee.$nom);
exit(2);
}
if(isset($nom))
	$select=mysql_query("select * from PROFESSEUR where nom_professeur LIKE '$nom%' ORDER BY nom_professeur");
else
	$select=mysql_query("select * from PROFESSEUR where prenom_professeur LIKE '$prenom%' ORDER BY nom_professeur");
	$num=mysql_num_rows($select);
	?>
	<table align='center'><tr><th colspan=2>NOM</th><th>Prenom</th></tr>
	<?php
	while($ligne_select=mysql_fetch_array($select)){
		?>
		<tr onmouseout="this.style.backgroundColor='';" onmouseover="this.style.backgroundColor='#DDDDDD';"><td><img src='validate.gif'  onclick="document.forms.insertionClasse.idpp.value='<?php print($ligne_select[0]); ?>';document.getElementById('nom').innerHTML='<?php print($ligne_select[1]); ?>';document.getElementById('prenom').innerHTML='<?php print($ligne_select[2]); ?>';document.getElementById('bouton').style.visibility='';"><td><?php print($ligne_select[1]); ?></td><td><?php print($ligne_select[2]); ?></td></tr>
		<?php
	}
	print("</table>");
	
	?>
</html>