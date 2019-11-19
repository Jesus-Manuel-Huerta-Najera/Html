<?php
$usuario = "root";
$contrasena = "root";
$servidor = "localhost";
$basededatos = "utec";

$conexion = mysqli_connect( $servidor, $usuario,$contrasena) or die ("No se ha podido conectar al servidor de Base de datos");
$db = mysqli_select_db( $conexion, $basededatos ) or die ( "Upps! Pues siempre no quizo conectar a la base de datos" );


$consulta = "select p.*,A.matricula,C.carrera  from persona as p  inner join alumno as A on p.curp = A.curp inner join carrera as C on A.cvCarrera = C.cvCarrera ;";
$resultado = mysqli_query( $conexion, $consulta ) or die ( "Algo ha ido mal en la consulta verificala");

echo "<table borde='2'>";
echo "<th>NOMBRE</th>";
echo "<th>carrrera</th>";
echo "</tr>";
while ($columna = mysqli_fetch_array( $resultado )){
echo "<tr>";
echo "<td>" . $columna['NOMBRE'] . "</td><td>" . $columna['carrera'] . "</td>";
echo "</tr>";
}
echo "</table>";

$consulta = "select distinct(c.carrera),(Select count(p.cvGenero) from Persona as p inner join alumno as a on p.curp=a.curp  where p.cvGenero= 02 and c.cvcarrera = a.cvcarrera  ) as M ,(Select count(p.cvGenero) from Persona as p inner join alumno as a on p.curp=a.curp  where p.cvGenero= 01 and c.cvcarrera = a.cvcarrera  ) as H from persona as p  inner join alumno as A on p.curp = A.curp inner join carrera as C on A.cvCarrera = C.cvCarrera inner join genero as g on g.cvgenero = p.cvgenero    ;";
$resultado = mysqli_query( $conexion, $consulta ) or die ( "Algo ha ido mal en la consulta verificala");

echo "<table borde='2'>";
echo "<th>Carrera</th>";
echo "<th>M</th>";
echo "<th>H</th>";
echo "</tr>";
while ($columna = mysqli_fetch_array( $resultado )){
echo "<tr>";
echo "<td>" . $columna['carrera'] . "</td><td>" . $columna['M'] . "</td><td>" . $columna['H'] . "</td>"  ;
echo "</tr>";
}
echo "</table>";




mysqli_close( $conexion );
?>