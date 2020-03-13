<?php 
//	Purpose:
//	Inputs:
//	Outputs:

session_start();

// create playlist load playlist
echo "<!-- Search --><li href='#'>
					<i	class='fa fa-fw fa-search'></i> 
					<input	class='form-search-field'
						id = 'playlistSearch'
						placeholder='Search'
						style='color:black' 
						type='text'  
						onkeyup='searchPlaylist(this.value)'/>
				</li>";
echo "<li><a data-toggle='modal' data-target='#createPlaylist'><i class='fa fa-fw fa-plus'></i> Create Playlist</a></li>";
include 'dbConnect.php'; 
$sql = "SELECT `USERNAME`, `PLAYLIST_NAME` FROM `playlists` WHERE `USERNAME` LIKE '".$_SESSION["UserNameInput"]."'";
$songQuery = $mysqli->query($sql);
//echo "<li><a>".$sql."</a></li>\n";


if ($songQuery->num_rows > 0) {
	echo "\n";
	while($row = $songQuery->fetch_assoc()) {
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

