<?php
if (empty($_GET)) {
<<<<<<< HEAD
     
     require_once 'View/header.inc.php';
 
        require_once 'Model/selectAccueil.php';
    include 'View/accueil.inc.php';
        require_once 'Model/accueil.php';
        require_once 'View/accueilImage.inc.php';
    
=======
>>>>>>> 36bbb9d4c137b16c7749a6921603c72c3985eb2d

     require_once 'View/header.inc.php';
     require_once 'View/accueil.inc.php';
     require_once 'View/footer.inc.php';
<<<<<<< HEAD
     
} 






elseif (isset($_GET['connect'])) {
     require_once "Model/connect.php";
     require_once "View/connect.php";
     }

=======

} elseif (isset($_GET['connect'])) {//ajouter des filtres? autre solution?
     require_once "Model/connect.php";
     require_once "View/connect.inc.php";
}
>>>>>>> 36bbb9d4c137b16c7749a6921603c72c3985eb2d
