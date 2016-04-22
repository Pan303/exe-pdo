<?php

if (empty($_GET)) {
     
     require_once 'View/header.inc.php';

    

     require_once 'View/footer.inc.php';
     
} elseif (isset($_GET['connect'])) {//ajouter des filtres? autre solution?
     require_once "Model/connect.php";
     require_once "View/AccueilConnect.inc.php";
     }

