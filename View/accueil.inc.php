<body>

<form action="" method="post" name="pizza">
<p>Que désirez vous sur votre pizza :</p><br><br>
<?php
while ($rec=$recup->fetch(PDO::FETCH_ASSOC)) {
  echo'<input name="ingred[]" type="checkbox" value="'.$rec["id"].'">'.$rec["nom"].'<br/>';
}

?>
  <br/>
  <input type="submit" value="Envoyer"/>

</form>