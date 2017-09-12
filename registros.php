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
	<?php #include_once("analyticstracking.php") ?>

	<script src="bootstrap/js/jquery2.min.js"></script>
  	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/angular.min.js"></script>
	<script type="text/javascript" src="js/mi_js.js"></script>
	<?php #include_once("analyticstracking.php") ?>
	<meta charset="utf-8">
	<?php 
		include 'class/BD.php'; //trae las funciones de la pagina BD.php
		$nuevo_obj=new BD();	// llama la clase BD
		$archivo_actual = basename($_SERVER['PHP_SELF']); //Regresa el nombre del archivo actual
		
			
	?>
	<script type="text/javascript">
		 $(function(){
                // Clona la fila oculta que tiene los campos base, y la agrega al final de la tabla
                $("#adicional").on('click', function(){
                    $("#tabla tbody tr:eq(0)").clone().removeClass('fila-fija').appendTo("#tabla");
                });
             
                // Evento que selecciona la fila y la elimina 
                $(document).on("click",".eliminar",function(){
                    var parent = $(this).parents().get(0);
                    $(parent).remove();
                });
            });
	</script>
</head>
<body data-spy="scroll">
	<div class="container-fluid">
	<div ng-controller="acumuladorAppCtrl">	
		<?php echo $nuevo_obj->encabezado(); ?>		
	
	<div class="container">
		<div class="row">
			  <div id="menu1" >
			      	<?php
						////////////////// CONEXION A LA BASE DE DATOS //////////////////

						$host = 'localhost';
						$basededatos = 'bd_cuentas';
						$usuario = 'root';
						$contraseña = '';



						$conexion = new mysqli($host, $usuario,$contraseña, $basededatos);
						if ($conexion -> connect_errno) {
						die( "Fallo la conexión : (" . $conexion -> mysqli_connect_errno() 
						. ") " . $conexion -> mysqli_connect_error());
						}
						  ///////////////////CONSULTA DE LOS ALUMNOS///////////////////////

						$sql="SELECT * FROM tb_cuenta2 order by id_registro";
						$resultado= $conexion->query($sql);
						$id="";
							 while ($fila=mysqli_fetch_assoc($resultado))
							  {
							  	$id=$fila['id_relacion']+1;
							   }


						?>
						
							<div class="col-xs-12 col-md-12 col-lg-12" >
							<h3 class="bg-success text-center pad-basic no-btm">Agregar Nuevo Registro Egreso </h3>
								
							<form method="post" id="formulario" action="prueba.php">
								

								
								<table class="table "  id="tabla"  >
								
									
									<tr class="fila-fija">
										<td><input type="hidden" style="display: none;" class='form-control' required name="dato2[]" placeholder="ID registro" <?php echo "value='".$id."'" ?> /></td>
										<td><input style="display: none;" class='form-control' type="hidden" required name="dato1[]" placeholder="ID Alumno" value=""/></td>
										<td><label for="pwd">Cuenta</label><input type="text" name="dato3[]" ng-model="cuenta" ng-keyup="cuentas();">	</td>
										<td  > <label for="pwd">Concepto</label>  <input class='form-control' required name="dato4[]" placeholder="Concepto"   id='codigo'  / ></td>
										<td>
											<label for='pwd'>Débito</label>
											<div class="input-group">
										      <div class="input-group-addon">$</div>
										      <input type="number" class="form-control" id="exampleInputAmount" placeholder="Valor" name="dato5[]" step="any" id="dato5[]" value="0"> 
										      <div class="input-group-addon">.00</div>
										    </div>
										</td>
										<td>
											<label for='pwd'>Credito</label>
											<div class="input-group">
										      <div class="input-group-addon">$</div>
										      <input type="number" class="form-control" id="exampleInputAmount" placeholder="Valor" name="dato6[]" step="any" value="0" > 
										      <div class="input-group-addon">.00</div>
										    </div>
										</td>
										<td><input type="hidden" style="display: none;" class='form-control' required name="dato7[]" placeholder="Carrera" value='now()' /></td>
										<td><label for='pwd'>Cliente</label><?php echo $nuevo_obj->traer_clientes("tb_clientes","razon_social","id_clientes","","dato8[]"); ?>	
										</td>
										<td class="eliminar">
											<br><button type="button" class="btn btn-warning"  value=""><span class="glyphicon glyphicon-trash"></span> Quitar</button>
										</td>
									</tr>
									<tr class="fila-fija">
										<td><input type="hidden" style="display: none;" class='form-control' required name="dato2[]" placeholder="ID registro" <?php echo "value='".$id."'" ?> /></td>
										<td><input style="display: none;" class='form-control' type="hidden" required name="dato1[]" placeholder="ID Alumno" value=""/></td>
										<td><label for="pwd">Cuenta</label><input type="text" name="dato3[]" ng-model="cuenta" ng-keyup="cuentas();">	</td>
										<td  > <label for="pwd">Concepto</label>  <input class='form-control' required name="dato4[]" placeholder="Concepto"   id='codigo'  / ></td>
										<td>
											<label for='pwd'>Débito</label>
											<div class="input-group">
										      <div class="input-group-addon">$</div>
										      <input type="number" class="form-control" id="exampleInputAmount" placeholder="Valor" name="dato5[]" step="any" id="dato5[]" value="0"> 
										      <div class="input-group-addon">.00</div>
										    </div>
										</td>
										<td>
											<label for='pwd'>Credito</label>
											<div class="input-group">
										      <div class="input-group-addon">$</div>
										      <input type="number" class="form-control" id="exampleInputAmount" placeholder="Valor" name="dato6[]" step="any" value="0" > 
										      <div class="input-group-addon">.00</div>
										    </div>
										</td>
										<td><input type="hidden" style="display: none;" class='form-control' required name="dato7[]" placeholder="Carrera" value='now()' /></td>
										<td><label for='pwd'>Cliente</label><?php echo $nuevo_obj->traer_clientes("tb_clientes","razon_social","id_clientes","","dato8[]"); ?>	
										</td>
										<td class="eliminar">
											<br><button type="button" class="btn btn-warning"  value=""><span class="glyphicon glyphicon-trash"></span> Quitar</button>
										</td>
									</tr>
									<tr class="fila-fija">
										<td><input type="hidden" style="display: none;" class='form-control' required name="dato2[]" placeholder="ID registro" <?php echo "value='".$id."'" ?> /></td>
										<td><input style="display: none;" class='form-control' type="hidden" required name="dato1[]" placeholder="ID Alumno" value=""/></td>
										<td><label for="pwd">Cuenta</label><input type="text" name="dato3[]" ng-model="cuenta" ng-keyup="cuentas();">	</td>
										<td  > <label for="pwd">Concepto</label>  <input class='form-control' required name="dato4[]" placeholder="Concepto"   id='codigo'  / ></td>
										<td>
											<label for='pwd'>Débito</label>
											<div class="input-group">
										      <div class="input-group-addon">$</div>
										      <input type="number" class="form-control" id="exampleInputAmount" placeholder="Valor" name="dato5[]" step="any" id="dato5[]" value="0"> 
										      <div class="input-group-addon">.00</div>
										    </div>
										</td>
										<td>
											<label for='pwd'>Credito</label>
											<div class="input-group">
										      <div class="input-group-addon">$</div>
										      <input type="number" class="form-control" id="exampleInputAmount" placeholder="Valor" name="dato6[]" step="any" value="0" > 
										      <div class="input-group-addon">.00</div>
										    </div>
										</td>
										<td><input type="hidden" style="display: none;" class='form-control' required name="dato7[]" placeholder="Carrera" value='now()' /></td>
										<td><label for='pwd'>Cliente</label><?php echo $nuevo_obj->traer_clientes("tb_clientes","razon_social","id_clientes","","dato8[]"); ?>	
										</td>
										<td class="eliminar">
											<br><button type="button" class="btn btn-warning"  value=""><span class="glyphicon glyphicon-trash"></span> Quitar</button>
										</td>
									</tr>
									<tr class="fila-fija">
										<td><input type="hidden" style="display: none;" class='form-control' required name="dato2[]" placeholder="ID registro" <?php echo "value='".$id."'" ?> /></td>
										<td><input style="display: none;" class='form-control' type="hidden" required name="dato1[]" placeholder="ID Alumno" value=""/></td>
										<td><label for="pwd">Cuenta</label><input type="text" name="dato3[]" ng-model="cuenta" ng-keyup="cuentas();">	</td>
										<td  > <label for="pwd">Concepto</label>  <input class='form-control' required name="dato4[]" placeholder="Concepto"   id='codigo'  / ></td>
										<td>
											<label for='pwd'>Débito</label>
											<div class="input-group">
										      <div class="input-group-addon">$</div>
										      <input type="number" class="form-control" id="exampleInputAmount" placeholder="Valor" name="dato5[]" step="any" id="dato5[]" value="0"> 
										      <div class="input-group-addon">.00</div>
										    </div>
										</td>
										<td>
											<label for='pwd'>Credito</label>
											<div class="input-group">
										      <div class="input-group-addon">$</div>
										      <input type="number" class="form-control" id="exampleInputAmount" placeholder="Valor" name="dato6[]" step="any" value="0" > 
										      <div class="input-group-addon">.00</div>
										    </div>
										</td>
										<td><input type="hidden" style="display: none;" class='form-control' required name="dato7[]" placeholder="Carrera" value='now()' /></td>
										<td><label for='pwd'>Cliente</label><?php echo $nuevo_obj->traer_clientes("tb_clientes","razon_social","id_clientes","","dato8[]"); ?>	
										</td>
										<td class="eliminar">
											<br><button type="button" class="btn btn-warning"  value=""><span class="glyphicon glyphicon-trash"></span> Quitar</button>
										</td>
									</tr>
									
								</table>
								

								<div class="btn-der">
									
									<button type="submit" name="insertar" class="btn btn-info" disabled="disabled" id="guardar"> <span class="glyphicon glyphicon-floppy-disk"></span> Guardar</button> 
									<button type="button"  class="btn btn-warning" ng-click="cargar_datos_php()" id="validar"> <span class="glyphicon glyphicon-floppy-disk"></span> Validar</button> 
									<button type="button" class="btn btn-warning" id="adicional" > <span class="glyphicon glyphicon-duplicate"></span> Más</button> <p ng-model="resultado" id="resultado"></p>
									

								</div>
							</form>
							</div>
						</div>

						
			    </div>
			  
			   
			    
			   
			  
		
	
	<div class="row">
	

	<div class="col-xs-12 col-md-4 col-lg-4 ">
	
		<?php if(isset($_GET['error'])){
		  $error=$_GET['error'];
		  echo $nuevo_obj->alert($error);
	 }?>

	</div>
		
		
		

	</div>
	</div>
	</div>
	<script type="text/javascript" src="js/mi_js.js"></script>

	<div class="row">
	

	<div class="col-xs-12 col-md-4 col-lg-4 ">
	
		<?php if(isset($_GET['error'])){
		  $error=$_GET['error'];
		  echo $nuevo_obj->modal($archivo_actual);
		  echo $nuevo_obj->alert($error);
	 }?>

	</div>
	

</div>

</body>
</html>

