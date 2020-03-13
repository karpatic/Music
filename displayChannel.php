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
		
session_start();
$string= $_GET["q"];
$arr = explode(',', $string);
// echo gettype($), "\n";
$channelTitles = array();

// TODO:: iterate through array and load in songs.
$count = 0;	
foreach( $arr as $id) {
	// split channel display into update database and display image. 
	$channelurl = ("https://www.youtube.com/feeds/videos.xml?channel_id=".$id);
	$youtube_feed = simplexml_load_file($channelurl);
	$channelName .= $youtube_feed->title." <br> ";	// channel name
	// TODO:: a note
	// echo "<h1 align='middle';>".$channelName."</h1></br> \n";

	$channelTitle = $youtube_feed->title;
	array_push ($channelTitles, $channelTitle);
						
	foreach ( $youtube_feed->entry as $entry ) :
		$yt_namespace = $entry->children( 'http://www.youtube.com/xml/schemas/2015' );
		$media = $entry->children('http://search.yahoo.com/mrss/');

		$videoid = $yt_namespace->videoId; // videoID
		$channelid = $yt_namespace->channelId; //channelId
		$videotitle = $media->group->title;	//videotitle
		$search = "'";
		$replace = "''";
		$videoTitle = str_replace ( $search , $replace , $videotitle);
		$videopostdate = $entry -> published;		//videopostdate
		$postdate = (string)$videopostdate;
		$date = substr($postdate, 0, 10);
		$time = substr($postdate, 11,12);
		$time = substr($time, 0,8);
		$dateTime = $date." ".$time;
		$videopostdate = $dateTime;
		$videoupdate = $entry -> updated;		//videoupdate
		$postdate = (string)$videoupdate;
		$date = substr($postdate, 0, 10);
		$time = substr($postdate, 11,12);
		$time = substr($time, 0,8);
		$dateTime = $date." ".$time;
		$videoupdate = $dateTime;
		$attrs = $media->group->thumbnail[0]->attributes();		
		$thumbnail = $attrs['url']; 	// thumbnail
		$description = $media->group->description;	// description
		$attrs = $media->group->content->attributes();
		$watch = $attrs['url']; 	//video url
		$attrs = $media->group->community->statistics->attributes();
		$viewCount = $attrs['views'];	// views
		$attrs = $media->group->community->starRating->attributes();
		$rateCount = $attrs['count'];	//rating count
		$rating = $attrs['average'];  // rating
		
		$var = "INSERT INTO `songs`(`Video_ID`, `Channel_ID`, `Video_Title`, `Video_Count`, `Video_Views`, `Video_Rating`, `Video_Published`, `Video_Updated`) VALUES ('". $videoid ."','". $channelid ."','". $videoTitle ."','". $rateCount ."','". $viewCount ."','". $rating ."','". $videopostdate ."','". $videoupdate ."')";
		$upload->query($var);		/*
		if ($upload->query($var) === TRUE) {
			echo \"true\";
		} else {
			echo \"<br>\";
			echo \"$var\";
			//echo \"false\";
		}
		onclick='uploadSong(this);'
		*/
		
		$titles .=  
		"<div href='javascript:;' 
		onmouseover='disapearImg(this)'
		onmouseout='showImg(this)'
		onclick='bigImg(this);'
		class='col-xs-6 col-md-4 col-lg-3 collapsed box'		
		vidId='".$videoid."' 
		vidTitle='".$media->group->title."'
		count='".$count."'
		style='border: 2px solid black;'>
			<img src='".$thumbnail."'>
			<div class='displaySongInfo'> 
				<p>
					<br>
					<br>
					<br>
					<br>
					<br>
					<span><button onclick='childCallback(event); uploadSong(this);'> Play Now </button></span>
					<span><button> Next </button></span>
					<span><button> Save </button></span>
				</p>
				<p style='visibility: hidden'> 
					<span>
					Views: ".$viewCount."
					<br>
					Rating:". $rating."
					</span>
				</p>
				
			</div>

			<div class='details'>
				<p>
					<span>".$media->group->title."</span>
				</p>
			</div>
		</div>
		";
		$count = $count + 1;
	endforeach;
}
$upload->close();

/*
<div id='songInfo\".$count.\"' 
						style='overflow: auto;'
						class='collapse in'
						aria-expanded='true'> 
						hello
					</div>
					*/

?>

<div class="row">
	<div class="col-lg-12">
		<h1>
			Channels
			<small>options</small>
			
		</h1>
		<ol style="margin-bottom: 0px; background-color:#222; padding:10px 15px; border-radius: 5px 5px 0px 0px; width:100%; color:#ccc;" class="breadcrumb">
			<i class="fa fa-th-list"></i> Channels
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