<!--  
* /**
* Desarrollado por:
* Carlos Arturo rodriguez
*/
 -->

<html lang="ES" ng-app="acumuladorApp">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<head>
	<title></title>

	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
	<script src="bootstrap/js/jquery2.min.js"></script>
  	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/angular.min.js"></script>
	<meta charset="utf-8">
	<?php 
		include 'class/BD.php'; //trae las funciones de la pagina BD.php
		$nuevo_obj=new BD();	// llama la clase BD
		$archivo_actual = basename($_SERVER['PHP_SELF']); //Regresa el nombre del archivo actual
		
			
	?>
</head>
<body>
	<div class="container-fluid">
	<div ng-controller="acumuladorAppCtrl">	
	<div class="row"> 
		<div class="col-xs-12 col-md-12 col-lg-12">
			<?php echo $nuevo_obj->encabezado(); ?>	
		</div>
	</div>
	<div class="row">
		
	</div>	
	<div class="row">
	<div class="col-xs-12 col-md-12 col-lg-12">
		<?php 
			echo $nuevo_obj->informe("<th>Código</th><th>Cuenta</th><th>Saldo</th><th>Débito</th><th>Credito</th><th>total</th>");
		 ?>
	</div>


		
		
		<a href="reportes/descargar-excel-basico-1.php"> DESCARCAR</a>

	</div>
	</div>
	<script type="text/javascript" src="js/mi_js.js"></script>
	<script type="text/javascript"></script>
	
	



</body>
</html>

