<?php 
//	Purpose:
//	Inputs:
//	Outputs:

session_start();

// Save to playlist
echo "<li class='active'><a>Save To</a></li>";
include 'dbConnect.php'; 
$sql = "SELECT `USERNAME`, `PLAYLIST_NAME` FROM `playlists` WHERE `USERNAME` LIKE '".$_SESSION["UserNameInput"]."'";
$songQuery = $mysqli->query("SELECT `USERNAME`, `PLAYLIST_NAME` FROM `playlists` WHERE `USERNAME` LIKE '".$_SESSION["UserNameInput"]."'");
//echo "<li><a>".$sql."</a></li>\n";


if ($songQuery->num_rows > 0) {
	echo "\n";
	while($row = $songQuery->fetch_assoc()) {

		echo "
			<li>
				<a onclick= saveToPlaylist('".$row['PLAYLIST_NAME']."');
				userName='".$row['USERNAME']."' 
				playlistName='".$row['PLAYLIST_NAME']."'
				>
				".$row['PLAYLIST_NAME']."
				</a>
			</li>"."\n";
	}
}
