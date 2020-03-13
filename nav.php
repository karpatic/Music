<!-- 
/*
Called From (file/function): 
Inputs: None
Purpose: Log User Out
Actions: Clears session histroy
Functions: ... below
*/
-->
<link rel="stylesheet" type="text/css" href="design.css">
        <nav class="navbar navbar-inverse navbar-fixed-top" 
			role="navigation">
			<?php
			include 'navTop.php';
			include 'navLeft.php';
			?>
        </nav>

<!--Video Modal -->
<div class="modal fade" 
	id="videoModal" 
	role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" 
					class="close" 
					data-dismiss="modal">
					&times;
				</button>
				<div class="modal-title" 
					id='songTitle'> 
					If you see this, an error has occured 
				</div>
			</div>
			<div class="modal-body">
				<div id='video' align='middle'>	</div>
			</div>
			<div class="modal-footer">
				<button type="button" 
					class="btn btn-default" 
					data-dismiss="modal">
					Close
				</button>
			</div>
		</div>
	</div>
</div>

<!-- Create Playlist Modal -->
<div class="modal fade" 
	id="createPlaylist" 
	role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
			<button type="button" 
				class="close" 
				data-dismiss="modal">
				&times;
			</button>
			<h4 class="modal-title">
				Create Playlist
			</h4>
			</div>
			<form action="javascript:;" 
				method="get" 
				class="form-horizontal" 
				role="form">
				<div class="form-group">
					<label class="control-label col-sm-2" 
						for="Playlist Name">
						Playlist Name:
					</label>
					<div class="col-sm-8 col-md-6">
						<input 
							type="text" 
							class="form-control" 
							id="PlaylistName" 
							placeholder="Enter Playlist Name">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" 
						for="pwd">
						Comment:
					</label>
					<div class="col-sm-8 col-md-6"> 
						<input type="text" 
							class="form-control" 
							id="Comment" 
							placeholder="Enter Comment">
					</div>
				</div>
				<div class="form-group"> 
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" 
							class="btn btn-default" 
							onclick="newPlaylist(this)" 
							data-dismiss="modal">
							Submit
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<!-- Save Channel as Playlist Modal -->
<div class="modal fade" id="createChannelPlaylist" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" 
					class="close" 
					data-dismiss="modal">
					&times;
				</button>
				<h4 class="modal-title">
					Save Channels as Playlist
				</h4>
			</div>
			<div class="modal-body">
				<form action="javascript:;" 
					onsubmit="newChannelPlalylist(this)" 
					method="get" 
					class="form-horizontal" 
					role="form">
					<div class="form-group">
						<label class="control-label col-sm-2" 
							for="Playlist Name">
							Playlist Name:
						</label>
						<div class="col-sm-8 col-md-6">
							<input type="text" 
							class="form-control" 
							id="PlaylistName" 
							placeholder="Enter Playlist Name">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" 
							for="pwd">
							Comment:
						</label>
						<div class="col-sm-8 col-md-6"> 
							<input type="text" 
								class="form-control" 
								id="Comment" 
								placeholder="Enter Comment">
						</div>
					</div>
					<div class="form-group"> 
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" 
								class="btn btn-default">
								Submit
							</button>
						</div>
					</div>
				</form>			
			</div>
		</div>
	</div>
</div>
