<?php
/**
 * Created by PhpStorm.
 * Modèle pour insérer un nouvel article
 */

if($_SESSION["modif"]==1) {

    if (isset($_GET['modifid']) && ctype_digit($_GET['modifid']) && (empty($_POST))) {

        $sql = $dbh->query("SELECT GROUP_CONCAT(i.id,'/',i.nom SEPARATOR ',') AS ingre,p.id AS pid,p.nom AS pnom,p.image,i.id AS iid
			FROM pizza p 
	
			INNER JOIN pizza_has_ingredients phi
			ON p.id = phi.pizza_id
			
			INNER JOIN ingredients i
			
			ON phi.ingredients_id = i.id 

			WHERE p.id = $modifid
			



;");


        $pizza = $sql->fetchAll(PDO::FETCH_ASSOC);


    } else {
        $nom = htmlspecialchars(strip_tags(trim($_POST['nom'])), ENT_QUOTES);
        $image = htmlspecialchars(strip_tags(trim($_POST['image'])), ENT_QUOTES);

        $sql = $dbh->query("UPDATE pizza SET
        nom='$nom',
        image='$image'
        WHERE id = $modifid");

        if (isset($_POST['rub'])) {
            $ingredient[] = $_POST['rub'];

            $fin[] = $ingredient['0']['0'];
            $finfin = $fin['0'];
            var_dump($finfin);
            foreach ($_POST['rub'] as $rubrub) {

                $osef = $dbh->query("UPDATE pizza_has_ingredients SET
        pizza_id='$modifid',
        ingredients_id= '$finfin' ");

                $dbh->execute($osef);
                $article_modif = "Votre article a été modifié, merci! ";
            }

        }


    }
}


    

