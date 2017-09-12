<?php 
/**
* Desarrollado por Carlos Rodriguez Ortega
* Tgo. ADSI
* 01/08/2017
*/
 include 'Graficos.php';
class BD  extends Graficos
{
	
	public $conexion; //variable publica



		/**
		*esta funcion ses el constructor.			
		*/


		function BD ()
		{
			$this->conexion=$this->crear_conexion();
			//echo "nacio la clase BD";


		}
			/**
			*funcion que crea la conexion 
			*@return  texto 		conexion 
			*/
		 function crear_conexion ()
		 {
		 	include('config.php');
		 	return mysqli_connect($servidor,$usuario,$clave,$bd);
		 }

		 /**
		* @param 		caracteres 			Es el nombre de la tabla.
		* @param 		caracteres 			identificador de la tabla.
		* @param 		caracteres 			Es el campo que se muestra en el select.
		* @param 		caracteres 			Es el campo que seleccionado del select.
		* @return  		caracteres 			Retorna el select.
		*/ 


		 function validar_cuenta($tabla,$campo,$selected=null,$name=null,$script=null){
		 	$sql="SELECT * FROM $tabla";

		 	$salida="";
		 	$salida = "<SELECT    class='form-control' name='$name' $script>";
		 	$resultado=$this->conexion->query($sql);
		 	while ($fila=mysqli_fetch_assoc($resultado)) 
		 	{
		 		#$salida.=$fila[$campo]."<br>";
		 		$sql="SELECT MAX(length($campo)) as conteo FROM $tabla where LEFT($campo,LENGTH('".$fila[$campo]."'))='".$fila[$campo]."'";
		 		$resultado2=$this->conexion->query($sql);
		 		#echo $sql."<br>";
		 		$conteo=0;
		 		while ($fila1=mysqli_fetch_assoc($resultado2)) {
		 			$conteo=$fila1['conteo'];
		 		}
		 		
		 		if (strlen( $fila[$campo] ) >=$conteo ) {
		 			if ($fila[ $campo ]==$selected) {
		 				$salida .="<option value='".$fila[ $campo ]."' selected='selected'>".$fila[ $campo ]."</option>";
		 			}else{
		 			$salida .="<option value='".$fila[ $campo ]."'>".$fila[ $campo ]."</option>";}
		 		}
		 		
		 	}
		 	$salida .=" </select> ";
				return $salida;
		 }
		 	 /**
		* @param 		caracteres 			Es el nombre de la tabla.
		* @param 		caracteres 			identificador de la tabla.
		* @param 		caracteres 			Es el campo que se muestra en el select.
		* @param 		caracteres 			Es el campo que seleccionado del select.
		* @return  		caracteres 			Retorna el select.
		*/ 


		 function traer_clientes($tabla,$campo_mostrar,$campo_llave,$selected=null,$name){
		 	$sql="SELECT * FROM $tabla";

		 	$salida="";
		 	$salida = "<SELECT    class='form-control' name='$name' >";
		 	$resultado=$this->conexion->query($sql);
		 	while ($fila=mysqli_fetch_assoc($resultado)) 
		 	{
		 		
		 		$salida .="<option value='".$fila[$campo_llave]."' selected='$selected'>".$fila[$campo_mostrar]."</option>";
		 		
		 	}
		 	$salida .=" </select> ";
				return $salida;
		 }


