<?php 

// include 'dbConnect.php'; 

$string= $_GET["q"];

$var = "INSERT INTO `itunes_chart_id`(`GENRE`, `MUSIC_VIDEO_ID`, `TOP_SELLING_ID`) VALUES".$string;
if ($mysqli->query($var) === TRUE) {
	echo $string."<br>";
}
else {
	echo '<li>Could not update</li>';
}






/*
include 'dbConnect.php'; 

$string= $_GET["q"];
$string = explode(" ", $string);
//echo $string[0];
foreach ($string as &$value) {
	$var = "INSERT INTO `billboard_id`(`genre`, `award`) VALUES ('ALL TIME GREATEST','".$value."')";
	echo $var;
	if ($mysqli->query($var) === TRUE) {
		echo "".$var."<br>";
	}
	else {
		echo '<li>Could not update</li>';
	}
}


ITUNES

//You could use JSON.stringify(array) to encode your array in JavaScript,
// and then use $array=json_decode($_POST['jsondata']); in your PHP script
// to retrieve it.
//$array = json_decode($_GET["q"]);
//echo $array[0];
include 'dbConnect.php'; 

$string= $_GET["q"];
$string = explode(" ", $string);
//echo $string[0];
foreach ($string as &$value) {
	
	//format each entry
	$value = str_replace("_"," ",$value);
	$var = "INSERT INTO `hype_ids`(`genre`) VALUES ('".$value."')";
	echo $var;
	if ($mysqli->query($var) === TRUE) {
		echo "".$var."<br>";
	}
	else {
		echo '<li>Could not update</li>';
	}
}
// END ITUNES
*/
?>





