<!DOCTYPE html>
<html lang="en">
<head>

</head>
<body>
<?php 

/*
https://rss.itunes.apple.com/us/?urlDesc=%2Fgenerator

https://itunes.apple.com/us/rss/topsongs/limit=100/genre=1122/xml
MUSIC VIDEOS 
ttps://itunes.apple.com/us/rss/topmusicvideos/limit=10/xml
https://itunes.apple.com/uy/rss/topmusicvideos/limit=25/genre=1620/xml
https://itunes.apple.com/ua/rss/topmusicvideos/limit=100/genre=1620/explicit=true/xml

Country
US	us
zimbabwe	zw
Yemen		ye
Vietnam (en)	vn_en
venezuela (en)	ve_en
venezuela		ve
uzbekistan		uz
uruguay(en)		uy_en
uruguay			uy
Us_Spanish		us_es
United Kingd	gb
uae				ae
ukrain			ua
uganda			ug
turkmenistan	tm
Turkey en		tr_en
turkey			tr
tuneisia		tn
trin & tob		tt
thailand en		th_en
tanzania		tz
tajikistan		tj
taiwan			tw
switz italian	ch_it
switz french	ch_fr
switch eng		ch_en
switch			ch
sweden eng		se_en
swaziland		sz
surinam eng		sr_en
St vincent and the Granadines	vc
St. Lucia		lc
St. Kitts & Nevis	kn
sri lanka		lk
spain eng		es_en
south africa	za
solomon islands	sb
slovenia		si
slovakia		sk
singapre en		sg_en
sierra Leone	sl
seychelles		sc
senegal			sn
saudi arabia	sa
sao tome and principe	st
russia en		ru_en
romania			ro
qatar			qa
portugal en		pt_en
poland			pl


https://rss.itunes.apple.com/us/?urlDesc=%2Fgenerator

https://itunes.apple.com/WebObjects/MZStore.woa/wpa/MRSS/justadded/sf=143441/limit=10/rss.xml


https://itunes.apple.com/ph/rss/topsongs/limit=100/xml
https://itunes.apple.com/ph/rss/topsongs/limit=100/genre=2/xml
a.push()


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GENRE
var genre = {musicVideo:"", topSelling:""};

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*/
	
	$genre= $_GET["q"];
	$itunesLink = "http://wwww.itunes.com";
	$itunesUrl = ("https://itunes.apple.com/us/rss/topsongs/limit=100/genre=".$genre."/xml");
	$itunes_feed = simplexml_load_file($itunesUrl);
?>

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
	<h3> Information provided by <a href="<?php echo $itunesLink; ?>" > Itunes </a> top hits </h3>      
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
			foreach ( $itunes_feed->entry as $entry ) :
			$itunes_namespace = $entry->children( 'http://itunes.apple.com/rss' );
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