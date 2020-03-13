<?php
session_start();

$embedCode = $_REQUEST["q"];
$playlist = $_REQUEST["j"];
echo $_SESSION["UserNameInput"];
echo $embedCode;
echo $playlist;
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
$var = "INSERT INTO `song_playlist`(`USERNAME`, `PLAYLIST_NAME`, `VIDEO_ID`) VALUES ('".$_SESSION["UserNameInput"]."','".$playlist."','".$embedCode."')";
echo $var;
if ($upload->query($var) === TRUE) {
    echo "true";
} else {
    echo "false";
}
$upload->close();

?>