<!--  
* /**
* Desarrollado por:
* Carlos Arturo rodriguez
*/
 -->
<?php include_once("analyticstracking.php") ?>
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
		
			
	?>
</head>
<body>
	<div class="container-fluid">
	<div ng-controller="acumuladorAppCtrl">	
	<?php echo $nuevo_obj->encabezado(); ?>
	<div class="row">
	<div class="col-xs-12 col-md- col-lg-7">
		<?php 
			echo $nuevo_obj->traer_informacion( "tb_cuenta1", "codigo_cuenta", "", "codigo_cuenta,descripcion","<th>N°</th><th>Cuenta</th>");
		 ?>
	</div>

	<div class="col-xs-12 col-md-4 col-lg-4 well well-sm">
		<?php if(isset($_GET['id'] )&& isset($_GET['tabla'])) {
			$id=$_GET['id'];
			$tabla=$_GET['tabla'];
			
			echo $nuevo_obj->form_actualizar($tabla,$id);
		}else{?>
		 <form action="otros.php">
	    <div class="form-group">
	      <label for="pwd">N° Cuenta</label>
	      <input type="texto" class="form-control" id="pwd" placeholder="N° Cuenta" name="dato1">
	    </div>
	    <div class="form-group">
	      <label for="pwd">Cuenta</label>
	      <textarea class="form-control" rows="3" id="comment" name="dato2"></textarea>
	    </div>
	     <div class="form-group">
	      
	      
		   
		   <input type="hidden" name="tabla" value="tb_cuenta1">
		   <input type="hidden" name="archivo" value="cuentas.php">
		      <input type="hidden" name="method" value="insertar">
			<input type="hidden" name="total-campos" value="2">
			<input type="hidden" name="campos" value="codigo_cuenta,descripcion">
						   
	    </div>
	   
	    <button type="submit" class="btn btn-default">Submit</button>
	  </form><?php } 
	  
	  if(isset($_GET['error'])){
		  $error=$_GET['error'];
		  echo $nuevo_obj->alert($error);
	  }
	  ?>

	</div>
		
		
		

	</div>
	</div>
	<script type="text/javascript" src="js/mi_js.js"></script>
	<script type="text/javascript"></script>
	
	



</body>
</html>

