<!-- Start Left Navbar Gutter-->
<div class="collapse navbar-collapse navbar-ex1-collapse">
	<ul class="nav navbar-nav side-nav myautoscroll">
		<!-- Explore -->
		<li>
			<a	href="javascript:;"
				onclick="loadExplorer();">
				<i class="fa fa-fw fa-home"></i>
				Explore
			</a>
		</li>
		<!-- Playlist -->
		<li>
			<a	href="javascript:;"
				onclick="loadPlaylist(); toggleCarret(this);"
				data-toggle="collapse" 
				data-target="#searchPlaylist">
				<i	class="fa fa-fw fa-th-list"></i> 
				Playlists 
				<i	class="fa fa-fw fa-angle-up"></i>
			</a>
			<ul id="searchPlaylist" 
				class="collapse">
			</ul>
		</li>
		<!-- Channels -->
		<li>
			<a	href="javascript:;" 
				onclick="toggleCarret(this);"
				data-toggle="collapse" 
				data-target="#searchChannel">
				<i class="fa fa-fw fa-th-list"></i>
				Channels
				<i class="fa fa-fw fa-angle-up"></i>
			</a>
			<!-- Channels Displayed-->
			<ul id="searchChannel" 
				style="height:200px; overflow:auto;" 
				class="collapse">
				<?php
					include 'loadChannel.php';
				?>
			</ul>
		</li>
		<!-- Now Playing -->
		<li>
			<a><i class="fa fa-music"></i> Now Playing	</a>
			<!-- playlist Displayed-->
			<ul id="playing" 
				style="overflow:auto;" 
				class="collapse in"></ul>
		</li>
	</ul>
</div>