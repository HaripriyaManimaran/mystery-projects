<?php

//$conn= mysqli_connect("localhost","root","","user")or die("Connection Failed:".$conn->connect_error);

$db=new mysqli;
$db->connect("localhost","root","","user");
if (!$db){
    echo "Connected Succesfull <br>";
}

?>