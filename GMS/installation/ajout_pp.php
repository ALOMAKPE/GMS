<?php session_start(); if(!isset($_SESSION["id"])) echo "<script language=JavaScript> eval(document.location.href='index.php') </script>"; ?>
<html>
<HEAD>
<link rel="stylesheet" type="text/css" href="style.css">
<SCRIPT LANGUAGE="JavaScript">
  <!--
    
    
    function soumettre_form() {
      if ( document.forms.form1.nom.value == "" || document.forms.form1.prenom.value== "" || document.forms.form1.classe.value == "") {
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
<?php include("header.php"); ?>	
</head>
<body>
<center>
ajouter un professeur
<form name='form1'>
<input type='hidden' name='type' value='pp'>
Nom : <input type='text' name='nom'>
Prenom : <input type='text' name='prenom'><br>
prof principal de la classe : <input type='text' name='classe'><br>
<input type='submit' value='professeur'  onClick='soumettre_form()'>
</form>
</html>