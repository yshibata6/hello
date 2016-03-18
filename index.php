<?php
echo "<h1>Welcome OpenShift!!</h1>\n";

$mysqli = new mysqli(getenv("HELLO_PHP_MYSQL_SERVICE_HOST"), getenv("MYSQL_USER"), getenv("MYSQL_PASSWORD"), getenv("MYSQL_DATABASE"));
if ($mysqli->connect_error) {
    exit($mysqli->connect_error);
} else {
    $mysqli->set_charset("utf8");
}
$result = $mysqli->query("select 1") or exit($mysqli->error());
echo var_dump($result->fetch_assoc());
$mysqli->close();

echo "<br><a href=\"./subsystem01.php\">subsystem01</a><br>\n";
echo "<br><a href=\"./subsystem02.php\">subsystem02</a><br>\n";

?>

