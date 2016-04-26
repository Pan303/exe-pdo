<?php


if (isset($_GET['section']) && $_GET['section'] === "deco") {
    require_once 'Model/deco.php';
} 

echo"<a href='?section=deco'><h1>Deconnexion</h1></a><br><hr>";

if (isset($_GET['modif'])){
    include 'Model/modif.php';
    include 'view/modif.php';

}elseif (isset($_GET['modifid']) && ctype_digit($_GET['modifid'])){
    $modifid = (int) $_GET['modifid'];
    include 'model/modifid.php';
    include 'view/modifid.php';

}
elseif (isset($_GET['modifrub']) && ctype_digit($_GET['modifrub'])){
    include 'Model/modifrub.php';
    include 'view/modifrub.php';

}
elseif (isset($_GET['insert'])){
    include 'Model/insert.php';
    include 'view/insert.php';

}else {  
    include 'Model/admin.php';
    include 'view/admin.php';  
}
