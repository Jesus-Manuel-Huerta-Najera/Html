<html>
<head>
<title>Crear Base de datos con php</title>
</head>
<body>
<?php
$usuario = "root";
$contrasena = "root";
$servidor = "localhost";
$conexion = mysqli_connect( $servidor, $usuario,$contrasena) or die ("No se ha podido conectar al servidor de Base de datos");

$res = ('SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA;');
$resultado = mysqli_query( $conexion, $res ) or die ( "Algo ha ido mal en la consulta verificala");

echo "<table borde='2'>";
echo "<th>Bases de datos</th>";
while ($columna = mysqli_fetch_array( $resultado )){
echo "<tr>";
echo "<td>" . $columna['SCHEMA_NAME'] . "</td>"  ;
echo "</tr>";
}
?>
<form name="Prueba" action="crearbd.php" method="GET">
<center>
<p>Nombre de la base nueva:</p>
<input type="text" name="Nombre"id="escribe" value="" >
<br>
    <button type="submit" >Enviar</button>
    <button type="reset" >Restablecer</button>
    <br>
    <a href="javascript:location.reload()">Recargar página</a>
</center>
</form>
<?php
$usuario = "root";
$contrasena = "root";
$servidor = "localhost";
$conexion = mysqli_connect( $servidor, $usuario,$contrasena) or die ("No se ha podido conectar al servidor de Base de datos");
$nombre = $_GET['Nombre']; 
unset($columna);
    $sql = "CREATE DATABASE $nombre";
    if($conexion->query($sql) === true){
        
        echo "Base de datos creada correctamente...";
    }else{
 //   die("Error al crear base de datos: " . $conexion->error);
    }       
   ?>
</body>
</html>