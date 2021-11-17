<?php
include("./inc/settings.php");
validar();


$identificador=$_POST ['identificador'];
$nombre=$_POST ['nombre'];
$fecha=$_POST ['fecha'];
$numero=$_POST ['numero'];
$numdouble=$_POST ['numdouble'];

$query="INSERT INTO table1 (column1, column2, column3, column4, column5) VALUES ($identificador, '$nombre', '$fecha', $numero, $numdouble);";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$stmt = $conn->prepare($query);
$stmt->bind_param(":id", $identificador);
$stmt->bind_param(":nombre", $nombre);
$stmt->bind_param(":fecha", $fecha);
$stmt->bind_param(":numero", $numero);
$stmt->bind_param(":numdouble", $numdouble);
$stmt->execute();
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

if ($stmt->num_rows() > 0){
    header("location:crud.php");
}
else{
    echo "Algo salio mal <a href='https://localhost/crud.php'> clic aqui para volver al crud</a>" ;
}

?>
