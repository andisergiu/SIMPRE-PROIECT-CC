<?php 
// DB credentials.
define('DB_HOST','localhost');
define('DB_USER','simptcpe_sergiu');
define('DB_PASS','zRig54tpr4JHX5D');
define('DB_NAME','simptcpe_etmsdb');
// Establish database connection.<!-- -->
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>