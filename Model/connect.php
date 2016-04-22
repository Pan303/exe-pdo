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
    if($colcount > 0){  //IL FAUT QUE DANS LES SESSIONS SOIT ASSOCIé LES DROITS DE L'UTILISATEUR QUI S'EST CONNECTé
        /*EN COURS ------------
        $util = $connexion->query("
  SELECT * FROM droit
  ");
$affiche_tous = $util->fetchAll(PDO::FETCH_OBJ);
        
        
         // création de session valide
         $_SESSION["id"] = session_id();
         $_SESSION['idutil'] = $util['id'];
        $_SESSION['login'] = $util['login'];
        $_SESSION['ecrit'] = $util['ecrit'];
        $_SESSION['modifie'] = $util['modifie'];
        $_SESSION['modifietous'] = $util['modifietous'];
        $_SESSION['supprime'] = $util['supprime'];
        $_SESSION['supprimetous'] = $util['supprimetous'];
         */
         include './Model/redirectionJS.php';
    
    }else{
        $erreur = "Login et/ou mot de passe incorrecte(s)";
    }

}
