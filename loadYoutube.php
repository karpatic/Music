<!DOCTYPE html>
<html lang="en">
<head>

</head>
<body>

</body>

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
	<h3> Youtube Channels </h3>                     
		<table class="table table-hover" width='100%'>
			<thead>
				<tr>
					<th>Song</th>
					<th>Listen</th>
					<th>Subscribe</th>
				</tr>
			</thead>
			<tbody>
			<?php
			include 'dbConnect.php';
			$channelInfo = $mysqli->query("SELECT `Channel_Name`, `Channel_ID` FROM `youtube_channel`");
			if ($channelInfo->num_rows > 0) {
				while($row = $channelInfo->fetch_assoc()) { 
					echo "<tr class='entry'>";
					echo "<td class='col-xs-8'> ".$row['Channel_Name']." </td>";
					echo "<td class='col-xs-2' onclick=\"loadSongs('".$row['Channel_Name']."')\";><a><i class='fa fa-play'></i></a></td>";
					echo "<td class='col-xs-2' onclick=\"subscribe('".$row['Channel_ID']."','".$row['Channel_Name']."')\";><a>Subscribe</a></td>";
					echo '</tr>';
				}
			}
			?>
			</tbody>
		</table>
</div>