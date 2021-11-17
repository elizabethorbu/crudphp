<?php
include("./inc/settings.php");

$username = $_POST['username'];
$pass = $_POST['pwd'];
$query="SELECT * FROM usuarios WHERE numero_de_empleado = ':username' AND pass= ':pwd'";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$stmt = $conn->prepare($query);
$stmt->bind_param(":username", $username);
$stmt->bind_param(":pwd", $pwd);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$stmt->execute();
if ($stmt->num_rows > 0) {
  
  // output data of each row
  $row = $result->fetch_assoc();
 
  session_start();
  $_SESSION["nombre"] = $row["nombre"];
  $_SESSION["apellido1"] = $row["apellido1"];
  $_SESSION["apellido2"] = $row["apellido2"];

  header("location: crud.php");

} else {
  echo "Se detecto un acceso ilegal al sistema, su ip esta siendo monitoreada y sera enviada a la policia";
  ?>
  <a href="http://localhost/crud/">Sitio de login</a>
  <?php
}
$conn->close();

?>
