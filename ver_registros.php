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
	
	<?php include_once("analyticstracking.php") ?>
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
<body data-spy="scroll">
	<div class="container-fluid">
	<div ng-controller="acumuladorAppCtrl">	
		<?php echo $nuevo_obj->encabezado(); ?>		
	</div>
	<div class="container">
		<div class="row">
			 <?php echo $nuevo_obj->traer_informacion_registros( "tb_cuenta2", "","", "*","<th>Fecha</th><th>Cuenta</th><th>Concepto</th><th>Débito</th><th>Credito</th><th>Cliente</th>" ); ?>	

	    </div>
			  
			   
			    
			   
			  
		
	
	<div class="row">
	

	<div class="col-xs-12 col-md-4 col-lg-4 ">
	
		<?php if(isset($_GET['error'])){
		  $error=$_GET['error'];
		  echo $nuevo_obj->modal($archivo_actual);
		  echo $nuevo_obj->alert($error);
	 }?>

	</div>
		
		
		

	</div>
	</div>
	<script type="text/javascript" src="js/mi_js.js"></script>

	
	

</div>

</body>
</html>

