<?php

const HOST = 'localhost';
const DATABASE = 'bibliotheque';
const USERNAME = 'root';
const PASSWORD = 'root';

try{
  // arguments : 1 (serveur + bdd), 2 (username), 3 (password), 4 (options).

  $sql = new PDO("mysql:host=" . HOST . ";dbname=" . DATABASE . "", USERNAME, PASSWORD, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING, PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8' ));
} catch(PDOException $error){
  echo "Probleme de connexion : " . $error->getMessage();
}

?>