<?php

// EN ATTENDANT DE REUSSIR LA REQUETE SQL 
/*
 * Select p.nom FROM pizza p
INNER JOIN ingredients i
ON i.id
INNER JOIN pizza_has_ingredients phi
ON phi.ingredients_id=i.id && phi.pizza_id=p.id
WHERE phi.ingredients_id IN (2,3)
GROUP BY i.id
 * 
 * La j'ai jambon et fromage mais il me faut la pizza JambonFromage
 */

foreach($_POST['ingred'] as $id)
   
{
$id2.=$id;
}

// N'IRAS PAS POUR L'ADMINISTRATION OU BIEN AJOUTER MANUELLEMENT...
if(empty($_POST)){
    $idPizza = 1;
}
else{                             // $id2= ingredient
   if ($id2 == 3) {$idPizza = 3;} // 3=champi
   if ($id2 == 2) {$idPizza = 2;} // 2=fromage
   if ($id2 == 1) {$idPizza = 5;} // 1=jambon
   if ($id2 == 4) {$idPizza = 4;} // 4=salami
   if ($id2 == 31) {$idPizza = 16;}
   if ($id2 == 32) {$idPizza = 6;}
   if ($id2 == 21) {$idPizza = 7;}
   if ($id2 == 24) {$idPizza = 8;}
   if ($id2 == 14) {$idPizza = 9;}
   if ($id2 == 34) {$idPizza = 10;}
   if ($id2 == 314) {$idPizza = 11;}
   if ($id2 == 214) {$idPizza = 12;}
   if ($id2 == 324) {$idPizza = 13;}
   if ($id2 == 321) {$idPizza = 14;}
   if ($id2 == 3214) {$idPizza = 15;}
   
}



$sql2="SELECT image FROM pizza WHERE id = $idPizza;";
$recup2 = $dbh->query($sql2);
$rec2=$recup2->fetch(PDO::FETCH_ASSOC);