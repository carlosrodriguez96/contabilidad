<!DOCTYPE html>
<html ng-app="acumuladorApp"><!--Hay que observar que aquí se inicia el ng-app-->
<head>
    <title>Ej de AngularJS</title>
    <!-- Importar el js que se ha descargado del sitio de angular, no la última versión. -->
    <script src="js/angular.min.js"></script>
     <script src="js/codigo.js"></script>
     <?php include_once("analyticstracking.php") ?>
</head>
<body>

    <h1>Programa que calcula el peso de una persona</h1><h3>con AngularJs</h3>
    <!-- Este div se convierte en parte de la aplicación o del contexto de ese controlador -->

    <label><strong>Nombre</strong></label><br>
        <input type="text" placeholder="Ingrese su nombre"> <br><br>
    <label><strong>Peso en Kilos</strong></label>
        <div ng-controller="acumuladorAppCtrl">
    <input type="text" ng-model="dato1" ng-change="cargar_datos()" placeholder="Ingrese su peso"> <br><br>
        <label><strong>Genero</strong></label>
     <select ng-model="dato2" ng-change="cargar_datos()">
            <option>Seleccione Genero</option>
            <option>Masculino</option>
            <option>Femenino</option>
        </select>
        <hr>
        
        <p>
            <img src="img/{{ resultado1 }}"> <strong>{{resultado2}}</strong>
        </p>
       
        
    </div>
    

</body>
</html>