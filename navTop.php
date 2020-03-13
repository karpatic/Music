<!-- Start Lefthand Navbar Items-->
<div class="navbar-header">
	<button type="button" 
		class="navbar-toggle" 
		data-toggle="collapse" 
		data-target=".navbar-ex1-collapse">
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	</button>
	<!-- Top Left Navbar -->
	<div class="special"> 
		<!-- Randomize -->
		<a class=" pull-left fa fa-random" 
			href="javascript:;" 
			onClick="setShuffle();"
			title="Randomize"
			data-toggle="tooltip" 
			data-placement="bottom">
		</a>
		<!-- Repeat Playlist -->
		<a class=" pull-left fa fa-repeat"
			id='loop' 
			href="javascript:;"
			onClick="setLoop();"
			title="Repeat Playlist"
			data-toggle="tooltip" 
			data-placement="bottom">
		</a>
		<!--No Repeat -->
		<a class=" pull-left fa fa-long-arrow-right"
			id='unLoop'href="javascript:;"
			onClick="setUnLoop();"
			style="display:none;"
			title="No Repeat"
			data-toggle="tooltip" 
			data-placement="bottom">
		</a>
		<!-- Previous -->
		<a class=" pull-left fa fa-step-backward" 
			href="javascript:;" 
			onClick="previousVideo();"
			title="Previous"						
			data-toggle="tooltip" 
			data-placement="bottom">
		</a>
		<!-- SliderBar -->
		<div id="sliderBar"  
			class="pull-left">
			<input type="range" 
				onclick="seekTo(this.value);" 
				id="points" 
				style="height:70%">
				<marquee id ='videoTitle' 
					style="color: #9d9d9d; font-size:12px; height:25%"
					behavior="scroll" 
					direction="left" >
					Click a Song to Begin
				</marquee>
			</input>
		</div>
		<!-- Next -->
		<a class=" pull-left fa fa-step-forward" 
			href="javascript:;" 
			onClick="nextVideo();" 
			title="Next"
			data-toggle="tooltip" 
			data-placement="bottom">
		</a>
		<!-- Pause -->
		<a class=" pull-left fa fa-pause" 
			id='pauseVideo' 
			href="javascript:;" 
			onClick="pauseVideo();" 
			title="Pause"
			style="display:none;"
			data-toggle="tooltip" 
			data-placement="bottom">
		</a>
		<!-- Play -->
		<a class=" pull-left fa fa-play"
			id='playVideo' 
			href="javascript:;" 
			onClick="playVideo();"
			title="Play"
			data-toggle="tooltip" 
			data-placement="bottom">
		</a>
	</div>
</div>
<!-- End Lefthand Navbar Items-->



<!-- Start Righthand Navbar Items-->
<div>
	<!-- Top Right Navbar -->
	<ul class="nav top-nav special">
		<!-- Settings -->
		<li class="dropdown pull-right"
			title="Settings"
			data-toggle="tooltip"
			data-placement="bottom">
			<a class=" dropdown-toggle"
				data-toggle="dropdown">
				<i class="fa fa-wrench"></i>
				<b class="caret"></b>
			</a>
			<ul class="dropdown-menu">
				<li class="active">
					<a>Settings</a>
				</li>
				<!-- 
				<li class="divider"></li>
				<li>
					<a href="#">
						<i class="fa fa-check-square-o"></i>
						All Features 
					</a>
				</li>
				<li>
					<a href="#">
						<i class="fa fa-fw fa-user"></i>
						Personalize
					</a>
				</li>
				<li>
					<a href="#">
						<i class="fa fa-fw fa-info"></i>
						Help 
					</a>
				</li>
				<li class="divider"></li>
				-->
				<li>
					<a href='logout.php'>
						<i class="fa fa-fw fa-power-off"></i>
						Log Out
					</a>
				</li>
			</ul>
		</li>
		<!-- Recent Uploads
		<li title="Recent Uploads"
			class="dropdown pull-right" 
			data-toggle="tooltip" 
			data-placement="bottom">
			<a class=" dropdown-toggle"
				data-toggle="dropdown">
				<i class="fa fa-exclamation"></i>
				<b class="caret"></b>
			</a>
			<ul class="dropdown-menu alert-dropdown">
				<li class="active"><a>Alerts</a></li>
				<li class="divider"></li>
				<li><a href="#">Song</a></li>
				<li><a href="#">Song</a></li>
				<li><a href="#">Song</a></li>
				<li class="divider"></li>
				<li><a href="#">View All</a></li>
			</ul>
		</li>
		-->
		<!-- Volume -->
		<li class="dropdown pull-right" 
			title="Volume" 
			data-toggle="tooltip" 
			data-placement="bottom">
			<a class="dropdown-toggle"
				onclick="getVolume();"
				data-toggle="dropdown">
				<i class="fa fa-volume-down "></i>
				<b class="caret"></b>
			</a>
			<ul class="dropdown-menu hiddenBackgroundSlider" 
				style="background-color:black">
				<li>
					<input type="range" 
						onclick="setVolume(this.value)" 
						id="volVal" 
						value=40 
						class="verticalSlider"/>
				</li>
			</ul>
		</li>
		<!-- Add To Playlist -->
		<li class="dropdown pull-right"
			title="Add To"
			data-toggle="tooltip" 
			data-placement="bottom">
			<a onclick="saveToPlaylistMenu();" 
				class=" dropdown-toggle" 
				data-toggle="dropdown">
					<i class="fa fa-plus "></i>
					<b class="caret"></b>
			</a>
			<ul  id="addToPlaylist" 
				class="dropdown-menu" 
				style="background-color:black">
			</ul>
		</li>
		<!-- <a class="pull-right fa fa-frown-o" data-toggle="tooltip" data-placement="bottom" title="Bad Mix"></a>
		<!-- Bad Song 
		<a class="pull-right fa fa-thumbs-o-down" 
			title="Bad Song" 
			data-toggle="tooltip" 
			data-placement="bottom">
		</a>
		<!-- Love It 
		<a class="pull-right fa fa-heart-o" 
			onclick="saveToPlaylist('Favorites');" 
			title="Love it" 
			data-toggle="tooltip" 
			data-placement="bottom" >
		</a>
		<!-- Good Song
		<a class="pull-right fa fa-thumbs-o-up" 
			title="Good Song" 
			data-toggle="tooltip" 
			data-placement="bottom">
		</a>
		-->
		<!-- <a class="pull-right fa fa-smile-o"	 data-toggle="tooltip" data-placement="bottom" title="Good Mix"></a>-->
		<!-- Expand Video -->
		<a class="pull-right fa fa-expand" 
			title="Expand Video"
			data-toggle="modal" 
			data-target="#videoModal"
			data-toggle="tooltip" 
			data-placement="bottom">
		</a>
	</ul>
</div>
<!-- End Righthand Navbar Items-->