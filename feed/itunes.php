<!--
//	Purpose: Load up Itunes Genres
//	Functions: loadItunes - requests feed
//	Inputs: Itunes Top_Selling_Id and Genre
//	Outputs: None
-->

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
	echo "<h4 style='color:white;'> Itunes </h4>";
	$itunesGenres = $upload->query("SELECT `GENRE`, `MUSIC_VIDEO_ID`, `TOP_SELLING_ID` FROM `itunes_chart_id`");
	while($row = $itunesGenres->fetch_assoc()) { 
		echo "- <a onclick=\"loadItunes('".$row['TOP_SELLING_ID']."')\">".$row['GENRE']." </a>";
	}
	
?>
</div>