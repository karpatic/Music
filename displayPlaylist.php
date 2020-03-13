<?php 
session_start();
$string= $_GET["q"];
include 'dbConnect.php'; 

$songQuery = $mysqli->query("SELECT `USERNAME`, `PLAYLIST_NAME`, `VIDEO_ID` FROM `song_playlist` WHERE `Playlist_Name` LIKE '".$string."'");
?>

<div class="row">
	<?php
	if ($songQuery->num_rows > 0) {
		$counter = 0;
		while($row = $songQuery->fetch_assoc()) {
			$channelurl="https://www.youtube.com/oembed?url=http%3A//youtube.com/watch%3Fv%3D".$row['VIDEO_ID']."&format=xml";
			$youtube_feed = simplexml_load_file($channelurl);
			$songTitle = $youtube_feed->title;
			$thumbnail = $youtube_feed->thumbnail_url;

			$titles .=  
			"
			<div href='javascript:;' 
				onmouseover='disapearImg(this)'
				onmouseout='showImg(this)'
				onclick='bigImg(this);'
				class='col-xs-6 col-md-4 col-lg-3 collapsed box'
				vidId='".$row['VIDEO_ID']."'
				vidTitle='".$songTitle."'
				count='".$counter."'
				style='border: 2px solid black;'>
				<img src='".$thumbnail."'>
				<div class='displaySongInfo'> 
					<p>
						<br>
						<br>
						<br>
						<br>
						<br>
						<span><button onclick='childCallback(event); playPlaylist(".$counter.");'> Play Now </button></span>
						<span><button> Next </button></span>
						<span><button> Save </button></span>
					</p>
					<p style='visibility: hidden'> 
						<span>
						some information
						</span>
					</p>
				</div>
				<div class='details'>
					<p>
						<span>".$songTitle."</span>
					</p>
				</div>
			</div>
			";
			
			$counter = $counter +1;			
		}
	}?>
	
<div class='row'>
	<div class="col-lg-12">
		<h1>
			<?php echo $string; ?>
			<small>options</small>
			
		</h1>
		<ol style="margin-bottom: 0px; background-color:#222; padding:10px 15px; border-radius: 5px 5px 0px 0px; width:100%; color:#ccc;" class="breadcrumb">
			<i class="fa fa-th-list"></i> Playlist
			<?php 
				$channelListTitle = '';
				$channelListTitleLength = count($channelTitles);
				for ($x = 0; $x <= count($channelTitles)-1; $x++) {
					echo '<li>'.$channelTitles[$x].'</li>';
				}
				echo $channelListTitle;
			?>
		</ol>
		<div style="margin-top: 0px; padding-bottom: 0px;" class="page-header"> </div>
	</div>
</div>
<!-- /.row -->
<?php echo $titles; ?>
