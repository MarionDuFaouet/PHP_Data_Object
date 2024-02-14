<!-- POINT D'ENTREE -->
<!-- index.php : - préparation de l'autoload 
                 - chargement des variables d'environnement (env) -->



<!DOCTYPE html>
<html lang="fr">

<head>
    <title>Cours PHP / MySQL</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./public/styles.css" />

</head>

<body>
    <?php
    
    // UTILISE LE PACKAGE DOTENV (.env) POUR RECUPERER LES VARIABLES DE CONNEXION
    use Dotenv\Dotenv;

    require __DIR__ . '/vendor/autoload.php';
    $dotenv = Dotenv::createImmutable(__DIR__);
    $dotenv->load();
    echo $_ENV['DB_NAME'];
    
    // appelle connec et form-produit
    require('app/connec.php');
    require('app/form-produit.php');


    ?>
</body>

</html>