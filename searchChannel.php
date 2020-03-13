<?php
// get the q parameter from URL
$name = $_REQUEST["q"];

echo "<!-- Search --><li href='#'>
					<i	class='fa fa-fw fa-search'></i> 
					<input	class='form-search-field'
						id = 'channelSearch'
						value='".$name."'
						style='color:black' 
						type='text'  
						onkeyup='searchChannel(this.value)'/>
				</li>";

/* echo "<li data-toggle=\"modal\" data-target=\"#createChannelPlaylist\"><i class='fa fa-fw fa-plus'></i>Import Channel </li>";
echo "<li onclick= \"displayChannel(this);\"><i class='fa fa-fw fa-plus'></i>Display Selections </li>"; */

include 'dbConnect.php';
$var = "SELECT `USERNAME`, `CHANNEL_ID`, `CHANNEL_NAME` FROM `subscription` WHERE `CHANNEL_NAME` LIKE '%".$name."%'";

$Query = $mysqli->query($var);
if ($Query->num_rows > 0) {
	while($row = $Query->fetch_assoc()) {
		if (in_array($row['CHANNEL_ID'], $jsAr)) {
			echo "<li class='channelCheck' chanId='".$row['CHANNEL_ID']."' chanName='".$row['CHANNEL_NAME']."' onclick= \"displayChannel(this);\" ><i id='channelButton' class='fa fa-check-square-o' style=\"background-color:#347;\" onclick= 'childCallback(event); toggleChannel(this);' ></i> ".$row['CHANNEL_NAME']."</li>"."\n" ;
		}
		else{
			echo "<li class='channelCheck' chanId='".$row['CHANNEL_ID']."' chanName='".$row['CHANNEL_NAME']."' onclick= \"displayChannel(this);\" ><i id='channelButton' class='fa fa-square-o' onclick= 'childCallback(event); toggleChannel(this);' ></i> ".$row['CHANNEL_NAME']."</li>"."\n" ;
		}
	}
}
?>