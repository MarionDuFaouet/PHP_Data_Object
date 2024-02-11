<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>form-produit</title>
</head>

<body>

    <h1>Base de données ABC - Ajout d'un produit</h1>



    <?php

    require_once ('form.php');
    // appel de la classe form.php pour créer le formulaire
    $formulaireProduit = new FormulaireProduit();

    //contrôle de saisie
    

    //

    ?>


    <!-- OBJECTIF PEDAGOGIQUE
°  mettre en oeuvre de PDO dans le cas d'insert de données
• utiliser Composer et le package Phpdotenv
• avoir une bonne pratique de l'interception des exceptions (try / catch / finally)
• réutiliser un objet (plus exactement sa classe) déjà créé
• tendre vers un mini-projet structuré

✎ Etape 1 : fichier 'form-produit.php' :
• création du formulaire de saisie à l'aide la classe (fonction) Form,
• contrôle de saisie (champs non vides, valeur numérique pour le prix, …),
• retour des erreurs à l'utilisateur avec maintien du formulaire (en son état de saisie)
en cas d'erreur(s),
• passage de l'activité à 'mc.php' quand le contenu du formulaire est correct -->

</body>

</html>