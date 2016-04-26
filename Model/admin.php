<?php
/**
 * Modèles de l'admin suivant les permissions
 */


$menu_admin = "<ul>";
// on peut insérer

if($_SESSION["ecrit"]==1){
    $menu_admin .= "<li><a href='?insert'>Créer une pizza</a> </li>";
}
if($_SESSION["modif"]==1 OR ($_SESSION["sup"]==1)){
    $menu_admin .= "<li><a href='?modif'>Modifier ou supprimer des pizzas</a> </li>";
}

$menu_admin .= "</ul>";