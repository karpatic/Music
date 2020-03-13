  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

  <!-- Modal -->
  <div class="modal fade" id="loginModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Login</h4>
        </div>
        <div class="modal-body">
        <div id='loginState'>Please Enter Credentials</div>
			<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
			<div align='center'>
			<label>Username:</label>
			<input type='text' placeholder=" username" name='UserNameInput'/> </br>
			<b> Password: </b>
			<input type='password' placeholder=" **********" name='PassWordInput'/> </br>
			</div>
        </div>
        <div class="modal-footer">
			<input type='button' value='Register' align='left' class='register'/>
			<input type='submit' value='Submit!' align='right'/>
		  </form>
        </div>
      </div>
    </div>
  </div>
  
  
<!-- Modal -->
<div class="modal fade" id="registerModal" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
			<h4 class="modal-title">Registration</h4>
			</div>
			<div class="modal-body">
			<div id='registrationState'>Please Enter Credentials</div>
			<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
				<div align='center'>
					<label>Email (opt):</label>
					<input type="text" name="email"">
					</br>
					<label>Username:</label> 
					<input type="text" name="name">
					<br>
					<b> Password: </b>
					<input type='password' placeholder=" **********" name='pass1'/> 
					</br>
					<b> Password: </b>
					<input type='password' placeholder=" **********" name='pass2'/>
					<br>
					<input type='checkbox' name='sendEmail'><b> Email Results? </b>
				</div>
			</div>
			<div class="modal-footer">
				<input type='button' value='Login' align='left' class='login'/>				
				<input type='submit' value='Submit!' align='right'/>
			</form>
			</div>
		</div>
	</div>
</div>
			

<script>
var state ='<?php echo $state; ?>';
var message ='<?php echo $message; ?>';
if ( state == 'true'){
	document.getElementById("loginState").innerHTML = message;
	$(document).ready(function(){
		// Show the Modal on load
		$("#loginModal").modal({backdrop: "static"});
		$("#loginModal").modal("show");
		// $("#myBtn").click(function(){
		// });
		//   <button type="button" class="btn btn-info btn-md" id="myBtn">Modal with backdrop:"static"</button>
	});
}
if ( state == 'false'){
	$(document).ready(function(){
		// Show the Modal on load
		document.getElementById("registrationState").innerHTML = message;
		$("#registerModal").modal({backdrop: "static"});
		$("#registerModal").modal("show");
	});
}

$('.register').click(function(){
	$("#registerModal").modal({backdrop: "static"});
	$("#registerModal").modal("show");
});
$('.login').click(function(){
	$("#registerModal").modal("hide");
	$("#loginModal").modal("show");
});
</script>