<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
<h1></h1>
<?php

if (isset($vide)) {
    echo $vide;
} else {
    if ($_SESSION["modif"] == 1) {
        if (!isset($article_modif)) {

            foreach ($pizza AS $aff) {
                ?>
                <form action="" name="mmm" method="POST">
                    <h4><p>Changer le nom</p>
                        <p><input type="text" name="nom" value="<?= $aff['pnom'] ?>" required/><br/></p>
                        <p>Changer l'image</p>
                        <p><input type="text" name="image" value="<?= $aff['image'] ?>" required/><br/></p>
                        <p>Changer les ingrédients</p>
                        <?php
                        $add = "";
                        $rubpart = explode(',', $aff['ingre']);
                        foreach ($rubpart as $azer){
                        $rubint = explode('/', $azer);

                            echo "<input type='checkbox' name='rub[]' value='" . $rubint['0'] . "' checked /> " . $rubint['1']." | ";


                        ?>




                            <?php } var_dump($add);?>
                            <input type="submit" value="Modifier"/><br/>
                </form>
                <hr/>
                <?php


            }
        }else {
            echo $article_modif;
        }
    } else {
        header("Location: ?admin");
    }

}
?>
<script>
    function redirige(chemin) {
        window.location.href = chemin;
    }
    setTimeout("redirige('./')", 5000000000000000);
</script>
</body>
</html>