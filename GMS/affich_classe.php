<?php session_start(); if(!isset($_SESSION["id"])) echo "<script language=JavaScript> eval(document.location.href='index.php') </script>"; $login=$_SESSION['id']; ?>
<html>
<head>
<title>prof_notes</title>	
<?php include("connect.php"); ?>
<link rel="stylesheet" type="text/css" href="style.css">
</head><body>

<h1>Liste des eleves d'une classe</h1>
	<?php $classe=mysql_query("select * from CLASSE,ENSEIGNE where CLASSE.id_classe=ENSEIGNE.id_classe and ENSEIGNE.id_professeur='$login'  GROUP BY ENSEIGNE.id_classe");
	if($nb=mysql_num_rows($classe)>1){ ?>
	<form>
	Voir la classe : <select onChange="document.location=this.options[this.selectedIndex].value">
	<option>CHOIX
	 <?php
	 while($ligne=mysql_fetch_array($classe)){?>
	 	<option value="affich_classe.php?idc=<?php print($ligne[0]); ?>" ><?php print($ligne[1]); ?>
	 <?php
	 }
	 ?>
	 </select>
	 </form>
	<? }else{
	$ligne=mysql_fetch_array($classe);
		$_GET["idc"]=$ligne[0];
	}
	if(isset($_GET["idc"])){
	 $idc=$_GET["idc"];
	if($classe=mysql_query("select * from CLASSE where id_classe='$idc'")){
		$ligne=mysql_fetch_array($classe);
	}else print(mysql_error());	 
		print("<h1>Liste des eleves de la ".$ligne[1]."</h1><br>");
	print("<table><tr><th>n°</th><th>NOM</th><th>Prenom</th></tr>");

	if($eleve=mysql_query("select * from ELEVE where id_classe='$idc' order by nom_eleve asc")){
		$i=1;
	while($ligne=mysql_fetch_array($eleve)){
		print("<tr><td bgcolor='white'>".$i++."</td><td><b>".$ligne[1]."</b></td><td>".$ligne[2]."</td></tr>");
	}
	}else print(mysql_error());
	print("</table>");
}
?>
</html>
