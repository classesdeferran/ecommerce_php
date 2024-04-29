<?php

// Parámetros de la conexión
$adress = "127.0.0.1";
$user = "cief";
$password = "123456";
$database = "ecommerce";

// Conexión a la base de datos
$link = "mysql:host=$adress;port=3306;dbname=$database";

try {

    $pdo = new PDO($link, $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    $pdo->exec("SET CHARACTER SET utf8");
    $pdo->exec("SET NAMES utf8");
    $pdo->exec("SET COLLATION_CONNECTION = 'utf8_unicode_ci'");
    $pdo->exec("SET CHARACTER_SET_CLIENT = 'utf8'");
    $pdo->exec("SET CHARACTER_SET_RESULTS = 'utf8'");
    $pdo->exec("SET COLLATION_CONNECTION = 'utf8_unicode_ci'");

    echo "Conexión realizada <br>";


} catch (Exception $e) {
    echo "Error: ". $e->getMessage();
}
