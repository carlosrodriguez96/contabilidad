var acumuladorApp = angular.module( 'acumuladorApp', [] );        
        acumuladorApp.controller( "acumuladorAppCtrl",           
            [ "$scope", "$http",
            function( $scope, $http )
            {	/**
				*Funcion que se encarga de enviar los datos al llamado-php.php
				*/
                $scope.cargar_datos_php=function()					                      
                {          //console.log($scope.lista.length);
		            		//alert('hola');
                            var totaldebito = 0; var totalCredito = 0;
                                                         var item1 = [];
                                                         
                                var valor_debito = document.getElementsByName("dato5[]");
                                var ar_inputflds = valor_debito.length;

                                for (var i = 0; i < ar_inputflds; i++) {
                                    item1.push(valor_debito[i].value);
                                    totaldebito = parseInt(totaldebito )+ parseInt(item1[i]) ;
                                }console.log(item1);
                                console.log(totaldebito);
                                
                                                         var item2 = [];
                                                        
                                var valor_credito = document.getElementsByName("dato6[]");
                                var ar_inputflds = valor_credito.length;

                                for (var i = 0; i < ar_inputflds; i++) {
                                    item2.push(valor_credito[i].value);
                                    totalCredito = parseInt(totalCredito) + parseInt(item2[i]) ;
                                }console.log(item2);
                                console.log(totalCredito);
                                if (totaldebito==totalCredito) { 
                                    $scope.resultado=document.getElementById('resultado').innerHTML="";
                                   document.getElementById('guardar').disabled= false;
                                   document.getElementById('validar').style.display = "none";
                                }

                                if(totaldebito>totalCredito) {var total= ( parseInt(totaldebito)-parseInt(totalCredito) );
                                    console.log(total);
                                 $scope.resultado=document.getElementById('resultado').innerHTML="los valores no estan iguales hay un descuadre en el Débito de "+total;
                             }

                                if(totaldebito<totalCredito) {var total= ( parseInt(totaldebito)-parseInt(totalCredito) ); total=total*-1;
                                    console.log(total);
                                 $scope.resultado=document.getElementById('resultado').innerHTML="los valores no estan iguales hay un descuadre en el Credito  de "+total;
                             }
                                

                                
         
                    }
		             
		             /**
					*Funcion que se encarga de realizar la consulta 
					*/
                    $scope.cuentas=function(){
                    	
                    	var busqueda=$scope.cuenta;
                        if (busqueda.value=="") {
                            document.getElementById('codigo').value="";
                        }else{
                            if(busqueda.length>0)
                            {
                                
                                                
                                $http.get('otros.php?busqueda=' + busqueda)
                                .then(
                                    
                                    //Funcion que se encarga de recibir la respuesta del php
                                    
                                    function (response) 
                                        {
                                            
                                            $scope.campos = response.data.records;
                                            
                                           var a= document.getElementById('codigo').value=$scope.campos[0].Descripcion;
                                           console.log(a+" Esta es la Descripcion");
                                            console.log('se realizo la consulta');
                                        }
                                    );
                                 
                                    console.log("valor que deberia llegar al php  "   + busqueda);  
                            }  
                        }
                        console.log(busqueda);
                    	 
                    }	
                    /**
					*Funcion que se encarga de enviar los datos del servidor y la base de datos al config.php
					*/
                   
                    }	
       				
		            		
		            		
		            	
					
            			
                    	

					
            	

                   


            

            ]
         );
function activar()
{
    
    document.getElementById('texto').readOnly=false;
    console.log('activar');
}
            
           
        
        
	
				