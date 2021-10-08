<?php
$servername = "localhost";
$database = "Fauna_Pets";
$username = "root";
$password = "";

$conn = mysqli_connect($servername, $username, $password, $database);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

echo "Connected successfully";
$nombre = $_POST['nombre'];
$apellidos = $_POST['apellidos'];
$nombmascota = $_POST['nombmascota'];
$cuidados = $_POST['cuidados'];
$telefono = $_POST['telefono'];
$direccion = $_POST['direccion'];
$correo = $_POST['correo'];
$passmord = $_POST['passmord'];

$sql = "INSERT INTO register (nombre, apellidos, nombmascota, cuidados, telefono, direccion, correo, passmord) VALUES ('$nombre', '$apellidos', '$nombmascota', '$cuidados', '$telefono', '$direccion', '$correo', '$passmord')";
if (mysqli_query($conn, $sql)) {
      echo "New record created successfully";
} else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
header("location: /Fauna_Localhost/Tienda-Masc/index.html");
?>