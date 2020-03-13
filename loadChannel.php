<?php 
include 'dbConnect.php';
$channelInfo = $mysqli->query("SELECT `USERNAME`, `CHANNEL_ID`, `CHANNEL_NAME` FROM `subscription` WHERE `USERNAME` = '".$_SESSION["UserNameInput"]."'");

echo "<!-- Search --><li href='#'>
					<i	class='fa fa-fw fa-search'></i> 
					<input	class='form-search-field'
						id = 'channelSearch'
						placeholder='Search' 
						style='color:black' 
						type='text'  
						onkeyup='searchChannel(this.value)'/>
				</li>";
/* echo "<li data-toggle=\"modal\" data-target=\"#createChannelPlaylist\"><i class='fa fa-fw fa-plus'></i>Import Channel </li>";
echo "<li onclick= \"displayChannel(this);\"><i class='fa fa-fw fa-plus'></i>Display Selections </li>"; */
if ($channelInfo->num_rows > 0) {
	echo "\n";
	while($row = $channelInfo->fetch_assoc()) { 
		echo "<li class='channelCheck' chanId='".$row['CHANNEL_ID']."' chanName='".$row['CHANNEL_NAME']."' onclick= \"displayChannel(this);\" ><i id='channelButton' class='fa fa-square-o' onclick= 'childCallback(event); toggleChannel(this);' ></i> ".$row['CHANNEL_NAME']."</li>"."\n" ;
	}
}
?>