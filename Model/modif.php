<?php
if($_SESSION["modif"]==1){
    $sql = $dbh->query("SELECT GROUP_CONCAT(i.nom SEPARATOR ',') AS ingre,p.id AS pid,p.nom AS pnom,p.image,i.id AS iid
			FROM pizza p 
	
			left JOIN pizza_has_ingredients phi
			ON p.id = phi.pizza_id
			
			left JOIN ingredients i
			
			ON phi.ingredients_id = i.id 
			
GROUP BY p.id

ORDER BY p.id ASC

;");
    

    }
if(empty($sql)){
    $vide = "Aucune pizza pour l'instant";

}else{$pizza = $sql->fetchAll(PDO::FETCH_ASSOC);}

