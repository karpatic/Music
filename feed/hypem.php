<!--
//	Purpose: Load up Hype M Genres
//	Functions: loadBillboard - requests feed
//	Inputs: Billboard Award and Genre
//	Outputs: None
-->

<!DOCTYPE html>
<html lang="en">
<head>

</head>
<body>
	<div class='well' style="background:#222;">
<?php
// initalize db and make queries here
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
	$hypeMGenres = $upload->query("SELECT `genre` FROM `hype_ids`");
	$oldGenre = 'hello';
	//echo "<select>";
	while($row = $hypeMGenres->fetch_assoc()) { 
		echo "- <a onclick=\"loadHypeM('".$row['genre']."')\">".$row['genre']." </a>";
	}
	//echo "</select>";
?>
	</div>
</body>