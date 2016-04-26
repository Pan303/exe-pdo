<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Pizzas</title>
    <script src="Vues/js/monjs.js"></script>
</head>
<body>
<h1>Les pizzas</h1>
<?php


if(isset($vide)){
    echo "<h2>$vide</h2>";
}else {
    foreach ($pizza AS $aff) {
        ?>
        <h3><?php echo  $aff['pnom'] ?></h3> <img src="<?=$aff['image']?>" alt="<?=$aff['pnom']?>" width="500px" />
        <lu>
            <?php
                $rubpart = explode(',',$aff['ingre']);
            foreach ($rubpart AS $affiche){

                ?>
<li> <?=$affiche?></li>
            <?php ;}?>
         </lu>
        <?php
        if ($_SESSION["modif"] == 1) {
            echo "<a href='?modifid=" . $aff['pid'] . "'><img src='view/img/editer.gif' alt='modifier' /></a> ";
        }
        if ($_SESSION["supp"] == 1) {
            echo "<a href=?modif&del=".$aff['pid']."><img src='view/img/delete.png' alt='supprimer'/></a>";
        }
        ?><hr/><?php

            if(isset($_GET['del'])&&($_SESSION['supp']==1)){
                $idsup = $_GET['del'];

            if(isset($idsup)){
                if(isset($aunerub)){
                    $deleterha = "DELETE FROM rubrique_has_article WHERE article_id = $idsup";
                    mysqli_query($mysqli, $deleterha) or die(mysqli_error($mysqli));
                }
                $delete = "DELETE FROM article WHERE id=$idsup ;";
                mysqli_query($mysqli, $delete) or die(mysqli_error($mysqli));
                header ("Location: ?modif");
            }
        }
    }
}
?>
</body>
</html>