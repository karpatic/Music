/////////////////////////SEARCH Display Channel Subscribe\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

function subscribe(chanid, chanName){
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
		}
	};
	xmlhttp.open("GET", "saveSubscription.php?q=" + chanid+"&j="+chanName, true);
	xmlhttp.send();
}

// Gets search results for channel
function searchChannel(str) {
	var jsonArray = JSON.stringify(channelList);
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("searchChannel").innerHTML = xmlhttp.responseText;
			$(function() {
  				$("#channelSearch").focus();
  				// var val = $("#channelSearch").value;
  				$("#channelSearch").val(str);
  				
			});
		}
	};
	xmlhttp.open("GET", "searchChannel.php?q=" + str, true);
	xmlhttp.send();
}



var channelList = [];

// Play The Selected Song and accompanying playlist
function uploadSong(selectedSong) {
	//console.log(selectedSong.parentElement);
    var mySongList = document.getElementsByClassName("col-xs-6 col-md-4 col-lg-3 collapsed box");
	cuedPlaylist = {};
    var playlist = [];
    for (i = 0; i < mySongList.length; i++) {
		playlist.push(mySongList[i].getAttribute("vidId"));
		cuedPlaylist[mySongList[i].getAttribute("vidId")] = mySongList[i].getAttribute("vidTitle");
    }
	player.loadPlaylist([playlist]);
	player.playVideoAt(songViewedPosition);
}



// on Channel Click
function displaySongs() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("songs").innerHTML = xhttp.responseText;
		}
	}
	xhttp.open("GET", "displayChannel.php?q="+channelList, true);
	xhttp.send();   
}

// on channel checkbox click
function displayChannel(element){
	channelList = [];
	//channelList.push(element.getAttribute('chanId'));

	// Remove all channels with a checkmark
	var myStringArray = document.getElementsByClassName("channelCheck");
	var arrayLength = myStringArray.length;
	for (var i = 0; i < arrayLength; i++) {
		if(myStringArray[i].children[0].className=="fa fa-check-square-o"){
			myStringArray[i].children[0].style.backgroundColor = '#222';
			myStringArray[i].children[0].className="fa fa-square-o";
		}
	}
	// give this channel a checkmark and load load channel
	toggleChannel(element.childNodes[0]);
}


// on channel Checkbox Click
function toggleChannel(element){
	if (element.className == "fa fa-square-o"){
		element.className = "fa fa-check-square-o";
		element.style.backgroundColor = '#347';
		//console.log(element.parentElement)
		//document.getElementById("songs").innerHTML += element.parentElement.getAttribute('chanName');
		channelList.push(element.parentElement.getAttribute('chanId'));
		displaySongs();
	}
	else{
		element.className = "fa fa-square-o";
		element.style.backgroundColor = '#222';
		var index = channelList.indexOf(element.parentElement.getAttribute('chanId'));
		channelList.splice(index, 1);
		displaySongs();
	}
}

function childCallback(event) {
    event.stopImmediatePropagation();
    return false;
}




/////////////////////////Channel Display \\\\\\\\\\\\\\\\\\\\\\\\\\\\\

function disapearImg(box){
	//titles
	box.childNodes[5].style.visibility = 'hidden';
	// Buttons
	box.childNodes[3].childNodes[3].style.visibility = 'visible';
}

function showImg(box){
	//Title
	box.childNodes[5].style.visibility = 'visible';
	//Buttons
	box.childNodes[3].childNodes[3].style.visibility = 'hidden';
}

