<?php

if (empty($_GET)) {
     
     require_once 'View/header.inc.php';
 
        require_once 'Model/selectAccueil.php';
    include 'View/accueil.inc.php';
        require_once 'Model/accueil.php';
        require_once 'View/accueilImage.inc.php';
    

     require_once 'View/footer.inc.php';
     
} 






elseif (isset($_GET['connect'])) {
     require_once "Model/connect.php";
     require_once "View/connect.inc.php";
     }

