<!--
//	Purpose: Load up Billboards Options
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
	$billboardGenres= $upload->query("SELECT `genre`, `award` FROM `billboard_id`");
	$oldGenre = 'hello';
	echo "<h4 style='color:white;'> Billboard </h4>";
	echo "
		<ul style='background-color:#222; border-radius: 5px 5px 0px 0px; width:100%;' class='nav nav-tabs'>
	";
	// loop through the array to display available xml
	while($row = $billboardGenres->fetch_assoc()) { 
	$award = str_replace("-songs","",$row['award']);
		if ($row['genre'] != $oldGenre) {
			// Display Genre
			echo "<li style='width:50%;'><a onclick=\"loadBillboard('".$row['award']."','".$row['genre']."')\">".$row['genre']."</a></li>";
			// Display Awards
			// echo "<a onclick=\"loadBillboard('".$row['award']."','".$row['genre']."')\">".$award.", </a> ";
			/*

			echo "
			<div class='tab-content'>
				<div id='menu".$row['award']."' class='tab-pane fade'>
					".$row['award']."
				</div>
			</div>
			"; */
		}
		else{

		}
		$oldGenre = $row['genre'];
	}
	echo "</ul>";
?>

</div>
</body>