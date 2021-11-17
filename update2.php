<?php 
include("./inc/settings.php");
validar();
?>
<?php 
    $nombre = $_POST['nombre'];
    $fechaPOST = $_POST['fecha'];
    $numPOST = $_POST['numero'];
    $numdoubPOST = $_POST['numdouble'];
    $idPOST = $_POST['identificador'];
    $query = "UPDATE table1 SET column2 = ':nombre', column3 = ':fecha', column4 = :numero, column5 = :numdouble WHERE column1 = :id;";


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$stmt = $conn->prepare($query);
$stmt->bind_param(":id", $idPOST);
$stmt->bind_param(":nombre", $nombre);
$stmt->bind_param(":fecha", $fechaPOST);
$stmt->bind_param(":numero", $numPOST);
$stmt->bind_param(":numdouble", $numdoubPOST);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$stmt->execute();
if ($stmt->num_rows() > 0){
    header("location:crud.php");
}else{
    echo "Algo salio mal <a href='https://localhost/crud/crud.php'> clic aqui para volver al crud</a>" ;

}
?>
