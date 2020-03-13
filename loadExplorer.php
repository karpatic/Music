<div class="row">
	<div class="col-lg-12">
		<h1>Explore
</h1> 
		<ul style="background-color:#222; border-radius: 5px 5px 0px 0px; width:100%;" class="nav nav-tabs">
			<li style="width:50%;"><a data-toggle="tab" href="#menu1">Music/ Video</a></li>
			<li style="width:50%;"><a data-toggle="tab" href="#menu3">Channels/ Playlist</a></li>
		</ul>
	</div>
</div>
	<div class="tab-content">
	<input style="float:right;" type="text" id="genreName"> 
	<button style="float:right;" onclick="searchHypeM()";>Search Hype M</button>
	<div id="menu1" class="tab-pane fade in active">
		<?php include 'feed/billboard.php'; ?>
		 <? /* php include 'feed/hypem.php'; */ ?>
		<div id="billboard"></div>
		<?php include 'feed/itunes.php'; ?>
	</div>
	<div id="menu3" class="tab-pane fade">
		<?php include 'loadYoutube.php'; ?>
		
	</div>
</div>
  
  
<!-- /.row -->