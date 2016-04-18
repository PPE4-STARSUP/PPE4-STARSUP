<?php
session_start();

//$urlroot = "http://www.colibri-formation.fr/";
$urlroot = "http://localhost/starsup/";

   $myServer   = "localhost";
   $myUser     = "root";
   $myPassword = "";
   $myDatabase = "ppe4";


	try {
    	$dbh = new PDO('mysql:host='.$myServer.';dbname='.$myDatabase, $myUser, $myPassword);
    	
	} catch (PDOException $e) {
		print "Erreur !: " . $e->getMessage() . "<br/>";
		die();
	}

?>
