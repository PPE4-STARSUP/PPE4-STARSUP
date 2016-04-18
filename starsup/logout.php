<?php
session_start();
session_destroy();
header('Location: http://www.colibri-formation.fr/login.php');
?>