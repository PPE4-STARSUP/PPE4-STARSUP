 <?php
include("include/config.php");

$login=$_POST['login'];
$mdp=$_POST['password'];
/*
echo $login;
  $req = $dbh->prepare('SELECT id FROM gerant WHERE LOGIN = :login');


$resultat = $req->fetch();

if (!$resultat)
{
    echo 'Mauvais identifiant ou mot de passe !';
}
else {echo "truc";}
*/
$connect = 0;
 $req = $dbh->prepare('SELECT * FROM gerant WHERE LOGIN ="'.$login.'"');
 $req->bindParam(':login', $login);
 $req->execute();
 $results = $req->fetch(PDO::FETCH_ASSOC);
 if(count($results) > 0 && $results['MDP']==$mdp)
 	{
 	  $_SESSION['login'] = $results['login'];
      $_SESSION['id_gerant'] = $results['id_gerant'];
      $_SESSION['nom_gerant'] = $results['nom_gerant'];
      $_SESSION['prenom_gerant'] = $results['prenom_gerant'];
  header('Location: index_gerant.php');
$connect = 1;}

  $req = $dbh->prepare('SELECT * FROM inspecteur WHERE LOGIN ="'.$login.'"');
 $req->bindParam(':login', $login);
 $req->execute();
 $results = $req->fetch(PDO::FETCH_ASSOC);
 if(count($results) > 0 && $results['MDP']==$mdp)
 	{ 
	  $_SESSION['login'] = $results['login'];
      $_SESSION['id_inspecteur'] = $results['id_inspecteur'];
      $_SESSION['nom_inspecteur'] = $results['nom_inspecteur'];
      $_SESSION['prenom_inspecteur'] = $results['prenom_inspecteur'];
 		header('Location: index_inspecteur.php');
$connect = 1;}

$req = $dbh->prepare('SELECT * FROM admin WHERE LOGIN ="'.$login.'"');
 $req->bindParam(':login', $login);
 $req->execute();
 $results = $req->fetch(PDO::FETCH_ASSOC);
 if(count($results) > 0 && $results['password']==$mdp)
  { 
    $_SESSION['login'] = $results['login'];
      $_SESSION['id_admin'] = $results['id_admin'];
    header('Location: index_admin.php');
$connect = 1;}

if ($connect == 0){ header('Location: index.php');  }


?>