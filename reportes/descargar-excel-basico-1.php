<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">
<?php

$nombre_archivo = "reporte1";
 $tbHtml="";
        $sql = "SELECT * FROM vista_informe_au";
        // echo $sql;

          $conexion = mysqli_connect( "localhost", "root", "", "bd_cuentas" );
         $resultado = $conexion->query( $sql );

           $tbHtml .= "<table class='table table-bordered' style='border:1px;'>

          <thead >
              <tr>
               <th>Código</th><th>Cuenta</th><th>Saldo</th><th>".utf8_decode('Débito')."</th><th>Credito</th><th>total</th>
              </tr>
            </thead>
      ";
        
      if( mysqli_num_rows( $resultado ) > 0 )
{  

      while( $fila = mysqli_fetch_array( $resultado ) )
      {
         $tbHtml .= "<tr>";

         $tbHtml .= "<td>".$fila[ 0 ]."</td>"; 
         $tbHtml .= "<td>".utf8_decode($fila[ 1 ])."</td>";
         $tbHtml .= "<td></td>";
         $tbHtml .= "<td>".$fila[ 3 ]."</td>";
         $tbHtml .= "<td>".$fila[ 4]."</td>";
         $tbHtml .= "<td>".$fila[ 5]."</td>";
          /*for( $i = 0; $i < mysqli_num_fields( $resultado ); $i ++ )
           $tbHtml .= "<td>".$fila[ $i ]."</td>"; //Este es el dato impreso*/
            
          //El borrado de un dato se hará por llave primaria. Debería ser el primer campo de la tabla.
          

         $tbHtml .= "</tr>";
      }
}
       $tbHtml .= "</table>
       </div>
        </div>";

      //echo   $tbHtml; 


header("Content-type: application/octet-stream");
header("Content-Disposition: attachment; filename=".$nombre_archivo.".xls");
header("Pragma: no-cache");
header("Expires: 0");
echo $tbHtml;


?>