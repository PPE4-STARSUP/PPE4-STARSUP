<?php
session_start();

//$urlroot = "http://www.colibri-formation.fr/";
$urlroot = "http://localhost/starsup/";

if(!isset($_SESSION['id_users'])) {
  header('Location: http://localhost/starsup/login.php');
}

   $myServer   = "localhost";
   $myUser     = "root";
   $myPassword = "root";
   $myDatabase = "ppe4";


//   $myServer   = "eu-cdbr-west-01.cleardb.com";
//   $myUser     = "b34cb73a6e1a4b";
//   $myPassword = "a1475fa3";
//   $myDatabase = "heroku_de37b88ca0bf101";

	try {
    	$dbh = new PDO('mysql:host='.$myServer.';dbname='.$myDatabase, $myUser, $myPassword);
    	
	} catch (PDOException $e) {
		print "Erreur !: " . $e->getMessage() . "<br/>";
		die();
	}

  $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

?>
