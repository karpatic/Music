<?php 
session_start();

$string= $_GET["q"];


include 'dbConnect.php'; 

$songQuery = $mysqli->query("SELECT `USERNAME`, `PLAYLIST_NAME` FROM `playlists` WHERE `USERNAME` LIKE '".$_SESSION["UserNameInput"]."'");

echo "<li><a data-toggle='modal' data-target='#createPlaylist'><i class='fa fa-fw fa-plus'></i> Create Playlist</a></li>";

$exists = 'false';
if ($songQuery->num_rows > 0) {
	echo "\n";
	while($row = $songQuery->fetch_assoc()) {
		if ($row['PLAYLIST_NAME'] == $string){
			$exists = 'true';
			//echo '<li><a>Playlist Exists </a></li>';
		}
		else {
		echo "
			<li>
			<a onclick= displayPlaylist('".$row['PLAYLIST_NAME']."');
				userName='".$row['USERNAME']."' 
				playlistName='".$row['PLAYLIST_NAME']."'
				>
				".$row['PLAYLIST_NAME']."
				</a>
			</li>"."\n";
		}
							
	}
}

$var = "INSERT INTO `playlists`(`USERNAME`, `PLAYLIST_NAME`) VALUES ('".$_SESSION["UserNameInput"]."', '".$string."')";
if ($exists == 'false'){
	if ($mysqli->query($var) === TRUE) {
		echo "<li>
			<a onclick= displayPlaylist('".$row['PLAYLIST_NAME']."');
			userName='hello' 
			playlistName='".$string."'
			>
				".$string."
			</a>
		</li>"."\n";
	}
	else {

		echo '<li><a>Could not update</a></li>';
	}
}
else {
	echo '<li><a>Close and Open Playlist Menu</a></li>';
}

?>
