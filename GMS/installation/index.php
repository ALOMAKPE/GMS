<html>
  <head>
 
<SCRIPT language='Javascript'>
	function postANNEE(){
		document.forms.Annee.method = "POST" ;
		document.forms.Annee.action = "index.php" ;
		document.forms.Annee.submit();
	}

	function deplacement_eleves(){
		document.forms.InscriptionEleves.method = "GET" ;
		ahah("deplacement_eleves.php?annee="+document.forms.InscriptionEleves.annee.value,"Inscriptioneleve");
	}
	function insertion_enseignant(){
		document.forms.InscriptionEnseignants.method = "GET" ;
		ahah("ajout_prof.php?annee="+document.forms.InscriptionEnseignants.annee.value,"Inscriptionenseignant");
	
	}
	function insert_eleve(nb,classe,annee){
		var listeleve='';
		for(var e=0;e<nb;e++){
			listeleve=listeleve+document.forms.insertionEleve.elements[e].value+':';
		}	
		//document.forms.insertionEleve.submit();
		classe_inser=classe-1;
		
		ahah('deplacement_eleves.php?annee='+annee+'&id_classe='+classe+'&classe='+listeleve,'Inscriptioneleve');	
		
	}
	function insert_prof(){
		document.forms.insertionClasse.method = "GET" ;
		ahah("insert_prof.php?annee="+document.forms.insertionClasse.annee.value+"&id_pp="+document.forms.insertionClasse.idpp.value+"&nom_classe="+document.forms.insertionClasse.nom_classe.value,"insertion_pp_ok");
		document.getElementById('bouton').innerHTML="<img src='validate.gif'>";
	}

	function ajout_meme_classes(){
		var nombreCheck=0;
		
		document.forms.InscriptionClasses.method = "GET" ;
		ahah("ajout_meme_classes.php?annee="+document.forms.InscriptionClasses.annee.value,"Inscriptionclasse");
	}

	function ajout_meme_profs(){
		var nombreCheck=0;
		var id_prof='';
		for(var e=0;e<document.forms.InscriptionProfesseurs.elements.length;e++){
			if (document.forms.InscriptionProfesseurs.elements[e].checked){
				id_prof=id_prof+document.forms.InscriptionProfesseurs.elements[e].value+":";
				
			}
		}
		if(id_prof==''){ alert("Vous n'avez selectionnez aucun professeur!"); return false;}
		document.forms.InscriptionProfesseurs.id_select.value=id_prof;
		document.forms.InscriptionProfesseurs.method = "GET" ;
		ahah("ajout_meme_professeurs.php?annee="+document.forms.InscriptionProfesseurs.annee.value+"&id_select="+document.forms.InscriptionProfesseurs.id_select.value,"Inscriptionprofesseur");
	}
	function ajout_nouveaux_profs(){
		document.forms.InscriptionProfesseurs.method = "POST" ;
		document.forms.InscriptionProfesseurs.action = "ajout_nouveaux.professeurs.php" ;
		document.forms.InscriptionProfesseurs.submit();
	}

</SCRIPT>
    <title>Installation de GMS</title>
<script type="text/javascript" src="fucntion.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Language" content="fr" />
	<link rel="stylesheet" type="text/css" href="style.css">
  </head>
  <body>
	<script>
	</script>
<table width=100%>
<tr><th width='80%'><div  align='center'><font color='red'>BIENVENUE DANS L'INSTALLATION DE GMS</center></td><td>


