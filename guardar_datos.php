<?php

    /**
	* Autor: Camilo Figueroa
	* 
	*/

    include( "funciones.php" );
    
    //echo "------------------------------------------------------------";

    echo imprimir_menus();
    echo "<br>";
    
    if( isset( $_GET[ 'tabla' ] ) && isset( $_GET[ 'total-campos' ] ) && isset( $_GET[ 'campos' ] ) )
    {
        $tabla              = $_GET[ 'tabla' ];
        $total_campos       = $_GET[ 'total-campos' ];
        $campos             = $_GET[ 'campos' ];
        $valores            = "";
        $caracter_separador = ", ";
        
        //echo $campos."<br>"; //Esta línea es para ver si están llegando los datos.
        
        //En este ciclo se preparan los diferentes elementos para el insert. Hay que recordar que los valores de los campos
        //deben venir en secuencia desde los formularios para que esto funcione. En s�, el formulario aportar�a toda la informaci�n
        //necesaria para que este código funcione, sin hacerle cambios.
        for( $i = 1; $i <= $total_campos; $i ++ )
        {
            if( $i >= $total_campos ) $caracter_separador = ""; //Quitamos la coma porque el �ltimo dato no debe llevarla.
            //echo $_GET[ 'dato'.$i ]."<br>"; //Esta l�nea se puede habilitar si se requieren ver los datos que est�n llegando.
            $valores .= "'".$_GET[ 'dato'.$i ]."'".$caracter_separador;
        }
    
        //Aqu� se ejecuta la inserci�n de la informaci�n. Este c�digo est� en el archivo funciones.php
        echo guardar_informacion( $tabla, $campos, $valores );
        
    }else{
             echo "Error: no se puede guardar la informaci&oacute;n porque faltan datos por suministrar o programar en los formularios.";   
        }