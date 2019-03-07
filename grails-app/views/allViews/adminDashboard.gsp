<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Admin Dashboard</title>
<link rel="stylesheet" href="../css/jquery-ui.css">

<script src="../js/jquery-1.12.4.js"></script>
<script src="../js/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(function() {
		$("#tabs").tabs();
		$("#errorSpan").fadeOut(3000);
		$("#msgSpan").fadeOut(3000);
	});
</script>
<!-- Latest compiled and minified CSS -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>


<body style="background-color: lightblue">
	<span id="userMsg"> welcome ${session?.currentRunner?.firstName}
		..!
	</span>
	<center>
		<span id="errorSpan">
			<h5 style="color: red; align: center;">
				${flash.raceDeleteError}
				${flash.raceCreateError}
				${flash.runnerDeleteError}
			</h5>
		</span>
	</center>
	<span id="msgSpan">
		<h5 style="color: green; align: center;">
			${flash.raceCreateSuccess}
		</h5>
	</span>
	<nav class="navbar navbar-toggleable-md navbar-light bg-faded "
		style="width: 80% height=5px">
		<h3>
			<strong>Admin actions</strong>
		</h3>
		<div id="tabs">
			<ul>
				<li><a href="#raceListDiv" title="Race List will be Shown">Race List</a></li>
				<li><a href="#addRace" title="Add New Race to the race list">Add New Race</a></li>

				<li><g:form name="myForm"
						url="[action:'logout',controller:'Race']">
						<button type="submit" name="Logout" id="buttonLogout" onclick=""
							class="btn btn-info">Logout</button>
					</g:form></li>
			</ul>
			<div id="raceListDiv" class="displayRaceList container">
				<g:render template="../allViews/templates/adminRaceList"></g:render>
			</div>
			<div class="createRace container" id="addRace">
				<div class="addRace contain">
					<g:render template="../allViews/templates/addNewRace"></g:render>
				</div>
			</div>
		</div>

		<div id="myModal" class="modal-R">


			<!-- Modal content -->
			<div class="modal-content-R">
				<span class="close" id="close" style="color: red; align: right;">&times;</span>
				<div id="showRunnerByRaceID" class="container"></div>

				<div id="popupEdit">
					<g:render template="../allViews/templates/popupRaceEdit"></g:render>

				</div>
				<div id="updatedRace" class="updatedRace container"></div>

			</div>
		</div>
		<br>
		<div class="panel-footer-R">Panel Footer</div>
</body>
</html>