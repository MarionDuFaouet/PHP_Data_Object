<!-- connexion à la base et enregistrement des données -->


<?php

new PDO ("mysql:host=".$_ENV['DB_HOST'].";dbname=".$_ENV['DB_NAME'], $password);

// $conn = new PDO ("mysql:host=$servername;dbname=abc",$username, $password);


// $conn = new PDO ("mysql:host=".$_ENV['DB_HOST'].";dbname=".$_ENV['DB_NAME'], $password);

// new PDO ("mysql:host=$servername;$dbname",$username, $password);
//$conn = new PDO ("mysql:host=localhost".$_ENV['DB_HOST'].";dbname=abc".$_ENV['DB_NAME'], $password);



?>