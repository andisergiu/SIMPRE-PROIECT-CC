<?php 
// DB credentials.
define('DB_HOST','sql113.infinityfree.com:3306');
define('DB_USER','if0_36520915');
define('DB_PASS','MBdrdllEVFx');
define('DB_NAME','if0_36520915_etmsdb');
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