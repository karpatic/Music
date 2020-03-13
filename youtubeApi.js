
function toggleCarret(item){
	//console.log(item.childNodes[3]);
	//document.getElementById("songs").innerHTML = item;
	if (item.childNodes[3].className == "fa fa-fw fa-angle-up"){
		item.childNodes[3].className = "fa fa-fw fa-angle-down";
	}
	else{
		item.childNodes[3].className = "fa fa-fw fa-angle-up";
	}
}

//////////////////////////////////////Load Explorer \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

function loadExplorer(){
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("songs").innerHTML = xhttp.responseText;
		}
	}
	xhttp.open("GET", "loadExplorer.php", true);
	xhttp.send();   
}


// YOUTUBE Playlist from Search

// loads search using song or author or both. 
// returns playlist, calls getPlaylistEmbedCode which will play the top index.
function loadSong(video){
	document.getElementById("videoTitle").innerHTML = video;
	document.getElementById("songTitle").innerHTML = "<h3>" + video + "</h3>";
	//document.getElementById("video").src = 'https://www.youtube.com/embed/?listType=search&list='+video;
	player.loadPlaylist({listType:'search',
		list:video,
		//index:0,	startSeconds:Number,	suggestedQuality:String
	});
	getPlaylistEmbedCode();
	/*
	loadVideoById({'videoId': id});
	*/
}
// used inside loadSong to load top index from playlist.
function getPlaylistEmbedCode(){
	var url = player.getVideoUrl();
	if (url === undefined){
		//window.setTimeout(function(){ console.log(player.getVideoUrl()) }, 5000);
		//window.setInterval(function(){ console.log(player.getVideoUrl()) }, 5000);
		startTimeout();
		console.log('error');
	}
	else {
		clearTimeout(myVar);
		console.log(url);
		var videoid = url.split('v=')[1];
		var ampersandPosition = videoid.indexOf('&');
		if(ampersandPosition != -1) {
			videoid = videoid.substring(0, ampersandPosition);
		}
		//document.getElementById("video").src = 'https://www.youtube.com/embed/'+videoid;
		//playVideo();
		console.log(videoid);
		player.loadVideoById(videoid, 0, "large");
		
	
	}
}
// Used to loop PlylistEmbedCode until flag returns true.
function startTimeout() {
    myVar = window.setTimeout(getPlaylistEmbedCode, 500);
}

// YOUTUBE Playlist by CHANNEL Uploads
function loadSongs(video){
	console.log(video);
	String(video);
	video = video.replace(" ","");
	video = video.replace(" ","");
	console.log(video);
	document.getElementById("videoTitle").innerHTML = video;
	document.getElementById("songTitle").innerHTML = "<h3>" + video + "</h3>";
	document.getElementById("video").src = 'https://www.youtube.com/embed/?listType=user_uploads&list='+video;
	playVideo();							
}

// YOUTUBE Playlist by CHANNEL Favorites
function loadChannelFavorites(video){
	console.log(video);
	String(video);
	video = video.replace(" ","");
	video = video.replace(" ","");
	console.log(video);
	document.getElementById("videoTitle").innerHTML = video;
	document.getElementById("songTitle").innerHTML = "<h3>" + video + "</h3>";
	document.getElementById("video").src = 'https://www.youtube.com/embed/?listType=user_favorites&list='+video;
	playVideo();							
}

// YOUTUBE Playlist by Search Results
function loadSearchResults(video){
	console.log(video);
	String(video);
	video = video.replace(" ","");
	video = video.replace(" ","");
	console.log(video);
	document.getElementById("videoTitle").innerHTML = video;
	document.getElementById("songTitle").innerHTML = "<h3>" + video + "</h3>";
	document.getElementById("video").src = 'https://www.youtube.com/embed/?listType=user_uploads&list='+video;
	playVideo();							
}

//////////////////////////////////////Load Explorer \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\





// Called whenever player changes song
function updateQueue(event){
	if (event.data == YT.PlayerState.PLAYING) {
		var currentIndex = getPlayingIndex();
		queue = getPlaylist();
		var tempObject = {};
		document.getElementById("playing").innerHTML = ' ';
		for (var i = 0; i < queue.length; i++) {
			var id = queue[i];
			tempObject[id] = cuedPlaylist[id];
			if (i == currentIndex){
				document.getElementById("playing").innerHTML += "<li><a href='#' style='background-color:#222;' onclick=\"setPlaylist("+i+");\"> <i class='fa fa-music'></i> " + tempObject[id] + "</a> </li>";
			}
			else{
				document.getElementById("playing").innerHTML += "<li><a href='#' onclick=\"setPlaylist("+i+");\"> <i class='fa fa-headphones'></i> " + tempObject[id] + "</a> </li>";
			}
		}
		cuedPlaylist = tempObject;
		//displayCue(currentIndex);
	}
}



