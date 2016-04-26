<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title><?= $titre ?></title>
</head>
<body>
<h1><?= $titre ?></h1>
<?php

// appel du menu
include("Vues/menu.inc.php");

// si article non inséré, affichage du formulaire
if(!isset($rub_insere)) {
    ?>
    <form action="" name="mmm" method="POST">
        <input type="text" name="larub" placeholder="La rubrique" required/><br/>
        <input type="submit" value="Insérer"/><br/>

    </form>
    <?php
}else{
    echo "<h3>$rub_insere</h3>";
    ?>
<?php
}
?>
</body>
</html>