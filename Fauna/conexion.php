<?php
	$nombre=$_POST['nombre'];
    $passmord=$_POST['passmord'];

session_start();
$_SESSION['nombre']=$nombre;

include('./db.php');

$consulta = "SELECT*FROM register where nombre='$nombre' and passmord='$passmord'";
$resultado= mysqli_query($conn, $consulta);

$filas=mysqli_num_rows($resultado);

if($filas){
    header("location:./Tienda-masc/index.html");
}else{
    ?>
    <?php
    include("Error.php");
    ?>
   
    <?php
}
mysqli_free_result($resultado);
mysqli_close($conn);

