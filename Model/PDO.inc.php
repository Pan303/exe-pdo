<?php

try {
    $hostname = 'localhost';
    $user = 'root';
    $pass = 'root'; // sous windows mettre '';
    $dbh = new PDO("mysql:host=$hostname;dbname=pizza", $user, $pass);
    $dbh->exec("SET CHARACTER SET utf8");
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>

