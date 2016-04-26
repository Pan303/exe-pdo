<?php


if(!empty($_POST)){

    $larub = htmlspecialchars(strip_tags(trim($_POST['larub'])),ENT_QUOTES);


    $sql = "INSERT INTO rubrique(lintitule)
            VALUES ('$larub')";
    mysqli_query($mysqli,$sql)or die(mysqli_error($mysqli));

    $rub_insere = "Votre article « $larub » est inséré, merci! ";
}