<div id="horloge"></div>
        <script>
	var nb_prof=0;
	var dateActuelle = new Date();
        var horloge = document.getElementById("horloge");
	function checkBox(){
		
	}
        function incrementer2()
                {
                dateActuelle.setTime(dateActuelle.getTime()+1000);
                horloge.innerHTML = "<tt>Nous sommes le "+dateActuelle.getDate()+"/"+(dateActuelle.getMonth()+1)+"/"+dateActuelle.getFullYear()+".<br/> Il est : "+dateActuelle.getHours()+":"+dateActuelle.getMinutes()+":"+dateActuelle.getSeconds()+"</tt>";
                setTimeout(incrementer2, 1000);
		
                }
        onload = incrementer2;
	</script>
		</td></tr></table>
		<?php
		print("Choisissez l'ann&eacute;e &agrave; analyser : <br>");
		?>
		<form name='Annee'>
		<select name='annee' onChange="postANNEE();" >
		<option>CHOISSEZ UNE ANNEE</option>
		<option value="06">2006</option>
		<option value="07">2007</option> 
		</select>
		</form>
		
		<?php
		
		if(isset($_POST['annee'])){
			$annee=$_POST['annee'];
			?>
			<table width='100%'>
			<tr><td align='center' style="vertical-align : top;" colspan=2>
			<?php	
			if(!$connect=mysql_connect("mysql5-4","devloprogms06","LpxzX89L")) mysql_error();
			if(!$db=mysql_select_db("devloprogms".$annee,$connect)){
				print("AUCUNE BASE POUR L'ANNEE : ".$annee);
				exit(2);
			}else{
				$select_eleve=mysql_query("SELECT count(*) from ELEVE");
				$select_prof=mysql_query("SELECT count(*) from PROFESSEUR");
				$select_classe=mysql_query("SELECT count(*) from CLASSE");
				$select_enseigne=mysql_query("SELECT count(*) from ENSEIGNE");
				$nb_eleve=mysql_fetch_array($select_eleve);
				$nb_prof=mysql_fetch_array($select_prof);
				$nb_classe=mysql_fetch_array($select_classe);
				$nb_enseignant=mysql_fetch_array($select_enseigne);
				if($nb_prof[0]>0 && $nb_eleve[0]>0 && $nb_classe[0]>0 && $nb_enseignant[0]>0){
					print($nb_eleve[0]." &eacute;l&egrave;ves sont inscris.<br>");
					print($nb_classe[0]." classes sont enregistr&eacute;e.<br>");
					print($nb_prof[0]." professeurs sont inscris.");
				}else{
					?>
					
					
					<?php
					if($nb_prof[0]==0){
						?>
						<div id="top_new_install" style=" border : 3px tired #990000;background-color : #FFFFFF; color : #DD0000;">
						<h1>Vous avez entr&eacute;s l'ann&eacute;e 20<?php print($annee); ?><br />
						Il n'y a aucun enregistremet dans la base de donn&eacute;e.<br />
						Vous entrez dans le module de creation de la base donn&eacute;es<br />
						<input type='button' onclick="document.getElementById('top_new_install').innerHTML='<h1>Installation';document.getElementById('Inscriptionprofesseur').style.visibility='';" value="Ok"/>
						</H1></div>
						<div id="Inscriptionprofesseur" width='100%' style="visibility : hidden;">
						<div id="professeur"><h2>Etape 1 : Inscriptions des professeurs</h2></div>
						<form name="InscriptionProfesseurs">
						Installation d'une nouvelle session.<br />
						<u><i>S&eacute;lectionnez les professeurs de l'an dernier &agrave; garder</u></i><br />
						<?php
						$anneeprec=$annee-1;
						if(!$connect=mysql_connect("localhost","root","")) mysql_error();
						if(!$db=mysql_select_db("isja_profnotes".$anneeprec,$connect)) print("ERROR Connection base de donn&eacute;es");
						$select_prof=mysql_query("SELECT * from PROFESSEUR ORDER BY nom_professeur");
						$num_prof=0;
						?>
						<table align='center'><th>Selection</th><th>NOM</th><th>Prenom</th></tr>
						<?php
						while($liste_prof=mysql_fetch_array($select_prof)){
							?>
							<tr onclick="if(document.forms.InscriptionProfesseurs.elements[<?php print($num_prof); ?>].checked) this.style.backgroundColor='#BBFF99';else this.style.backgroundColor='#FFFFFF';"><td><input type='checkbox' value=<?php print("'".$liste_prof[0]."'"); ?> name=<?php print("'prof".$num_prof."'");?> ><td><? print($liste_prof[1]); ?> </td>
							<td><?php print($liste_prof[2]); ?> </td>
							</tr>
						<?php
						$num_prof++;
						}
						print("</table>");
						?>
						<input type="hidden" value=<?php print("'".$annee."'"); ?> name="annee" >
						<input type="hidden" value='' name="id_select" >
						<img src='validate.gif' /><input type="button" value="GARDER les professeurs s&eacute;lectionn&eacute;s" onClick='ajout_meme_profs();'><br />
						<input type="button" value="NON, je veux refaire la liste des professeurs" onClick='ajout_nouveaux_profs()'>
						</div>
						<?php
					}else{
						if($nb_classe[0]==0){
								?>
								<div id="professeur" width='100%'><font style="text-decoration : line-through">Etape 1 : Inscriptions des professeur</font></div>
								<div id="bulletin" width=100%><h2>Etape 2 : Inscription des classes</h2></div>
								<div id="Inscriptionclasse" width='100%'>
								<form name="InscriptionClasses">
								Installation d'une nouvelle session.<br />
								<u><i>Voulez-vous garder les memes classes que l'an dernier ?</i></u>
								<?php
								$anneeprec=$annee-1;
								if(!$connect=mysql_connect("localhost","root","")) mysql_error();
								if(!$db=mysql_select_db("isja_profnotes".$anneeprec,$connect)) print("ERROR Connection base de donn&eacute;es");
								$select_classe=mysql_query("SELECT * from CLASSE ORDER BY nom_classe");
								print("<table align='center'><tr>");
								while($liste_classe=mysql_fetch_array($select_classe)){
									print("<td>".$liste_classe[1]."</td>");
								}
								print("</tr></table>");
								?>
								<input type="hidden" value=<?php print("'".$annee."'"); ?> name="annee" >
								<img src='validate.gif' /><input type="button" value="OUI, je garde ses classes" onClick='ajout_meme_classes();'><br />
								<input type="button" value="NON, je veux refaire la liste des classes" onClick='ajout_nouvelles_classes()'>
								</div>
								<?php
						}else{
							if($nb_eleve[0]==0){
									?>
									<div id="professeur" width='100%'><font style="text-decoration : line-through">Etape 1 : Inscriptions des professeur</font></div>
									<div id="bulletin" width=100%><font style="text-decoration : line-through">Etape 2 : Inscription des classes</font></div>
									<div id="moyenne" width=100%><h2>Etape 3 : Enregistrement des &eacute;l&egrave;ves</h2></div>
									<div id="Inscriptioneleve" width='100%'>
									<form name="InscriptionEleves">
									Installation d'une nouvelle session.<br />
									<u><i>Suavegarde des &eacute;legrave:ves : </i></u>
									<input type="hidden" value=<?php print("'".$annee."'"); ?> name="annee" >
									<script>deplacement_eleves();</script>
									</div>
									<?php
							}else{
								?>
								<div id="professeur" width='100%'><font style="text-decoration : line-through">Etape 1 : Inscriptions des professeur</font></div>
								<div id="bulletin" width=100%><font style="text-decoration : line-through">Etape 2 : Inscription des classes</font></div>
								<div id="moyenne" width=100%><font style="text-decoration : line-through">Etape 3 : Enregistrement des &eacute;l&egrave;ves</font></div>
								<div id="moyenne" style='background-color : #CCCCCC;' width=100%><h2>Etape 4 : Enregistrement des enseignants :</h2></div>
								<div id="Inscriptionenseignant" width='100%'>
								<form name="InscriptionEnseignants">
								Installation d'une nouvelle session.<br />
								<u><i>Inscription des enseignants</i></u><br />
								<input type="hidden" value=<?php print("'".$annee."'"); ?> name="annee" >
								<script>insertion_enseignant();</script>
								</div>
								<?php
							}
						}
									
					}
				}
			}
		}
		?>
	
</body>
</html>