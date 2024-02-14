<!-- CLASSE CONNEC.php -->
<!-- CONNEXION ET ENREGISTREMENT A LA BDD -->

<?php

// TRY / CATCH  et PDO



if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nom = $_POST["nom"];
    $prenom = $_POST["prenom"];

    try {
        $connexion = new PDO("mysql:host=".$_ENV['DB_HOST'].";dbname=".$_ENV['DB_NAME'], $_ENV['DB_USER'], $_ENV['DB_PASS']);
        $connexion->setAttribute(
            PDO::ATTR_ERRMODE,
            PDO::ERRMODE_EXCEPTION
        );
        echo 'Connexion réussie';
    } catch (PDOException $e) {
        echo "Erreur : " . $e->getMessage();
    }
}

?>