		 /**
		* Esta función se encarga de guardar información sin importar la tabla.
		* @param 		texto 			Es el nombre de la tabla que guardará la información.
		* @param 		texto 			Es el texto que contiene todos los campos separados por comas, generalmente desde un formulario.
		* @param 		texto 			Son los valores de los campos que también deberán estar separados por comas.
		* @param 		texto 			Es el nombre del archivo actual.
		* @return 		texto 			Es el mensaje de alerta para saber si se afectaron filas de la tabla o no.
		*/
		function guardar_informacion( $tabla, $campos, $datos,$archivo=null )
		{
			$salida = "";

			//------------SQL para ingresar datos----------------------------------------------------
			$sql = "INSERT INTO  $tabla ( $campos ) VALUES( $datos )";
			
			$resultado = $this->conexion->query( $sql );

			//Si se han afectado filas, entonces se procederá a informar.
			if( $this->conexion->affected_rows > 0 )
			{
				$salida = "Los datos se han guardado correctamente.";
				header('location:'.$archivo.'?error=1');

			}else{
					$salida = "Error: los datos no se han guardado. Es probale que la información ya se encuentre en el sistema.";
					header('location:'.$archivo.'?error=2');
				}

			echo $sql; //Al habilitar esta línea se puede observar el SQL que ha sido formado para la inserción. 

			return $salida;	
		}
		/**
		* esta funcion se encarga de borrar los datos de una tabla
		* @param 		texto 			nombre da la base de datos
		* @param 		texto 			condicion para el borrado
		* @param 		texto 			Es el nombre del archivo actual.
		* @return 		texto 			Es el mensaje de alerta para saber si se afectaron filas de la tabla o no.
		*/
		function borrar_datos( $tabla, $condicion = null,$archivo=null )
		{
		

		$salida = "";
		echo $condicion."<br>";
		//------------SQL para ingresar datos----------------------------------------------------
		$sql = "DELETE FROM $tabla ";
		
		if( $condicion != null ) $sql .= " WHERE $condicion ";
		echo $sql;
		

		
		$resultado = $this->conexion->query( $sql );

		//Si se han afectado filas, entonces se procederá a informar.
		if( $this->conexion->affected_rows > 0 )
		{
			$salida = "Los datos se han eliminado correctamente.";
			header('location:'.$archivo.'?error=1');

		}else{
				$salida = "Error: no se han afectado o borrado filas de la tabla en la base de datos.";
				header('location:'.$archivo.'?error=2');
			}

		return $salida;
		}
		/**
		* Retorna un dato de una tabla, de acuerdo a unas condiciones.
		* @param 		texto 		Es el nombre de la tabla de la cual se traerán los datos.
		* @param 		texto 		Es el campo a retornar o un SQL válido que represente un campo, como un COUNT o un SUM.
		* @param 		texto 		Es la condición opcional para traer la información.
		* @return 		texto 		Se retornará el resultado como un único valor de texto, podrían ser números también.
		*/
		function retornar_dato_tabla( $tabla, $campo_a_retornar, $condicion = null )
		{
		

			$salida = "";

			//------------SQL Se traen datos----------------------------------------------------
			$sql = "SELECT $campo_a_retornar AS dato_de_salida FROM $tabla ";
			if( $condicion != null ) $sql .= " WHERE $condicion ";

			echo $sql;

			
			$resultado = $this->conexion->query( $sql );	

			//Si se encuentran datos se retornarán. De lo contrario la función no retornará o retornará vacío.
			if( mysqli_num_rows( $resultado ) > 0 )
			{
				while( $fila = mysqli_fetch_assoc( $resultado ) )
				{
					$salida = $fila[ 'dato_de_salida' ];
				}
			}

			return $salida;
		}
		/**
		* Esta función se encarga de traer información sin importar las tablas.
		* Ojo, el primer campo que se debe procesar es la llave primaria, esto para el efecto del borrado.
		* @param 		caracteres 			Es el nombre de la tabla.
		* @param 		número 				Es el índice o lugar de la llave primaria con respecto de los otros campos. 
		* @param 		caracteres 			Condicion para el sql.
		* @param 		caracteres 			Es el campo que se muestra en el select.
		* @param 		caracteres 			Es el encabezado de los campos de la tabla.
		* @return  		caracteres			Retorna html con los datos de una tabla. 
	 	*/
		function traer_informacion( $tabla, $indice_llave_primaria = null, $condicion = null, $campos_a_mostrar = null,$th )
		{
			include( "config.php" ); //Aquí se traen los parámetros de la base de datos.
			//Hay que recordar que solo debería existir un archivo que permita dicha configuración.

			$salida = "";
			$contador=0;
			//Si al llamar la función no se ingresa el campo dos o segundo parámetro, se usará como llave primaria el 
			//primer elemento del recorset o vector que retorna la selección del sql.
			if( $indice_llave_primaria == null ) $indice_llave_primaria = 0;

			if( $campos_a_mostrar == null ) $campos_a_mostrar = "*";

			//------------SQL Se traen datos----------------------------------------------------
			$sql = "SELECT $campos_a_mostrar FROM  $tabla ";
			if( $condicion != null ) $sql .= " WHERE ".$condicion;
			$resultado = $this->conexion->query( $sql );	
			$archivo="";
			$salida .= " <div class='panel panel-default'>
				  <div class='panel-heading'>Datos</div>
				  <div class='panel-body' style='max-height: 50%;overflow-x: scroll;'>
			<table class='table table-resposive'>

					<thead>
				      <tr>
				        $th
				      </tr>
				    </thead>
			";
				if ($tabla=='tb_cuenta1') $archivo="cuentas.php";
				if ($tabla=='tb_cuenta2') $archivo="registros.php";	
				

			while( $fila = mysqli_fetch_array( $resultado ) )
			{
				$salida .= "<tr>";


					for( $i = 0; $i < mysqli_num_fields( $resultado ); $i ++ )
					$salida .= "<td><input type='text' class='form-control' value='".utf8_encode($fila[ $i ])."'></td>"; //Este es el dato impreso
						
					//El borrado de un dato se hará por llave primaria. Debería ser el primer campo de la tabla.
					if( $indice_llave_primaria != -1 ){
					$salida .= "<td><a href='otros.php?archivo=".$archivo."&method=borrar&id_=".$fila[ 0 ]."&tabla=".$tabla."'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a></td>";
					$salida .= "<td><a href='?id=".utf8_encode($fila[ 0 ])."&tabla=".$tabla."'><span class='glyphicon glyphicon-refresh'></span></a></td>";}

				$salida .= "</tr>";
			}

			$salida .= "</table>
			 </div>
				</div>";

			return $salida;	
		}
		/**
		* Esta función se encarga de traer información sin importar las tablas.
		* Ojo, el primer campo que se debe procesar es la llave primaria, esto para el efecto del borrado.
		* @param 		caracteres 			Es el nombre de la tabla.
		* @param 		número 				Es el índice o lugar de la llave primaria con respecto de los otros campos. 
		* @param 		caracteres 			Condicion para el sql.
		* @param 		caracteres 			Es el campo que se muestra en el select.
		* @param 		caracteres 			Es el encabezado de los campos de la tabla.
		* @return  		caracteres			Retorna html con los datos de una tabla. 
	 	*/
		function traer_informacion_registros( $tabla, $indice_llave_primaria = null, $condicion = null, $campos_a_mostrar = null,$th=null )
		{
			include( "config.php" ); //Aquí se traen los parámetros de la base de datos.
			//Hay que recordar que solo debería existir un archivo que permita dicha configuración.

			$salida = "";
			$conteo="";
			$contador=0;
			//Si al llamar la función no se ingresa el campo dos o segundo parámetro, se usará como llave primaria el 
			//primer elemento del recorset o vector que retorna la selección del sql.
			if( $indice_llave_primaria == null ) $indice_llave_primaria = 0;

			if( $campos_a_mostrar == null ) $campos_a_mostrar = "*";
			$sql="SELECT count(id_relacion) as conteo from tb_cuenta2  order by fecha_registro desc";
			$resultado = $this->conexion->query( $sql );
			while ($fila = mysqli_fetch_assoc( $resultado )) {
				$conteo=$fila['conteo'];
			}
			$salida .= " <div class='panel panel-default'>
						  <div class='panel-heading'>Datos</div>
						  <div class='panel-body' style=' max-height: 43%;overflow-y: scroll;'>";
			for ($i=$conteo; $i>=0 ; $i--) { 
				$sql = "SELECT $campos_a_mostrar FROM  $tabla where id_relacion='".$i."'  order by id_registro ASC ";
					
					$resultado2 = $this->conexion->query( $sql );
						if( mysqli_num_rows( $resultado2 ) > 0 )
					{
						$salida.="<table class='table table-fixed'>

							<thead>
						      <tr>
						        $th
						      </tr>
						    </thead><tbody>
					";
						$salida.="<form action='prueba.php' method='post'>";
						if ($tabla=='tb_cuenta2') $archivo="registros.php";	
						
						$a=0;
						$j="my_boton";
					while( $fila = mysqli_fetch_array( $resultado2 ) )
					{
						$salida .= "<tr>";
						
							$salida.="<td col-xs-2 col-md-2 col-lg-2 none; width:100%;'> 
								<input type='text' class='form-control' id='texto' name='dato7[]' value='".$fila[ 6 ]."' readonly  ondblclick='readOnly=false' onblur='readOnly=true' >
							</td>";


							$salida.="<td class='col-xs-2 col-md-2 col-lg-2' style='display: none; width:100%;'> 
										<input type='hidden' class='form-control' id='texto' name='dato1[]' value='".$fila[ 0 ]."' readonly  ondblclick='readOnly=false' onblur='readOnly=true' >
									</td>";

							$salida.="<td class='col-xs-2 col-md-2 col-lg-2' style='display: none;'> 
										<input type='hidden' class='form-control' id='texto' name='dato2[]' value='".$fila[ 1 ]."' readonly  ondblclick='readOnly=false' onblur='readOnly=true  '>
									</td>";
									
							$salida.="<td col-xs-2 col-md-2 col-lg-2 none; width:100%;'>". 
										$this->validar_cuenta("tb_cuenta1","codigo_cuenta",$fila[2],"dato3[]")
									."</td>";

							$salida.="<td col-xs-2 col-md-2 col-lg-2 none; width:100%;'> 
										<input type='text' class='form-control' id='texto' name='dato4[]' value='".$fila[ 3 ]."' readonly  ondblclick='readOnly=false' onblur='readOnly=true' >
									</td>";
							$salida.="<td col-xs-2 col-md-2 col-lg-2 none; width:100%;'> 
										<input type='text' class='form-control' id='texto' name='dato5[]' value='".$fila[ 4 ]."' readonly  ondblclick='readOnly=false' onblur='readOnly=true' >
									</td>";
									$salida.="<td col-xs-2 col-md-2 col-lg-2 none; width:100%;'> 
										<input type='text' class='form-control' id='texto' name='dato6[]' value='".$fila[ 5 ]."' readonly  ondblclick='readOnly=false' onblur='readOnly=true' >
									</td>";
							$salida.="<td col-xs-2 col-md-2 col-lg-2 none; width:100%;'>".
										$this->traer_clientes("tb_clientes","razon_social","id_clientes",$fila[7],"dato8[]")
									."</td>";
									
							if( $indice_llave_primaria != -1 ){
							
						   
						   
						  
							$salida.="<input type='hidden' name='actualizar' value='actualizar'>";
							$salida .= "<td><a href='otros.php?archivo=ver_registros.php&method=borrar&id_=".$fila[ 0 ]."&tabla=".$tabla."' style='color:#b71c1c;'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a></td>";
							}

						
					}$salida .= "<td><button id='my_boton'  type='submit' class='btn btn-primary' aria-label='Left Align'  title='texto al pasar el raton'>
									  <span class='glyphicon glyphicon-refresh' aria-hidden='true'></span>
									</button></td></form>";
					$salida .= "</tr>";
					
					$salida .= "</tbody></table>";


					}else{
						$salida.="";
					}
					
				}
			
			$salida.=" </div>
						</div>";

			return $salida;	
		}	
						
					


