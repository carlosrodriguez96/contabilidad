<?php 
session_start();
	if (isset($_SESSION['user'])) {
		session_destroy();
	}

 ?>

<!DOCTYPE HTML>
<html>
<head>
<title>Login</title>

<!-- bootstrap-3.3.7 -->
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
<script type="text/javascript" language="javascript" src="../bootstrap/js/jquery2.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<?php include_once("../analyticstracking.php") ?>
<!-- JQUERY -->


<link href="style/style.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" language="javascript" src="style/style.js"></script>

</head>
<body>

<div class="container">
        <div class="card card-container">
            <img id="profile-img" class="profile-img-card" src="img/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="" method="POST">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="text" id="inputEmail" name="nom_usuario" class="form-control" placeholder="Usuario" required autofocus>
                <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Contraseña" required>
                <br>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit"  name="login">Iniciar Sesión</button>
            </form>
            
        </div>
</div>

</body>
</html>
<?php
#include "conexion.php";
IF(ISSET($_POST['login'])){
	$user_name = $_POST['nom_usuario'];
	$password_u = $_POST['password'];
	
	$sql="SELECT * FROM tb_usuarios where nom_usuario='$user_name' and password='$password_u'";
	include 'conexion.php';
	
	$fila=mysqli_fetch_assoc($resultado);
	if ($fila['estado']==1) {
		#header("location:../administrar.php?usuario=".$user_name);
		$_SESSION['user'] = $user_name;
		echo "<script> window.location='../administrar.php';</script>";
#echo"<a href='../administrar.php?usuario=".$user_name."'>dar clic para acceder</a>";
	}else{
		echo "<script> window.location='../administrar.php?error=u';</script>";
	}
//echo $sql;
}
?>