songViewedPosition = 0;
function bigImg(selectedSong) {
		
	// sepearte the positions of the last clicked song and the current
	var oldCount = songViewedPosition
	var newCount = selectedSong.getAttribute('count');
	// get old and current box and images
	var oldbox = document.getElementsByClassName("box")[oldCount].style;
	var oldimg = document.getElementsByTagName("img")[oldCount].style;
	var newbox = selectedSong.style;
	var newimg = document.getElementsByTagName("img")[newCount].style;

	var oldDetail = document.getElementsByClassName("details")[oldCount].style;
	var newDetail = document.getElementsByClassName("details")[newCount].style;

	// oldDetail.background= "gba(40, 200, 200, .7)";
	// newDetail.background='none';

	//$("#deleteme").remove();
	// document.getElementsByClassName("box")[songViewedPosition].removeAttribute("id");
	if (newCount != oldCount){
	newDetail.visibility="hidden";
	oldDetail.visibility="visible"	
	}

	oldbox.height = "60px";
	newbox.height = "122px";

	// update the current count of the current song being viewed
	songViewedPosition = selectedSong.getAttribute('count');


	var position = document.getElementById('songs');
	var windowWidth = window.innerWidth;

	if (windowWidth < 992){
		var songPosition = selectedSong.getAttribute('count')%2;
		if (songPosition == 0){
			$( "#deleteme" ).remove();
			$( "#deleteIt" ).remove();
			$( "#deleteThis" ).remove();
			$("<div id='deleteme' href='javascript:;' class='col-xs-6 col-md-4 col-lg-3 collapsed box'></div>").insertAfter(selectedSong);
		}
		else {
			$( "#deleteme" ).remove();
			$( "#deleteIt" ).remove();
			$( "#deleteThis" ).remove();
		}
	}
	else if(windowWidth<1200){
		var songPosition = selectedSong.getAttribute('count')%3;
		if (songPosition == 0){
			$( "#deleteme" ).remove();
			$( "#deleteIt" ).remove();
			$( "#deleteThis" ).remove();
			$("<div id='deleteme' href='javascript:;' class='col-xs-6 col-md-4 col-lg-3 collapsed box'></div>").insertAfter(selectedSong);
			$("<div id='deleteIt' href='javascript:;' class='col-xs-6 col-md-4 col-lg-3 collapsed box'></div>").insertAfter(selectedSong);
		}
		else if (songPosition == 1){
			$( "#deleteme" ).remove();
			$( "#deleteIt" ).remove();
			$( "#deleteThis" ).remove();
			$("<div id='deleteme' href='javascript:;' class='col-xs-6 col-md-4 col-lg-3 collapsed box'></div>").insertAfter(selectedSong);
		}
		else {
			$( "#deleteme" ).remove();
			$( "#deleteIt" ).remove();
			$( "#deleteThis" ).remove();
		}
	}
	else{
		var songPosition = selectedSong.getAttribute('count')%4;
		if (songPosition == 0){
			$( "#deleteme" ).remove();
			$( "#deleteIt" ).remove();
			$( "#deleteThis" ).remove();
			$("<div id='deleteme' href='javascript:;' class='col-xs-6 col-md-4 col-lg-3 collapsed box'></div>").insertAfter(selectedSong);
			$("<div id='deleteIt' href='javascript:;' class='col-xs-6 col-md-4 col-lg-3 collapsed box'></div>").insertAfter(selectedSong);
			$("<div id='deleteThis' href='javascript:;' class='col-xs-6 col-md-4 col-lg-3 collapsed box'></div>").insertAfter(selectedSong);
		}
		else if (songPosition == 1){
			$( "#deleteme" ).remove();
			$( "#deleteIt" ).remove();
			$( "#deleteThis" ).remove();
			$("<div id='deleteme' href='javascript:;' class='col-xs-6 col-md-4 col-lg-3 collapsed box'></div>").insertAfter(selectedSong);
			$("<div id='deleteIt' href='javascript:;' class='col-xs-6 col-md-4 col-lg-3 collapsed box'></div>").insertAfter(selectedSong);
		}
		else if (songPosition == 2){
			$( "#deleteme" ).remove();
			$( "#deleteIt" ).remove();
			$( "#deleteThis" ).remove();
			$("<div id='deleteme' href='javascript:;' class='col-xs-6 col-md-4 col-lg-3 collapsed box'></div>").insertAfter(selectedSong);
		}
		else {
			$( "#deleteme" ).remove();
			$( "#deleteIt" ).remove();
			$( "#deleteThis" ).remove();
		}
	}
}


/////////////////////////Channel Display \\\\\\\\\\\\\\\\\\\\\\\\\\\\\