<?php include_once("analyticstracking.php") ?>
<?php
						$host = 'localhost';
						$basededatos = 'bd_cuentas';
						$usuario = 'root';
						$contraseña = '';



						$conexion = new mysqli($host, $usuario,$contraseña, $basededatos);		
				//////////////////////// PRESIONAR EL BOTÓN //////////////////////////
				if(isset($_POST['insertar']))

				{

			
				$items1 = ($_POST['dato1']);
				$items2 = ($_POST['dato2']);
				$items3 = ($_POST['dato3']);
				$items4 = ($_POST['dato4']);
				$items5 = ($_POST['dato5']);
				$items6 = ($_POST['dato6']);
				$items7 = ($_POST['dato7']);
				$items8 = ($_POST['dato8']);
				
		
				
				 
				///////////// SEPARAR VALORES DE ARRAYS, EN ESTE CASO SON 4 ARRAYS UNO POR CADA INPUT (ID, NOMBRE, CARRERA Y GRUPO////////////////////)
				while(true) {

				    //// RECUPERAR LOS VALORES DE LOS ARREGLOS ////////
				   
				    $item1 = current($items1);
				    $item2 = current($items2);
				    $item3 = current($items3);
				    $item4 = current($items4);
				    $item5 = current($items5);
				    $item6 = current($items6);
				    $item7 = current($items7);
				    $item8 = current($items8);
				    
				    ////// ASIGNARLOS A VARIABLES ///////////////////
				  
				    $id_relacion=(( $item1 !== false) ? $item1 : ", &nbsp;");
				    $id_registro=(( $item2 !== false) ? $item2 : ", &nbsp;");
				    $codigo_cuenta=(( $item3 !== false) ? $item3 : ", &nbsp;");
				    $descripcion=(( $item4 !== false) ? $item4 : ", &nbsp;");
				    $valor_debito=(( $item5 !== false) ? $item5 : ", &nbsp;");
				    $valor_credito=(( $item6 !== false) ? $item6 : ", &nbsp;");
				    $fecha_registro=(( $item7 !== false) ? $item7 : ", &nbsp;");
				    $id_clientes=(( $item8 !== false) ? $item8 : ", &nbsp;");

				     
				    

				    //// CONCATENAR LOS VALORES EN ORDEN PARA SU FUTURA INSERCIÓN ////////
				    $valores='("'.$id_relacion.'","'.$id_registro.'","'.$codigo_cuenta.'","'.$descripcion.'","'.$valor_debito.'","'.$valor_credito.'",'.$fecha_registro.',"'.$id_clientes.'"),';

				    //////// YA QUE TERMINA CON COMA CADA FILA, SE RESTA CON LA FUNCIÓN SUBSTR EN LA ULTIMA FILA /////////////////////
				    $valoresQ= substr($valores, 0, -1);
				    
				    ///////// QUERY DE INSERCIÓN ////////////////////////////
				    $sql = "INSERT INTO tb_cuenta2 (id_registro, id_relacion, codigo_cuenta, descripcion, valor_debito,valor_credito, fecha_registro, id_clientes)
					VALUES $valoresQ";
					
					echo $sql."<br>";
					$sqlRes=$conexion->query($sql);

				    
				    // Up! Next Value
				   
				    $item1 = next( $items1 );
				    $item2 = next( $items2 );
				    $item3 = next( $items3 );
				    $item4 = next( $items4 );
				    $item5 = next( $items5 );
				    $item6 = next( $items6 );
				    $item7 = next( $items7 );
				    $item8 = next( $items8 );
				    
				    // Check terminator
				    if( $item1 === false && $item2 === false && $item3 === false && $item4 === false && $item5 === false && $item6 === false && $item7 === false  && $item8 === false ) break;

				    if( $conexion->affected_rows > 0 )
						{
							$salida = "Los datos se han guardado correctamente.";
							header('location:ver_registros.php?error=1');

						}else{
								$salida = "Error: los datos no se han guardado. Es probale que la información ya se encuentre en el sistema.";
								header('location:ver_registros.php?error=2');
							}
    
				}
					
				}
				if(isset($_POST['actualizar']))

				{

			
				$items1 = ($_POST['dato1']);
				$items2 = ($_POST['dato2']);
				$items3 = ($_POST['dato3']);
				$items4 = ($_POST['dato4']);
				$items5 = ($_POST['dato5']);
				$items6 = ($_POST['dato6']);
				$items7 = ($_POST['dato7']);
				$items8 = ($_POST['dato8']);
			
				

				 
				///////////// SEPARAR VALORES DE ARRAYS, EN ESTE CASO SON 4 ARRAYS UNO POR CADA INPUT (ID, NOMBRE, CARRERA Y GRUPO////////////////////)
				while(true) {

				    //// RECUPERAR LOS VALORES DE LOS ARREGLOS ////////
				   
				    $item1 = current($items1);
				    $item2 = current($items2);
				    $item3 = current($items3);
				    $item4 = current($items4);
				    $item5 = current($items5);
				    $item6 = current($items6);
				    $item7 = current($items7);
				    $item8 = current($items8);
				    
				    ////// ASIGNARLOS A VARIABLES ///////////////////
				  
				    $id_registro=(( $item1 !== false) ? $item1 : ", &nbsp;");
				    $id_relacion=(( $item2 !== false) ? $item2 : ", &nbsp;");
				    $codigo_cuenta=(( $item3 !== false) ? $item3 : ", &nbsp;");
				    $descripcion=(( $item4 !== false) ? $item4 : ", &nbsp;");
				    $valor_debito=(( $item5 !== false) ? $item5 : ", &nbsp;");
				    $valor_credito=(( $item6 !== false) ? $item6 : ", &nbsp;");
				    $fecha_registro=(( $item7 !== false) ? $item7 : ", &nbsp;");
				    $id_clientes=(( $item8 !== false) ? $item8 : ", &nbsp;");
				   

				    //// CONCATENAR LOS VALORES EN ORDEN PARA SU FUTURA INSERCIÓN ////////
				    $valores="id_registro = '$id_registro', id_relacion = '$id_relacion', codigo_cuenta = '$codigo_cuenta', descripcion = '$descripcion', valor_debito = '$valor_debito', valor_credito = '$valor_credito', fecha_registro = '$fecha_registro', id_clientes = '$id_clientes' WHERE tb_cuenta2.id_registro = '$id_registro'";

				    //////// YA QUE TERMINA CON COMA CADA FILA, SE RESTA CON LA FUNCIÓN SUBSTR EN LA ULTIMA FILA /////////////////////
				   
				    
				    ///////// QUERY DE INSERCIÓN ////////////////////////////
				    $sql = "UPDATE tb_cuenta2 SET   $valores";
					
					echo $sql.";<br>";
					$sqlRes=$conexion->query($sql);

				    
				    // Up! Next Value
				   
				    $item1 = next( $items1 );
				    $item2 = next( $items2 );
				    $item3 = next( $items3 );
				    $item4 = next( $items4 );
				    $item5 = next( $items5 );
				    $item6 = next( $items6 );
				    $item7 = next( $items7 );
				    $item8 = next( $items8 );
				   
				    
				    // Check terminator
				    if( $item1 === false && $item2 === false && $item3 === false && $item4 === false && $item5 === false && $item6 === false && $item7 === false && $item8 === false) break;
				    if( $conexion->affected_rows > 0 )
						{
							$salida = "Los datos se han guardado correctamente.";
							header('location:ver_registros.php?error=1');

						}else{
								$salida = "Error: los datos no se han guardado. Es probale que la información ya se encuentre en el sistema.";
								header('location:ver_registros.php?error=1');
							}

			    
				}
		
				}

			?>