		/**
		* @param 		caracteres 			Es el nombre de la tabla.
		* @param 		caracteres 			identificador de la tabla.
		* @param 		caracteres 			Es el campo que se muestra en el select.
		* @param 		caracteres 			Es el campo que seleccionado del select.
		* @return  		caracteres 			Retorna el formulario.
		*/
		function form_actualizar($tabla,$id,$selected=null)
		{
				$salida="";
				if ($tabla=="tb_cuenta2") {
					$sql="SELECT * FROM $tabla where id_registro='$id'";
					$resultado=$this->conexion->query($sql);

					$salida.="
						<form action='otros.php'>
					    <div class='form-group'>
					      <label for='email'>Cuenta</label>".
					       $this->validar_cuenta('tb_cuenta1','codigo_cuenta',$selected) ."		
					    </div>";

					    while ($fila=mysqli_fetch_array($resultado)) {
					    	$salida.="<input type='hidden' name='dato1' value='".$fila[0]."'>
					    	<div class='form-group'>
					      <label for='pwd'>Descripción</label>
					      <input type='texto' class='form-control' id='pwd' placeholder='Descripción' name='dato3' value='".$fila[2]."'>
					    </div>
					    <div class='form-group'>
					      <label for='pwd'>Valor</label>
					      <div class='form-group'>
						    <div class='input-group'>
						      <div class='input-group-addon'>$</div>
						      <input type='number'step='any' class='form-control' id='exampleInputAmount' placeholder='Valor' name='dato4' value='".$fila[3]."'> 
						      <div class='input-group-addon'>.00</div>
						    </div>
						  </div>
						  <input type='hidden' name='dato5' value='".$fila[4]."'>
					    	";
					    }

					    $salida.="
					     
						   
						   <input type='hidden' name='tabla' value='tb_cuenta2'>
						   <input type='hidden' name='archivo' value='registros.php'>
						     <input type='hidden' name='id' value='$id'>
							<input type='hidden' name='method' value='actualizar'>
							
										   
					    </div>
					   
					    <button type='submit' class='btn btn-default'>Submit</button>
					  </form>
					";
				}
				if ($tabla=="tb_cuenta1") {
					$sql="SELECT * FROM $tabla where codigo_cuenta='$id'";
					$resultado=$this->conexion->query($sql);
					$salida.="<form action='otros.php'>";
					while ($fila=mysqli_fetch_array($resultado)) {
						$salida.="
							<div class='form-group'>
							<label for='pwd'>N° Cuenta</label>
							<input type='texto' class='form-control' id='pwd' placeholder='N° Cuenta' name='dato1' value='".$fila[0]."'>
							</div>
							<div class='form-group'>
							<label for='pwd'>Cuenta</label>
							<textarea class='form-control' rows='3' id='comment' name='dato2'>".$fila[1]."</textarea>
							</div>
						";
					}
					$salida.="
						 <div class='form-group'>    
		   
						<input type='hidden' name='tabla' value='tb_cuenta1'>
						<input type='hidden' name='archivo' value='cuentas.php'>
							<input type='hidden' name='method' value='actualizar'>
							<input type='hidden' name='id' value='$id'>
										
						</div>
					
						<button type='submit' class='btn btn-default'>Submit</button>
					</form>
					";
				}
				return $salida;
		}
		/**
		*@param 		texto 			Es el nombre de la tabla.
		*@param 		texto 			Es dato 1 de la tabla.
		*@param 		texto 			Es dato 2 de la tabla.
		*@param 		texto 			Es dato 3 de la tabla.
		*@param 		texto 			Es dato 4 de la tabla.
		*@param 		texto 			Es dato 5 de la tabla.
		*@param 		texto 			Es dato 6 de la tabla.
		*@param 		texto 			Es dato 7 de la tabla.
		*@param 		texto 			Es el nombre del archivo.
		*@return 		texto 			Es el mensaje de alerta para saber si se afectaron filas de la tabla o no.
		*/
		function update($tabla,$id,$dato1=null,$dato2=null,$dato3=null,$dato4=null,$dato5=null,$dato6=null,$dato7=null,$archivo=null){
			if ($tabla=='tb_cuenta2') {
				
				$sql="UPDATE tb_cuenta2 SET id_registro = '$dato1', id_relacion = '$dato2', codigo_cuenta = '$dato3', descripcion = '$dato4', valor = '$dato5', fecha_registro = '$dato6', id_clientes = '$dato7' WHERE tb_cuenta2.id_registro = '$id'";
				echo $sql;}
				if ($tabla=='tb_cuenta1') {
				$sql ="UPDATE $tabla SET codigo_cuenta='$dato1',descripcion='$dato2' WHERE $tabla.codigo_cuenta='$id'";
				echo $sql;}
				$resultado=$this->conexion->query($sql);
				
				
			if( $this->conexion->affected_rows > 0 )
			{
				header('Location:'. $archivo.'?error=1');
				$salida = "Los datos se han guardado correctamente.";

			}else{
					header('Location:'. $archivo.'?error=2');
					$salida = "Error: los datos no se han guardado. Es probale que la información ya se encuentre en el sistema.";
				}
			
			return $salida;
		}

