<!-- point d'entrée -->
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Cours PHP / MySQL</title>
    <meta charset="UTF-8">
</head>

<body>
    <h1>BDD MySQL</h1>
    <?php
        $servername = 'localhost';
        $username = 'root';
        $password = '';
        // $dbname = 'abc';

        //on essaie de se connecter
        try{
            $conn = new PDO ("mysql:host=$servername;dbname=abc",$username, $password);
            //on définit le mode d'erreur de PDO sur Exception
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            echo 'Connexion réussie <br>';
            
            //requête en deux temps (prepare() et execute())affichant les produits inférieurs à 8 euros
            $stmt = $conn -> prepare ("SELECT * FROM produit WHERE PU >:prix");
            $stmt ->execute([':prix' => 8]);
            //affiche ma requête à des fins de déboguage(= avec ma requête)
            var_dump($stmt);
        }

    
        // On capture les exceptions si une exception est lancée et on affiche les informations relatives à celle-ci
        catch (PDOException $e){
            echo "Erreur : " . $e->getMessage();
        }


        // Chargement des variables d'environnement
        use Dotenv\Dotenv;
        require __DIR__.'/vendor/autoload.php';
        $dotenv = Dotenv::createImmutable(__DIR__);
        $dotenv->load();

        require ('app/mc.php');
?>
</body>

</html>