/////////////////////////BILLBOARD HYPEM ITUNES YOUTUBE \\\\\\\\\\\\\\\\\\\\\\\\\\\\\

function	loadBillboard(genre,award){
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("billboard").innerHTML = xhttp.responseText;
		}
	}
	xhttp.open("GET", "loadBillboard.php?q="+genre+"&p="+award, true);
	xhttp.send();
}

function loadHypeM(genre){
	console.log(genre);
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("billboard").innerHTML = xhttp.responseText;
			//document.getElementById("hypem").innerHTML = xhttp.responseText;
		}
	}
	xhttp.open("GET", "loadhypem.php?q="+genre, true);
	xhttp.send();
}

function searchHypeM(){
	var genre = document.getElementById("genreName").value;
	console.log(genre);
	loadHypeM(genre);
}

function	loadItunes(genre){
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("billboard").innerHTML = xhttp.responseText;
		}
	}
	xhttp.open("GET", "loaditunes.php?q="+genre, true);
	xhttp.send();
}

/////////////////////////BILLBOARD HYPEM ITUNES YOUTUBE \\\\\\\\\\\\\\\\\\\\\\\\\\\\\






//////////////////////// IFRAME STUFF \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//#1. Puase Play and Stop
function pauseVideo() {
	document.getElementById("playVideo").style.display= 'inline' ;
	document.getElementById("pauseVideo").style.display= 'none' ;
	player.pauseVideo();
}
function playVideo() {
	document.getElementById("pauseVideo").style.display= 'inline' ;
	document.getElementById("playVideo").style.display= 'none' ;
	player.playVideo();
}
function stopVideo() {
	player.stopVideo();
}
// Next Previous Shuffle
function nextVideo() {
	player.nextVideo();
}
function previousVideo() {
	player.previousVideo();
}
function setShuffle() {
	player.setShuffle('true');
	setPlaylist(0);
}
// Volume
function setVolume(number) {
	player.setVolume(number);
}
function getVolume() {
	document.getElementById("volVal").value = player.getVolume();
}
// Loop
function setLoop() {
	document.getElementById("unLoop").style.display= 'inline' ;
	document.getElementById("loop").style.display= 'none' ;
	player.setLoop('true');
}
function setUnLoop(){
	document.getElementById("loop").style.display= 'inline' ;
	document.getElementById("unLoop").style.display= 'none' ;
	player.setLoop('false');
}

// embedCode, Url, Index, PL-Array
function getVideoUrl() {
	return player.getVideoUrl();
}
function getVideoEmbedCode() {  // Returns the embed code for the currently loaded/playing video.
	return player.getVideoEmbedCode();
}
function setPlaylist(index){
	player.playVideoAt(index)
}
function getPlaylist() { //This function returns an array of the video IDs
	return player.getPlaylist();
}
function getPlayingIndex() { //This function returns the index of the playlist video that is currently playing.
	return player.getPlaylistIndex();
}

// Seek, Duration
function seekTo(seconds) {
	player.seekTo(seconds, Boolean);
}
function duration(){
	player.getDuration();
}	
	
//# 2. Loads Iframe
var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
var player;
function onYouTubeIframeAPIReady() {
	player = new YT.Player('video', {
    align: 'center',
	width: '100%',
    videoId: 'OrR1TGQY20Y',
    events: {
      'onReady': onPlayerReady,
      'onStateChange': onPlayerStateChange
    }
	});
}

function setTimeSlider(){
	document.getElementById("points").value = player.getCurrentTime();
	player.getVideoEmbedCode();
	player.getVideoUrl();
	
}

//# 3. 'onReady': onPlayerReady,
function onPlayerReady(event) {
	window.setInterval(setTimeSlider, 1000);
	player.addEventListener("onStateChange", updateQueue);
}
function onPlayerStateChange(event) {
	var done = false;
	if (event.data == YT.PlayerState.PLAYING && !done) {
		
		done = true;
		document.getElementById("points").max = player.getDuration();
		playVideo();
		
		var actualCue = getPlaylist();
		var id = actualCue[getPlayingIndex()];
		var title = cuedPlaylist[id];
		
		document.getElementById("videoTitle").innerHTML = title;
		document.getElementById("songTitle").innerHTML = "<h3>" + title + "</h3>";
	}
}

//////////////////////// IFRAME STUFF \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\