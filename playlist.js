///////////////////////// Playlist Features \\\\\\\\\\\\\\\\\\\\\\\\\\\\\
function newPlaylist(){
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("searchPlaylist").innerHTML = xhttp.responseText;
		}
	}
	xhttp.open("GET", "newPlaylist.php?q="+document.getElementById('PlaylistName').value, true);
	xhttp.send(); 
}

function saveToPlaylist(playlist){
	var url = player.getVideoUrl();
	var videoid = url.split('v=')[1];
	var ampersandPosition = videoid.indexOf('&');
	if(ampersandPosition != -1) {
	  videoid = videoid.substring(0, ampersandPosition);
	}
	console.log("video id = ",videoid);
	
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			var state = xhttp.responseText;
			if (state='true'){
				$( "div.success" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
				//document.getElementById('songs').innerHTML += xhttp.responseText;
			}
			else{
				$( "div.failure" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
			}
		}
	}
	var save
	var laylist = 'Favorites';
	xhttp.open("GET", ("saveToPlaylist.php?q=" +videoid+"&j="+playlist), true);
	xhttp.send();
}

// loads all playlists from user in dropdown
function loadPlaylist(){
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("searchPlaylist").innerHTML = xhttp.responseText;
		}
	}
	xhttp.open("GET", "loadPlaylist.php", true);
	xhttp.send(); 
}

// Gets search results for channel
function searchPlaylist(str) {
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("searchPlaylist").innerHTML = xmlhttp.responseText;
			$(function() {
  				$("#playlistSearch").focus();
  				// var val = $("#channelSearch").value;
  				$("#playlistSearch").val(str);
  				
			});
		}
	};
	xmlhttp.open("GET", "searchPlaylist.php?q=" + str, true);
	xmlhttp.send();
}

// loads all playlists from user in dropdown
function saveToPlaylistMenu(){
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("addToPlaylist").innerHTML = xhttp.responseText;
			console.log(xhttp.responseText)
		}
	}
	xhttp.open("GET", "saveToPlaylistMenu.php", true);
	xhttp.send(); 
}

// Play The Selected Song and accompanying playlist
function playPlaylist(count) {
	//console.log(selectedSong.parentElement);
    var mySongList = document.getElementsByClassName("col-xs-6 col-md-4 col-lg-3 collapsed box");
	cuedPlaylist = {};
    var playlist = [];
    for (i = 0; i < mySongList.length; i++) {
    	console.log(mySongList[i]);
		playlist.push(mySongList[i].getAttribute("vidId"));
		cuedPlaylist[mySongList[i].getAttribute("vidId")] = mySongList[i].getAttribute("vidTitle");
    }
	player.loadPlaylist([playlist]);
	player.playVideoAt(count);
}



// loads a playlist into the songs div
function displayPlaylist(playlistName){
	var title=playlistName;
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("songs").innerHTML = xhttp.responseText;
		}
	}
	xhttp.open("GET", "displayPlaylist.php?q="+playlistName, true);
	xhttp.send(); 
}

///////////////////////// Playlist Features \\\\\\\\\\\\\\\\\\\\\\\\\\\\\