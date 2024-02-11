<!-- connexion à la base et enregistrement des données -->


<?php

//new PDO ("mysql:host=".$_ENV['DB_HOST'].";dbname=".$_ENV['DB_NAME'], $login, $password);
new PDO ("mysql:host=".$_ENV['DB_HOST'].";dbname=".$_ENV['DB_NAME']."loginname=".$_ENV['DB_USER']."password=".$_ENV['DB_PASSWORD']);

// Chargement des variables d'environnement
use Dotenv\Dotenv;
require __DIR__.'/vendor/autoload.php';
$dotenv = Dotenv::createImmutable(__DIR__);
$dotenv->load();

require ('app/mc.php');


?>