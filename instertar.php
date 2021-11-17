<?php

$safeprint = htmlspecialchars(json_encode($_POST));
print($safeprint);

?>
