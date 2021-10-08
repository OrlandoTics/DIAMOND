<?php
	
	$servername = "localhost";
$database = "id16718710_fauna_pets";
$username = "id16718710_proyect";
$password = "@qIb9sz&q&%-p-d7";

    $con = mysqli_connect($servername, $username, $password, $database);
    if (!$con) {
        die("Connection failed: " . mysqli_connect_error());
    }
?>
