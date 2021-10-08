<?php
include ('crud.php');
$result = mysqli_query($conn, 'SELECT * FROM register');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    .n{
        margin-top: 0px;
    }
</style>

 <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>
<div class="container justify-items-center n">
      <div class="row">
      <div class="col-xs-12 col-lg-3">
      <form action="add.php" method="POST">
      <h1 class="text-center"><strong>Productos</strong></h1>
      <br>
      <input type="text" required placeholder="Nombre" name="nombre" class="form-control">
      <input type="text" required placeholder="Apellido" name="apellidos" class="form-control">
      <input type="text" required placeholder="Nombre Mascota" name="nombmascota" class="form-control">
      <input type="text" required placeholder="Cuidados" name="cuidados" class="form-control">
      <input type="text" required placeholder="Telefono" name="telefono" class="form-control">
      <input type="text" required placeholder="Direccion" name="direccion" class="form-control">
      <input type="text" required placeholder="Correo" name="correo" class="form-control">
      <input type="text" required placeholder="Password" name="passmord" class="form-control">

      <br>
     <input type="submit" value="Agregar" class="btn btn-primary btn-block">
      </form>
      </div>
      <div class="col-xs-12 col-lg-8 p-3">
      <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nombre</th>
      <th scope="col">apellidos</th>
      <th scope="col">nombmascota</th>
      <th scope="col">cuidados</th>
      <th scope="col">telefono</th>
      <th scope="col">direccion</th>
      <th scope="col">Correo</th>
      <th scope="col">passmord</th>
      <th scope="col">Editar</th>
      <th scope="col">Eliminar</th>
    </tr>
  </thead>
  <tbody>
  <?php foreach($result as $row){ ?>
    <tr>
      <td><?php echo $row['ID']; ?></td>
      <td><?php echo $row['nombre'] ?></td>
      <td><?php echo $row['apellidos']; ?></td>
      <td><?php echo $row['nombmascota']; ?></td>
      <td><?php echo $row['cuidados']; ?></td>
      <td><?php echo $row['telefono']; ?></td>
      <td><?php echo $row['direccion']; ?></td>
      <td><?php echo $row['correo']; ?></td>
      <td><?php echo $row['passmord']; ?></td>
      <td><a href="edit.php?id=<?php echo $row['ID']?>" class="btn btn-primary">Editar</a></td>
    </tr>
        <?php }?>
  </tbody>
</table>



      </div>
      </div>
      </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</body>


</html>