<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" type="text/css" href="design.css">
	<?php include 'head.php'; ?>
	<?php include 'dbConnect.php';
	// Session Starts
	// LIMIT 10 OFFSET 15
	$songQuery = $mysqli->query("SELECT `Video_Title`,`Video_ID` FROM `songs`");
	
	?>
</head>
<body>

<!-- INPUTS ARE BLURRED WHEN EDITING
::TODO:: Make this work
-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("input").focus(function(){
        $(this).css("background-color", "#cccccc");
    });
    $("input").blur(function(){
        $(this).css("background-color", "#ffffff");
    });
});
</script>


	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <div id="wrapper">
        <!-- Navigation, Sidebar -->
		<?php include 'nav.php'; ?>
		
		<!-- Body -->
        <div id="page-wrapper">

            <div class="container-fluid">
                <!-- Page Heading -->
				<?php 
					include 'login.php';
				?>
				<div class="alert-box success">Successfully Saved</div>
				<div class="alert-box failure">Failed to Save</div>
				<div class="col-xs-12" id='songs'>  <!-- Songs -->
						<script src="youtubeApi.js"></script>
						<script src="channel.js"></script>
						<script src="playlist.js"></script>
					<script>loadExplorer()</script>
				</div>
            </div>
            <!-- /.container-fluid -->
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
	<?php
	include 'footer.php';
	?>
	
</body>
</html>
