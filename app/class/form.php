<!-- classe (ou fonction) qui génère mon formulaire -->
<?php
require_once ('./form-produit.php');

class FormulaireProduit {
    public function __construct() {
        echo '<form action="form-produit.php" method="post">
                <div>
                    <label for="produit">Description</label><br>
                    <input type="text" id="produit" name="produit" placeholder="Produit">
                </div><br>
                <div>
                    <label for="prix">Prix</label><br>
                    <input type="text" id="prix" name="prix" placeholder="Prix unitaire">
                </div><br>
                <input type="submit" name="submit" value="Enregistrer"><br>
            </form>';
    }
}


?>