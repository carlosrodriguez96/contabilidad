
<?php 
/**
*Este archivo es el receptor y es el que se encarga de hacer los cambios a la base de datos.
*Desarrollado por: carlos Arturo Rodriguez.
*Tgo. ADSI Ficha:1132133
*/
include 'class/BD.php';
 $nuevo_objeto=new BD();
 if (isset($_GET['busqueda'])) {
   echo $nuevo_objeto->cuentas();
                
 }

     if( isset( $_GET[ 'tabla' ] ) && isset( $_GET[ 'total-campos' ] ) && isset( $_GET[ 'campos' ] ) && isset($_GET['method']) )
    {   
        if($_GET['method']=='insertar'){
        $tabla              = $_GET[ 'tabla' ];
        $total_campos       = $_GET[ 'total-campos' ];
        $campos             = $_GET[ 'campos' ];
        $valores            = "";
        $caracter_separador = ", ";
        $archivo=$_GET['archivo'];
        echo $archivo;
        
        //echo $campos."<br>"; //Esta línea es para ver si están llegando los datos.
        
        //En este ciclo se preparan los diferentes elementos para el insert. Hay que recordar que los valores de los campos
        //deben venir en secuencia desde los formularios para que esto funcione. En s�, el formulario aportar�a toda la informaci�n
        //necesaria para que este código funcione, sin hacerle cambios.
        for( $i = 1; $i <= $total_campos; $i ++ )
        {
            if( $i >= $total_campos ) $caracter_separador = ""; //Quitamos la coma porque el �ltimo dato no debe llevarla.
            //echo $_GET[ 'dato'.$i ]."<br>"; //Esta l�nea se puede habilitar si se requieren ver los datos que est�n llegando.
                if($total_campos==5)
                {
                    if ($_GET['dato'.$i] == $_GET['dato5']) 
                        {
                            $valores .= $_GET[ 'dato5' ].$caracter_separador; 
                        }else{$valores .= "'".$_GET[ 'dato'.$i ]."'".$caracter_separador;
                            
                        }
                }else{$valores .= "'".$_GET[ 'dato'.$i ]."'".$caracter_separador;}
            
        }
    
        //Aquí se ejecuta la inserción de la información. Este código está en la clase BD.php
        echo $nuevo_objeto->guardar_informacion( $tabla, $campos, $valores, $archivo );}
        
    }
     //Si el nombre de la tabla se ha suministrado y el valor del campo para borrar, entonces se procederá a operar.
    if( isset( $_GET[ 'tabla' ] ) && isset( $_GET[ 'id_' ] ) && isset($_GET['method']) )
    {
        $tabla = $_GET[ 'tabla' ]; //Hay que traer la tabla para poder hacer el borrado.
        $id_o_valor_llave_primaria = $_GET[ 'id_' ]; //hay que trae el valor del campo que permitirá hacer el borrado.
        $archivo=$_GET['archivo'];
        include 'config.php';
        //Aquí se extrae el nombre del campo o llave primaria que permitirá, para este caso, hacer el borrado.
        //En otros casos el borrado puede depender de otros valores.
        if ($_GET['method']=="borrar") {
            $llave_primaria_tabla =$nuevo_objeto-> retornar_dato_tabla( "INFORMATION_SCHEMA.COLUMNS", "COLUMN_NAME", " TABLE_SCHEMA = '$bd' AND TABLE_NAME = '$tabla' AND COLUMN_KEY = 'PRI' " );
            echo $llave_primaria_tabla."<br>";
            echo $id_o_valor_llave_primaria."<br>";
        
        echo $nuevo_objeto-> borrar_datos( $tabla, " $llave_primaria_tabla = '$id_o_valor_llave_primaria' ",$archivo );
        }
       
        
    }
    if(isset($_GET['method']) && isset($_GET['tabla']) && isset($_GET['id'])) { 
     if($_GET['method']="actualizar"){
            $tabla=$_GET['tabla'];
            $id=$_GET['id'];
            
            $dato1=$_GET['dato1'];
            $dato2=$_GET['dato2'];
            $dato3=$_GET['dato3'];
            $dato4=$_GET['dato4'];
            $dato5=$_GET['dato5'];
            $dato6=$_GET['dato6'];
            $dato7=$_GET['dato7'];
            
           echo $nuevo_objeto->update($tabla,$id,$dato1,$dato2,$dato3,$dato4,$dato5,$dato6,$dato7);
        }
        }


 ?>