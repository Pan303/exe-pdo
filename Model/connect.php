<?php

// si on a envoyé le formulaire
if(!empty($_POST)) {
     
    $lelogin = htmlspecialchars(strip_tags(trim($_POST['lelogin'])),ENT_QUOTES);
    $lepass = htmlspecialchars(strip_tags(trim($_POST['lepass'])),ENT_QUOTES);
 
try {
     
    $query = "SELECT count(*) FROM util
       WHERE login = '$lelogin' AND pass = '$lepass'";
    $stmt = $dbh->prepare($query);
    
    $stmt->bindValue(':lelogin', $lelogin);
    $stmt->bindValue(':lepass', $lepass);

    $stmt->execute();
 
}catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
  $colcount = $stmt->fetchColumn();
    // on a un résultat
    if($colcount > 0){

        $recup = $dbh->query("SELECT u.id AS idutil,d.id AS iddroit,u.*,d.* FROM util u
INNER JOIN droit d ON u.droit_id = d.id WHERE d.lintitule = '$lelogin' ");
        $aff = $recup->fetch(PDO::FETCH_ASSOC);

         // création de session valide
         $_SESSION["id"] = session_id();
         $_SESSION['idutil'] = $aff['idutil'];
        $_SESSION['login'] = $aff['login'];
        $_SESSION['ecrit'] = $aff['ecrit'];
        $_SESSION['modif'] = $aff['modif'];
        $_SESSION['supp'] = $aff['supp'];

        header("Location: ./");
        //include './Model/redirectionJs.php';
    
    }else{
        $erreur = "Login et/ou mot de passe incorrect(s)";
    }

}
