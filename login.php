	
	<style>
.error {color: #FF0000;}
</style>
<?php

error_reporting(E_ERROR | E_PARSE);
$servername = "localhost";
$username = "root";
$password = "";
$db_name = "music";
$mysqli = new mysqli($servername, $username, $password, $db_name);
if ($mysqli->connect_errno) {
	echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

$nameErr = $emailErr = $passErr = "";
$username = $email = $password = "";

function test_input($data) {
   $data = trim($data);
   $data = stripslashes($data);
   $data = htmlspecialchars($data);
   return $data;
}
function showForm($message){
	$state = 'true';
	include 'loginform.php';
}
function registrationForm($message){
	$state = 'false';
	include 'loginform.php';
}
if ($_SESSION["LoggedIn"] == false){
	// For login
	if (!empty($_POST['UserNameInput'])) {
		$_SESSION["PassWordInput"] = test_input($_POST["PassWordInput"]);
		$_SESSION["UserNameInput"] = test_input($_POST["UserNameInput"]);
		$query = "SELECT `USERNAME`, `PASSWORD` FROM `user` WHERE `USERNAME` = '".$_SESSION["UserNameInput"]."'";
		$result = $mysqli->query($query);
		if ($result->num_rows == 1) {
			$row = $result->fetch_assoc();
			$dbPassword = $row['PASSWORD'];
			if($_SESSION["PassWordInput"] == $dbPassword){
				$_SESSION["LoggedIn"] = true;
			}
			else{showForm("Incorrect Password");}
		}
		else{showForm("Incorrect User Name");}
	}
	// For the form
	else if (!empty($_POST["name"])|| !empty($_POST["pass1"])|| !empty($_POST["pass2"])|| !empty($_POST["email"])){
		if (empty($_POST["name"])) {
			registrationForm("Name is required");
		}
		else {
			$name = test_input($_POST["name"]);
			$query = "SELECT `USERNAME` FROM `user` WHERE `USERNAME` = '".$_POST["name"]."'";
			$result = $mysqli->query($query);
			if ($result->num_rows >= 1) {
				registrationForm("Username already exists");
			}
			else if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
				registrationForm("Only letters and white space allowed");
			}
			else{
				if ((empty($_POST["pass1"])) || (empty($_POST["pass2"])))  {
					registrationForm("Passwords do not match");
				}
				else {
					if ( test_input($_POST["pass1"]) != test_input($_POST["pass2"]))  {
						registrationForm("Passwords must match");
					}
					else{
						if (empty($_POST["sendEmail"])) {
							$sql = "INSERT INTO `user`(`USERNAME`, `PASSWORD`) VALUES ('". $_POST["name"] ."','". $_POST["pass1"] ."');";
							if ($mysqli->query($sql) === TRUE) {
								$var = "INSERT INTO `playlists`(`USERNAME`, `PLAYLIST_NAME`) VALUES ('".$_SESSION["UserNameInput"]."', 'Favorites')";
								if ($mysqli->query($var) === TRUE) {
									echo $var;
								}
								else {
									echo 'fail';
								}
								showForm("Verification email not sent, Please login");
							}
						}
						else{
							if (filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
								$sql = "INSERT INTO `user`(`USERNAME`, `PASSWORD`, `EMAIL`) VALUES ('". $_POST["name"] ."','". $_POST["pass1"] ."','". $_POST["email"] ."');";
								//TODO: insert into playlists values $_Post'name' and playlist name 'Favorites'
								if ($mysqli->query($sql) === TRUE) {
									$to = $_POST["name"];
									$subject = "Welcome to CharlesKarpati.com!";
									$from = "From: Charles.karpati@gmail.com";
									$message = 'Thank you!';
									mail($to, $subject, $message, $headers);
									$var = "INSERT INTO `playlists`(`USERNAME`, `PLAYLIST_NAME`) VALUES ('".$_SESSION["UserNameInput"]."', 'Favorites')";
									if ($exists == 'false'){
										if ($mysqli->query($var) === TRUE) {
											echo "fail";
										}
									}
								showForm("Verification email sent, Please login");
								}
							}
							else{
								registrationForm("Invalid email format");
							}
						}
					}
				}
			}
		}
	}
	else { 
	showForm("Please Enter Credentials"); }
}
else { 

}

?>