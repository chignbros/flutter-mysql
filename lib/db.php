<?php

$dns="mysql:http://flutter-mysql.000webhostapp.com;dbname=id10762201_flutterdb";
$user="dbflutter";
$pass="ching162";

try {
    $db=new PDO($dns,$user,$pass);
    echo "Connected";
} catch (PDOException $e) {
    $error=$e->getMassage();
    echo $error;
}

require_once('db.php');
$query = 'SELECT * FROM post';
$stm=$db->prepare($query);
$stm->execute();
$row=$stm->fetch(PDO::FETCH_ASSOC);
echo json_encode($row);