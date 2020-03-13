<?php
session_start();

$CHANNEL_ID = $_REQUEST["q"];
$CHANNEL_NAME = $_REQUEST["j"];

// Initalize db and make queries here
error_reporting(E_ERROR | E_PARSE);
// grabs local host
$servername = "localhost";
$username = "root";
$password = "";
$db_name = "music";
$upload = new mysqli($servername, $username, $password, $db_name);
if ($upload->connect_errno) {
	echo "false";
}

// only update if not in subscription
$usersChannels = "SELECT `USERNAME`, `CHANNEL_ID`, `CHANNEL_NAME` FROM `subscription` WHERE `CHANNEL_ID` = '".$CHANNEL_ID."' AND `USERNAME` = '".$_SESSION["UserNameInput"]."'";
$var = "INSERT INTO `subscription`(`USERNAME`, `CHANNEL_ID`, `CHANNEL_NAME`) VALUES ('".$_SESSION["UserNameInput"]."','".$CHANNEL_ID."','".$CHANNEL_NAME."')";

$subscriptionSQL = $upload->query($usersChannels);
if ($subscriptionSQL->num_rows > 0) {
    echo "true";
} else {
	echo 'false';
    $upload->query($var);
}
$upload->close();

?>