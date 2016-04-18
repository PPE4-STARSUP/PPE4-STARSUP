<?php 
include("include/config_login.php");

if(isset($_POST) && !empty($_POST['login']) && !empty($_POST['password'])){
    $login = ($_POST['login']);
    $password = ($_POST['password']);
  
  //echo  $login . "  " . $password;
    //$hash = password_hash($password, PASSWORD_BCRYPT);

    $records = $dbh->prepare('SELECT * FROM gerant WHERE login = :login');
    $records->bindParam(':login', $login);
    $records->execute();
    $results = $records->fetch(PDO::FETCH_ASSOC);

    $record = $dbh->prepare('SELECT * FROM inspecteur WHERE login = :login');
    $record->bindParam(':login', $login);
    $record->execute();
    $result = $records->fetch(PDO::FETCH_ASSOC);

  //if(count($results) > 0 && password_verify($results['password'], $hash)){
    if(count($results) > 0 || count($result) > 0 && ($results['mdp']==$mdp)){
      $_SESSION['login'] = $results['login'];
      $_SESSION['id_users'] = $results['id_users'];
      $_SESSION['nom_users'] = $results['nom_users'];
      $_SESSION['prenom_users'] = $results['prenom_users'];
      $_SESSION['type_users'] = $results['type_users'];
      header('Location: index.php');
    }
    else{
        header('Location: login.php');
        exit;
    }
  }
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Login</title>
    <link rel="stylesheet" href="css/ladda.min.css">
    <link rel="stylesheet" href="css/main.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <?php include("include/menu_slider_en_tete.php") ?>
  </head>
  <body>



    <div id="page">
      <div class="header"><a id="picto_menu" href="#menu"></a>
                <img id="logo" src="img/logo-blanc.png" height="50px">
      </div>
      <div class="content">
        <div class="container">
  <div class="login_form">
    <form action="login.php" name="login-form" method="post">
      <input type="text" placeholder="Login" required name="login">
      <input type="password" placeholder="Mot de passe" required name="password">
      <button id="login-btn" class="ladda-button" data-style="expand-right" data-size="s" data-color="red"><span class="ladda-label">Connexion</span></button>
    </form>
  </div>
</div> 
      </div>
    <?php include("include/menu.php") ?>
    </div>
  </body>
</html>

