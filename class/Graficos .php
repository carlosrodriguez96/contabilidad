<?php 
/**
* 
*/
class Graficos 
{
	
	function encabezado()

	{
		$salida="";
		$salida.="<div class='row'> 
						<div class='col-xs-12 col-md-12 col-lg-12'>
							<img src='img/Imagen0.png' class='img img-responsive'>
						</div>
					</div>

					
						
						<nav class='navbar navbar-default '>
						  <div class='container-fluid'>
						    <div class='navbar-header'>
						      <button type='button' class='navbar-toggle' data-toggle='collapse' data-target='#myNavbar'>
						        <span class='icon-bar'></span>
						        <span class='icon-bar'></span>
						        <span class='icon-bar'></span>                        
						      </button>
						      <a class='navbar-brand' href='#'><span class='glyphicon glyphicon-piggy-bank' aria-hidden='true'></span> CarlSisCont</a>
						    </div>
						    <div class='collapse navbar-collapse' id='myNavbar'>
						      <ul class='nav navbar-nav'>
						        <li ><a href='#'>Acerca de <span class='glyphicon glyphicon-question-sign'></span></a></li>
						        <li class='dropdown'>
						          <a class='dropdown-toggle' data-toggle='dropdown' href='registros.php'>Registros <span class='glyphicon glyphicon-list'></span></a>
						          <ul class='dropdown-menu' >
						            <li><a href='registros.php'>Insertar un registro</a></li>
						            <li><a href='ver_registros.php'>Ver registros</a></li>
						            <li><a href='#'>Page 1-3</a></li>
						          </ul>
						        </li>
						        
						        <li class='dropdown'>
						          <a class='dropdown-toggle' data-toggle='dropdown' href='registros.php'>Informes <span class='glyphicon glyphicon-copy'></span></a>
						          <ul class='dropdown-menu' >
						            <li><a href='informe.php'>Informe General</a></li>
						            <li><a href='#'>Libro Auxiliar</a></li>
						            <li><a href='#'>Page 1-3</a></li>
						          </ul>
						        </li>
						        <li><a href='cuentas.php'>Catalogo de cuentas <span class='glyphicon glyphicon-book'></span></a></li>
						      </ul>
						      <ul class='nav navbar-nav navbar-right'>
						        <li><a href='#'><span class='glyphicon glyphicon-user'></span> Sign Up</a></li>
						        <li><a href='#'><span class='glyphicon glyphicon-log-in'></span> Login</a></li>
						      </ul>
						    </div>
						  </div>
						</nav>";
			return $salida;
	}
	function modal($archivo)
	{
		$salida="";
		$salida.="<div class='modal fade' id='mostrarmodalsuccess' role='dialog'>
				    <div class='modal-dialog'>
				    
				      <!-- Modal content-->
				      <div class='modal-content'>
				        <div class='modal-header' style='background-color:#009688 ; color:white; text-align:center;'>
				          <button type='button' class='close' data-dismiss='modal'>&times;</button>
				          <h1 class='modal-title'>Buen Trabajo!!</h1>
				        </div>
				        <div class='modal-body'>
				         <center> <img src='img/thumbs_up.png' class='img-responsive' style='width:30%;'></center>
				        </div>
				       
				      </div>
				      
				    </div>
				  </div>
				  <div class='modal fade' id='mostrarmodaldanger' role='dialog'>
				    <div class='modal-dialog'>
				    
				      <!-- Modal content-->
				      <div class='modal-content'>
				        <div class='modal-header' style='background-color:b71c1c; color:white; text-align:center;'>
				          <button type='button' class='close' data-dismiss='modal'>&times;</button>
				          <h1 class='modal-title'>Oh!! algo ocurrio mal</h1>
				        </div>
				        <div class='modal-body'>
				         <center> <img src='img/thumbs_down.png' class='img-responsive' style='width:30%;'></center>
				        </div>
				        
				      </div>
				      
				    </div>
				  </div>";
				  return $salida;
	}

}
 ?>
