<?php

$DB_HOST ="rm-l4vt38p6e8z01044bso.mysql.me-central-1.rds.aliyuncs.com";
$DB_USER ="gpro";
$DB_PASSWORD = "lina@1997";
$DB_DATABASE = "probloodbank";


$con = mysql_connect ($DB_HOST, $DB_USER, $DB_PASSWORD) :
if (!$con) {
    die('Failed to connect to server: ' . mysql_error()):
}

$db = mysql_select_db($DB_DATABASE);
mysql_query("SET CHARACTER SET 'utf-8 ", $con);
if (!$db) {
    die ("Unable to select database");
}
?>