<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Connect</title>
</head>
<body>
<h1>Se connecter</h1>
<?php

?>
<form action="" name="mmm" method="POST">
    <input type="text" name="lelogin" placeholder="Votre login" required /><br/>
    <input type="password" name="lepass" placeholder="Votre PWD" required /><br/>
    <input type="submit" value="Vous connecter" /><br/>

</form>
</br>
<?php
if(isset($erreur)){echo $erreur;}
?>
</body>
</html>
