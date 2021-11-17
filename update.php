<?php
include("./inc/settings.php");
validar();
?>
<?php

$query="SELECT column1, column2, column3, column4, column5 FROM table1 WHERE column1 = ".$_POST['colum1'].";";


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$stmt = $conn->prepare($query);
$stmt->bind_param(":column1", $column1GET);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$stmt->execute();
if ($stmt->num_rows() > 0){
      $row = $result->fetch_assoc();
      
      
      ?>
      <form action="update2.php" method="POST">
      <fieldset>
<legend>Cambie la información del registro.</legend>
  Id: <input type="number" name="identificador" id="" value="<?= $row['column1'] ?>" readonly><br>
  Nombre: <input type="text" name="nombre" id="" value="<?= $row['column2'] ?>"><br>
  Fecha: <input type="date" name="fecha" id="" value="<?= $row['column3'] ?>"><br>
  Numero: <input type="number" name="numero" id="" value="<?= $row['column4'] ?>"><br> 
  Num.Double: <input type="double" name="numdouble" id="" value="<?= $row['column5'] ?>"><br>
  <br>
  <input type="submit" value="Modificar"><br> 
</fieldset>
    </form>
      <?php
    }
}else{
    echo "Algo salio mal <a href='https://localhost/crud/crud.php'> clic aqui para volver al crud</a>" ;
    
}


?>
