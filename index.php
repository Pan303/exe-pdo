<?php

session_start(); 
require_once 'Model/PDO.inc.php';

if (!isset($_SESSION["id"]) || $_SESSION["id"] != session_id()) {
     require_once 'Controller/routeur.php';
} else {
     require_once "Controller/admin.php";
}