<?php 
/* 
var str = "70S 80S ACOUSTIC ALT-COUNTRY ALTERNATIVE ALTERNATIVE_ROCK AMBIENT AMERICAN AUSTRALIAN BEATS BLACK_METAL BLUES BRITISH CANADIAN CHICAGO CHILL CHILLOUT CHILLWAVE CLASSIC_ROCK DANCE DEATH_METAL DEEP_HOUSE DISCO DOWNTEMPO DREAMPOP DRONE DRUM_AND_BASS DUBSTEP ELECTRO ELECTRONIC ELECTRONICA ELECTROPOP EMO EXPERIMENTAL FEMALE_VOCALIST FOLK FOLK_ROCK FRENCH FUNK GARAGE GARAGE_ROCK GERMAN GLAM ROCK HARD_ROCK HARDCORE HIP_HOP HOUSE IDM INDIE INDIE_FOLK INDIE_POP INDIE_ROCK INDUSTRIAL INSTRUMENTAL INSTRUMENTAL_HIP_HOP JAPANESE JAZZ LO-FI LOUNGE MALE_VOCALISTS METAL METALCORE MINIMAL MINIMAL_TECHNO NEW_WAVE NEW_YORK NOISE NOISE_ROCK NU_DISCO POP POST-HARCORE POST-PUNK PROGRESSIVE PROGRESSIVE_HOUSE PROGRESSIVE_METAL PROGRESSIVE_ROCK PSYCHEDELIC PSYCHEDELIC_ROCK PUNK PUNK_ROCK R&B RAP RHYTHM_AND_BLUES ROCK RUSSIAN SHOEGAZE SINGER-SONGWRITER SKA SOUL SOUNDTRACK SWEDISH SYNTHPOP TECH_HOUSE TECHNO TRANCE TRAP TRIP-HOP UK underground_hip_hop"
var hypmGenres = str.split(" ");
var str = "japan-hot-100 united-kingdom-songs canadian-hot-100 germany-songs france-songs united-kingdom-songs jazz-songs";
// var international = str.split(" ");
// document.getElementById("songs").innerHTML += international;
var str = "tropical-songs latin-pop-songs regional-mexican-songs latin-streaming-songs latin-digital-songs latin-airplay latin-songs";
var latin
var str = "hot-dance-airplay dance-club-play-songs dance-electronic-streaming-songs dance-electronic-digital-songs dance-electronic-songs";
var danceElectronic
var str = "rhythmic-40 r-b-hip-hop-songs hot-adult-r-and-b-airplay rap-streaming-songs rap-song r-and-b-streaming-songs r-and-b-songs r-and-b-hip-hop-streaming-songs r-and-b-hip-hop-digital-songs hot-r-and-b-hip-hop-airplay";
var hipHopRnB 
var str = "alternative-songs rock-streaming-songs rock-digital-songs rock-airplay rock-songs";
var rock
var str = "country-streaming-songs country-digital-songs country-airplay country-songs";
var country
var str = "adult-pop-songs adult-contemporary pop-songs";
var pop
var str = "holiday-songs holiday-streaming-songs holiday-season-digital-songs hot-holiday-songs";
var holiday 
var str = "youtube social-50 top-album-sales on-demand-songs twitter-emerging-artists twitter-top-tracks streaming-songs digital-songs radio-songs artist-100 billboard-200 hot-100";
var overallPopularity
var str = "greatest-hot-100-artists greatest-hot-100-singles greatest-billboard-200-artists greatest-billboard-200-albums";
var alltimeGreatest 




include 'dbConnect.php'; 

$string= $_GET["q"];

$var = "INSERT INTO `itunes_chart_id`(`GENRE`, `MUSIC_VIDEO_ID`, `TOP_SELLING_ID`) VALUES".$string;
if ($mysqli->query($var) === TRUE) {
	echo $string."<br>";
}
else {
	echo '<li>Could not update</li>';
}

*/
?>
<script>// replace with _20
var str = "('alternative' , '1620' , '20')";
var str = "('anime' , '1629' , '29')";
var str = "('bigBand' , '1685' , '1685')";
var str = "('blues' , '1602' , '2')";
var str = "('brazilian' , '1671' , '1122')";
var str = "('childrens' , '1604' , '4')";
var str = "('chinese' , '1637' , '1232')";
var str = "('christian' , '1622' , '22')";
var str = "('classic' , '1605' , '5')";
var str = "('comedy' , '1603' , '03')";
var str = "('country' , '1606' , '06')";
var str = "('dance' , '1617' , '17')";
var str = "('easyListening' , '1625' , '25')";
var str = "('electronica' , '1607' , '7')";
var str = "('fitWorkout' , '1683' , '50')";
var str = "('frenchPop' , '1632' , '50000064')";
var str = "('germanFolk' , '1634' , '50000068')";
var str = "('germanPop' , '1633' , '50000066')";
var str = "('hipHopRap' , '1618' , '18')";
var str = "('holdiay' , '1608' , '8')";
var str = "('indian' , '1690' , '62')";
var str = "('instrumental' , '1684' , '53')";
var str = "('jPop' , '1627' , '27')";
var str = "('jazz' , '1611' , '11')";
var str = "('kPop' , '1686' , '51')";
var str = "('karaoke' , '1687' , '52')";
var str = "('korean' , '1648' , '43')";
var str = "('latino' , '1612' , '12')";
var str = "('newAge' , '1613' , '13')";
var str = "('opera' , '1609' , '9')";
var str = "('pop' , '1614' , '14')";
var str = "('souldRnB' , '1615' , '15')";
var str = "('regae' , '1624' , '24')";
var str = "('rock' , '1621' , '21')";
var str = "('singerSongWriter' , '1610' , '10')";
var str = "('vocal' , '1623' , '23')";
var str = "('world' , '1619' , '19')";
document.getElementById("songs").innerHTML = 'hello';
function loadExplorer(){
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("songs").innerHTML = xhttp.responseText;
		}
	}
	xhttp.open("GET", "test.php?q="+str, true);
	xhttp.send(); 
}
</script>
<button onclick="loadExplorer()">click me</button>
<p id='songs'>

</p>