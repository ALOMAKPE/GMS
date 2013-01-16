<HTML>
<?php
require "connect.php";
$classe="1ES";
$mat=array("Allemand","Anglais","Arabe","Catéchèse","ECJS","EPS","EPS","EPS","EPS","Espagnol","Ethique","Francais","Heure de vie","Histoire-Geo","Mathématiques","Sciences Eco","SVT","TPE","TPE");
$enseignant=array("SOW","Madeleine","BERNARD","Marie Claire","BASSE","Abacar Laye","BRUNO","Frere","LAGIER","Patrice","BADJI","Ibrahima","COLY","Philémon","SAGNA","Gabriel","SYLVA","Valdemar","RAHAL","Antoinette","NDIONE","Pierre-Claver","MENRATH","Maryline","LAGIER","Patrice","LAGIER","Patrice","MONDOLONI","Michel","DE LOUSTAL","Thierry","SALEH","Najat","DE LOUSTAL","Thierry","ESTRADE","Stephane");
print($classe."<br>");
print_r($mat."<br>");print(sizeof($mat)."<br>");
print_r($enseignant."<br>");print(sizeof($enseignant)."<br>");
$nom=0;
$prenom=1;
for($i=0;$i<sizeof($mat);$i++){
	$id_classe=mysql_query("select * from CLASSE where nom_classe='$classe'");
	$id_professeur=mysql_query("select * from PROFESSEUR where nom_professeur='$enseignant[$nom]' and prenom_professeur='$enseignant[$prenom]'");
	$id_matiere=mysql_query("select * from MATIERE where nom_matiere='$mat[$i]'");

	$idclasse=mysql_fetch_array($id_classe);
	$idprofesseur=mysql_fetch_array($id_professeur);
	$idmatiere=mysql_query($id_matiere);
	$matiere_exist=mysql_query("select * from matiere where nom_matiere='$mat[$i]'");
	
	
	if(($exists=mysql_num_rows($id_professeur))>0){
		print("<b>".$enseignant[$nom]." ".$enseignant[$prenom]." a le numero ".$idprofesseur[0]."</b> ");$id=$idprofesseur[0];
	}else{
		$p=split("[a-z]",$enseignant[$prenom]);$pass=strtolower($p[0].$enseignant[$nom]);
		//print($enseignant[$nom]." ".$enseignant[$prenom]." ".$pass." inconnu ");
		if($prof=mysql_query("insert into PROFESSEUR(nom_professeur,prenom_professeur,mdp) values('$enseignant[$nom]','$enseignant[$prenom]','$pass')"))  $id=mysql_insert_id();  else echo mysql_error();
	}
	
	$matiere_exist=mysql_query("select * from matiere where nom_matiere='$mat[$i]'");

	if(($nb_mat=mysql_num_rows($matiere_exist))>0){
		$list=mysql_fetch_array($matiere_exist);
		print("La matiere ".$list[1]." a le numero ".$list[0]."<br>");$idmatiere=$list[0];
	}else{
		//print("matiere inconnue<br>");
		if($MATIERE=mysql_query("insert into MATIERE(nom_matiere) values('$mat[$i]')")){ $idmatiere=mysql_insert_id();print("insertion <b>matiere</b> ok<BR>"); }else print(mysql_error());
	}
	if($enseigne=mysql_query("insert into ENSEIGNE(id_professeur,id_classe,id_matiere) values('$id','$idclasse[0]','$idmatiere')")) print("<h1>YOUHOU</h1><br>"); else print("<h1>".mysql_error()."</h1><br>");

	
	$prenom+=2;$nom+=2;
}


?>
</html>