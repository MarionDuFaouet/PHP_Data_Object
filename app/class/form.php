<!-- OBJET FORM ET METHODE POUR GENERER LE FORMULAIRE -->
<?php

class Form {
    private $action;
    private $methode;
    private $input = array();

    public function __construct($action, $methode) {
        $this->action = $action;
        $this->methode = $methode;
    }

    public function setText($label, $name, $placeholder = "",) {
        $this->input[] = [
            'type' => 'text',
            'label' => $label,
            'name' => $name,
            'placeholder' => $placeholder,
        ];
    }

    public function setSubmit($value = "Submit") {
        $this->input[] = [
            'type' => 'submit',
            'value' => $value,
        ];
    }

    public function getForm() {
        $form_code = "<form action=\"{$this->action}\" method=\"{$this->methode}\">\n";
        $form_code .= "<fieldset>\n";

        foreach ($this->input as $input) {
            if ($input['type'] === 'text') {
                $form_code .= "  <label>{$input['label']}: </label>";
                $form_code .= "<input type=\"text\" name=\"{$input['name']}\" placeholder=\"{$input['placeholder']}\" />\n";
                $form_code .= "<br>\n";  // Ajout d'un saut de ligne après chaque input
            } elseif ($input['type'] === 'submit') {
                $form_code .= "  <input type=\"submit\" value=\"{$input['value']}\" />\n";
            }
        }

        $form_code .= "</fieldset>\n</form>";
        return $form_code;
    }
}

// 1. Créez une classe nommée Form capable de créer des formulaires HTML.
// Le constructeur doit créer le code d’en-tête du formulaire en utilisant les éléments
// <form> et <fieldset>.
// Une méthode setText() doit permettre d’ajouter une zone de texte, de type
// <input type="text" … >.
// Une méthode setSubmit() doit permettre d’ajouter un bouton d’envoi.
// Les paramètres de ces méthodes doivent correspondre aux attributs des éléments
// HTML correspondants.
// La méthode getForm() doit retourner tout le code HTML de création du formulaire.
// 2. Dans un script (bien évidemment séparé de la classe Form), créez un objet de la
// classe Form et ajoutez-y deux zones de texte (par exemple nom et prénom) et un
// bouton d’envoi.

?>