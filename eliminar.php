<?php
include("./inc/settings.php");
validar();
?>
<?php

$id=$_POST['colum1'];
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$stmt = $conn->prepare($query);
$stmt->bind_param(":id", $id);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$stmt->execute();
if ($stmt->num_rows() > 0){
    header("location:crud.php");
}else{
    echo "Algo salio mal <a href='https://localhost/crud.php'> clic aqui para volver al crud</a>" ;

}

?>
