<!DOCTYPE html>
<html lang="en">

<head>

</head>
<body>
<?php 

/* 
LEGAL (must be shown):
https://creativecommons.org/licenses/by-nc/3.0/

Unlisted:

http://hypem.com/feed/popular/3day/1/feed.xml
http://hypem.com/feed/popular/lastweek/1/feed.xml
http://hypem.com/feed/popular/noremix/1/feed.xml
http://hypem.com/feed/popular/remix/1/feed.xml
http://hypem.com/feed/popular/artists/1/feed.xml
http://hypem.com/feed/popular/videos
http://hypem.com/feed/popular/twitter/1/feed.xml

http://hypem.com/feed/latest/all/1/feed.xml
http://hypem.com/feed/latest/fresh/1/feed.xml
http://hypem.com/feed/latest/remix/1/feed.xml
http://hypem.com/feed/latest/noremix/1/feed.xml

Examples:

Works with any range
?fav_from=0&fav_to=25
?fav_from=500&fav_to=100000
http://hypem.com/feed/tags/acoustic/1/feed.xml?fav_from=500&fav_to=100000

*/
	$genre= $_GET["q"];
	$hypeMlink = "http://www.hypem.com/tags/".$genre;
	$hypemUrl = ("http://hypem.com/feed/tags/".$genre."/1/feed.xml");
	$hypem_feed = simplexml_load_file($hypemUrl);
?>

<!-- TODO:: show other hypem feeds-->
<script>
$("#elem").click(function()
{
    $("#placeToLoad").load("http://path/to/file");
}
</script>

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
  <h3> Information provided by <a href="<?php echo $hypeMlink; ?>" >The Hype Machine </a> for <?php echo $genre; ?> tags </h3>            
  <table class="table table-hover" width='100%'>
    <thead>
      <tr>
        <th>Song</th>
        <th>Listen</th>
      </tr>
    </thead>
	<tbody>
	<?php
	// style=\"width:'10px'\"
	$count = 0;
	foreach ( $hypem_feed->channel->item as $entry ) :
		echo "<tr class='entry'>";
		echo "<td class='col-xs-10'> ".$entry->title." </td>";
		echo "<td class='col-xs-2' onclick=\"loadSong('".$entry->title."')\";><a><i class='fa fa-play'></i></a></td>";
		echo '</tr>';
		$count += 1;
	endforeach;
	?>
	</tbody>
  </table>
</div>