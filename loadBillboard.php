<!-- index.php is a reference to loadExplorer
// This file is called from loadExplorer
// inputs are the award
-->
<!DOCTYPE html>
<html lang="en">
<head>



</head>
<body>
<?php 
	$award= $_GET["q"];
	// split channel display into update database and display image. 
	$billboardLink = "http://www.billboard.com/charts/".$award;
	$billboardurl = ("http://www.billboard.com/rss/charts/".$award);
	$billboard_feed = simplexml_load_file($billboardurl);
?>

<div class='well'>
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

$billboardGenres= $upload->query(
"SELECT `genre`, `award` FROM `billboard_id` WHERE `genre` = (SELECT `genre` FROM `billboard_id` WHERE `award` = '".$award."') "
);

echo "<h4> Awards </h4>";
$counter = 0;
while($row = $billboardGenres->fetch_assoc()) {
	$counter += 1;
	echo $counter.") <a onclick=\"loadBillboard('".$row['award']."','".$row['genre']."')\"> ".$row['award']." </a><br>";

}
?>

</div>


<!-- <link rel="stylesheet" type="text/css" href="design.css"> -->
<style>
.tableDisplay{
	background:black; 
	color:white; 
	opacity:0.8;
}
.entry:hover {
	background:white; 
	color:black; 
	opacity:0.8;
}
</style>
<div class="tableDisplay" class="col-lg-12">
  <h3> Searching <a href="<?php echo $billboardLink; ?>" > Billboard </a> for top <?php echo $award; ?> </h3>         
  <table class="table table-hover" width='100%'>
    <thead>
      <tr>
        <th>This Week</th>
        <th>Last Week</th>
        <th>Artist</th>
        <th>Song</th>
        <th>Listen</th>
      </tr>
    </thead>
	<tbody>
	<?php
	// style=\"width:'10px'\"
	$count = 0;
	foreach ( $billboard_feed->channel->item as $entry ) :
		echo "<tr class='entry'>";
		echo "<td class='col-xs-1'> ".$entry->rank_this_week." </td>";
		echo "<td class='col-xs-1'> ".$entry->rank_last_week." </td>";
		echo "<td class='col-xs-4'>".$entry->artist."</td>";
		echo "<td class='col-xs-5'> ".$entry->chart_item_title."</td>";
		echo "<td class='col-xs-1' onclick=\"loadSong('".$entry->artist." - ".$entry->chart_item_title."')\";><a><i class='fa fa-play'></i></a></td>";
		echo '</tr>';
		$count += 1;
		
		//echo $count.") <a onclick=\"loadSong('".$entry->artist." - ".$entry->chart_item_title."')\";>".$entry->artist." - ".$entry->chart_item_title.'</a><br>';
		/*
			echo 'Artist: '.$entry->artist;
			echo ' Title: '.$entry->chart_item_title;
			echo ' Rank: '.$entry->rank_this_week;
			echo ' From: '.$entry->rank_last_week;
			echo ' Date: '.$entry->pubDate;
			echo "<br>";
		*/
	endforeach;
	?>
	</tbody>
  </table>
</div>
</body>