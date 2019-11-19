<html>
<body>
<?php
    $nombre = $_POST['Nombre']; 
?>
    <h1>Hola <b><?php echo $nombre ?></b></h1>

    <h1>Tablas de multiplicar</h1>
    <?php
    $inicio = $_POST['inicio'];
    $final = $_POST['final'];
  if($inicio > $final){
     for($i=$final;$i<=$inicio ;$i++) {
     for($y=0;$y<=10;$y++) {
         echo $i. ' * ' .$y. '= ';
             echo $i * $y;
          echo  "<br>"; 
     }
     echo  "<br>";  
 }  
        }else{
      
    for($i=$inicio;$i<=$final ;$i++) {
     for($y=0;$y<=10;$y++) {
         echo $i. ' * ' .$y. '= ';
             echo $i * $y;
          echo  "<br>"; 
     }
     echo  "<br>";  
 }
        }
   
    
?>
</body>
</html>