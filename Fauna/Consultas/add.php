<?php
include ('crud.php');
if(!empty($_POST['animal'])){

    $nombre = $_POST['animal'];
    
    $query = mysqli_query($conn,"INSERT INTO animales(nombre) VALUES ('$nombre')");
    
    if($query){
        header('location:index.php');
    }
  }
?>