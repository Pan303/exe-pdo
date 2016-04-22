<?php

echo"<a href='?section=deco'><h1>Deconnexion</h1></a><br><hr>";

if (empty($_GET)) {

    include'View/AccueilConnect.inc.php';
}

if (isset($_GET['section']) && $_GET['section'] === "deco") {
    require_once 'Model/deco.php';
} 
