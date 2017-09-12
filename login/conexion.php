<?php 
$hostname = "localhost";
$username = "root";
$password = "";
$database = "bd_proyecto";

$conexion=mysqli_connect($hostname,$username,$password,$database);
$resultado=$conexion->query($sql);
?>