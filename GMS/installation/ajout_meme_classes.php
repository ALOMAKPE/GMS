<html>
<body>
<?php
$annee=$_GET['annee'];
$anneeprec=$annee-1;
if(!$connect=mysql_connect("localhost","root","")) mysql_error();
if(!$db=mysql_select_db("isja_profnotes".$anneeprec,$connect)) {
	print("ERREUR CONNECTION BASE DE DONNEES! <br>");
	exit(2);
}else{
	mysql_close($connect);
	?>
	Ins&eacute;rez les professeurs principaux de chaque classe.<br />
		<form name="insertionClasse" method='POST' action='index.php'>
			<?php
			if(isset($_GET['id_classe'])) $id_classe=$_GET['id_classe']; else $id_classe=1;
			if(!$connect=mysql_connect("localhost","root","")) mysql_error();
			$db=mysql_select_db("isja_profnotes".$annee,$connect);
			$select_classe=mysql_query("SELECT * from CLASSE");
			$num_classe=mysql_num_rows($select_classe);
			$j=0;
			print("<table align='left' width='30%'><th>Classe</th><th>Nom</th><th>Prenom</th><td></td>");
			while($liste_classe=mysql_fetch_array($select_classe)){
				$id_prof=mysql_query("select * from PROFESSEUR where id_professeur='$liste_classe[2]'");
				$idprof=mysql_fetch_array($id_prof);
				?>
				<tr bgcolor="#BBBBBB">
				<td><?php print($liste_classe[1]); ?></td>
				<td><?php print($idprof[1]); ?></td>
				<td><?php print($idprof[2]); ?></td>
				<td><img src='validate.gif' /></td>
				<?php $j++; ?>
			</tr>
			<?php
			}	
			mysql_close($connect);
			if(!$connect=mysql_connect("localhost","root","")) mysql_error();
			$db=mysql_select_db("isja_profnotes".$anneeprec,$connect);
			$select_classe=mysql_query("SELECT * from CLASSE where id_classe='$id_classe'");
			$liste_classe=mysql_fetch_array($select_classe);
			if($liste_classe[0]!=NULL){
				print("j=".$j."<br>num_classe=".$num_classe);
				?>
				<tr id="bulletin"><td><?php print($liste_classe[1]);
				?></td>
				<td><input type='hidden' value='' name="idpp"><div id="nom">aadzafazf</div></td>
				<td><div id="prenom">fafazfazf</div></td>
				<input type='hidden' value='<?php print($liste_classe[1]); ?>' name="nom_classe" >
				<input type='hidden' value='<?php print($annee); ?>' name="annee" >
				
				<td id='bouton' style='visibility :'><input type='button' value='Inserez' onclick="insert_prof();"></td>
			<?php
			}else{
				?>
				</table>
				<input type='hidden' value='<?php print($annee); ?>' name="annee" >
				<input type='submit' align='center'  value='Contnuez >>' >
				</form>
				<?php
			}
			?>
		</tr>
		</table>
		</form>
		
		
		
	</div>
	<table  align='left'>
	<?php
	for($i=1;$i<=$j;$i++){
		?>
		<tr><td style='border : none'">&nbsp;</td></tr>
		<?php
	}
	?>
	<tr><td style='border : none'"><div id='insertion_pp_ok'></div></td></tr>
	</table>
	<b>Recherche de professeurs :</b>
	<form name="rechercheProfesseur" align='right'>
	<input type="text" name="rechercheNom" value="" id="cherche" size="20" style="margin-left: 10px;" tabindex="1" onKeyUp="ahah('chercheProfesseur.php?idc=<?php print($id_classe); ?>&nom='+this.value+'&annee=<?php print($annee); ?>','chercheDiv');">
	</form>
	<div id='chercheDiv' align='right'>&nbsp;</div>
	
	
<?php
}
?>
</body>
</html>