		function alert($error)
		{
			$archivo_actual = basename($_SERVER['PHP_SELF']); //Regresa el nombre del archivo actual
			$salida="";
			if($error==1){
				$salida.="<script>
						   $(document).ready(function()
						   {
						      $('#mostrarmodalsuccess').modal('show');
						   });
						</script>";
			}
			if($error==2){
				$salida.="<script>
						   $(document).ready(function()
						   {
						      $('#mostrarmodaldanger').modal('show');
						   });
						</script>";
			}

			return $salida;
		}
		/**
		*@param 		texto 		los encabezados de la tabla.
		*@return 		texto 		retorna el  html de la tabla.
		*
		*/
		function informe($th)
		{
			$salida="";
				$sql = "SELECT * FROM vista_informe_au";
			   echo $sql;
			    $resultado = $this->conexion->query( $sql );

			    $salida .= " <div class='panel panel-default'>
				  <div class='panel-heading'>Informe Cuentas</div>
				  <div class='panel-body' style=' max-height: 43%;overflow-y: scroll;'>
				<table class='table table-bordered'>

					<thead >
				      <tr>
				        $th
				      </tr>
				    </thead>
			";
				
				

			while( $fila = mysqli_fetch_array( $resultado ) )
			{
				$salida .= "<tr>";

				$salida .= "<td>".$fila[ 0 ]."</td>"; 
				$salida .= "<td>".utf8_encode($fila[ 1 ])."</td>";
				$salida .= "<td></td>";
				$salida .= "<td>".$fila[ 3 ]."</td>";
				$salida .= "<td>".$fila[ 4]."</td>";
				$salida .= "<td>".$fila[ 5]."</td>";
					/*for( $i = 0; $i < mysqli_num_fields( $resultado ); $i ++ )
					$salida .= "<td>".$fila[ $i ]."</td>"; //Este es el dato impreso*/
						
					//El borrado de un dato se hará por llave primaria. Debería ser el primer campo de la tabla.
					

				$salida .= "</tr>";
			}

			$salida .= "</table>
			 </div>
				</div>";

			return $salida;		
		}
		/**
		*funcion que se encarga de consultar las cuentas de la tabla tb_cuenta1
		*@return 		text 		retorna la consulta.
		*/
		function cuentas(){
			include( "config.php" );
        	
		        /*Esta conexión se realiza para la prueba con angularjs*/
		        header("Access-Control-Allow-Origin: *");
		        header("Content-Type: application/json; charset=UTF-8");
		        
		        $conn = new mysqli( $servidor, $usuario, $clave, $bd );
			 $sql="SELECT codigo_cuenta,descripcion FROM tb_cuenta1 where codigo_cuenta ='".$_GET['busqueda']."'";
    //echo $sql;
	  
	    $result=$conn->query($sql);
	     $outp = "";
	      while($rs = $result->fetch_array( MYSQLI_ASSOC )) 
	                {
	                    //Mucho cuidado con esta sintaxis, hay una gran probabilidad de fallo con cualquier elemento que falte.
	                     if ($outp != "") {$outp .= ",";}
		            $outp .= '{"Descripcion":"'.trim($rs['descripcion']).'"}';              // <-- La tabla MySQL debe tener este campo.
	                            // <-- La tabla MySQL debe tener este campo.
	                    
	                   // <-- La tabla MySQL debe tener este campo.
	                    
	                  
	                }
	                
	                 $outp ='{"records":['.$outp.']}';
		        $conn->close();
		       // echo $sql;
		        return $outp;
		}
		
			
				

		



											 
											

										
									


}

 ?>
