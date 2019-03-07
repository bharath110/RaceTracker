<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />

<title>Home</title>

<script src="../js/Jquery-validation.js"></script>
<link rel="stylesheet" href="../css/jquery-ui.css">

<script src="../js/jquery-1.12.4.js"></script>
<script src="../js/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(function() {
		$("#tabs").tabs();
		$("#errorSpan").fadeOut(3000);
		$("#msgSpan").fadeOut(3000);
		$("form[name='runnerEditForm']").validate({

			rules : {

				// on the right side
				firstName : "required",
				lastName : "required",
				dateOfBirth : {
					required : true

				},
				gender : "required",
				address : "required",
				city : "required",
				state : "required",
				zipcode : {
					required : true,
					number : true

				},


			// Specify validation error messages
			messages : {
				userId : "Please enter your UserId or email",
				firstName : "Please enter your firstName",
				lastName : "Please enter your lastName",
				dateOfBirth : "Please enter your date Of Birth",
				gender : "Please enter your gender",
				address : "Please enter youraddress",
				city : "Please enter your gender",
				state : "Please enter state",
				zipcode : "Please enter your zipcode",
				
			},

			submitHandler : function(form) {
				form.submit();
			}
		}
	});
});
</script>
<link rel="stylesheet" href="../css/bootstrapFile.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>

<body>
	<span id="userMsg"> welcome ${session?.currentRunner?.firstName}
		..!
	</span>



	<center>
		<span id="msgSpan">
			<h4 style="color: green;">
				${flash.successUpdateMsg }
				${flash?.successMsg}
			</h4>
		</span>
	</center>
	<center>
		<span id="errorSpan">
			<h4 style="color: red; align:">
				${flash?.errorMsg}
			</h4>
		</span>
	</center>
	<div id="tabs">
		<ul>
			<li>
			<li><a href="#profileDetail">Profile</a></li>
			</li>
			<li><a href="#ListDivId">Show Available Races</a></li>
			<li><a href="#profileEdit">Edit Profile</a></li>
			<li><g:form name="myForm"
					url="[action:'logout',controller:'Race']">
					<button type="submit" name="Logout" id="buttonLogout" onclick=""
						class="btn btn-info">Logout</button>
				</g:form></li>

		</ul>
		<div id="profileDetail" class="profile container">
			<div class="profile container">
				<center>
					<h4>
						<strong>Profile</strong>
					</h4>

					<img alt="User Profile Pic" src="../images/dummy_profile pic.png"
						class="img-thumbnail"> <br> <br>

					<g:render template="../allViews/templates/profileDetails"></g:render>

				</center>
			</div>

		</div>
		<div id="ListDivId" class="ListDivId container">
			<g:render template="../allViews/templates/dashboardRaceList"></g:render>
		</div>

		<div id="profileEdit" class="profileEdit container">
			<div class="editRunner ">
				<h4>
					<strong>Profile Edit</strong>
				</h4>
				<br> <br>

				<g:form name="runnerEditForm"
					url="[controller:'Runner', action:'update']">
					<p>
						<label> First Name:</label> <input type="text" name="firstName"
							value="${session.currentRunner?.firstName }"> <br> <label>Last
							Name:</label> <input type="text" class="form-control" name="lastName"
							placeholder="Last Name"
							value="${session.currentRunner?.lastName }"> <br>
					<p>
						<label for="dateOfBirth">Date Of Birth:</label> <input type="date"
							class="form-control" id="runnerDOB" name="dateOfBirth"
							placeholder="Enter Date Of Birth" value="${session.currentRunner?.dateOfBirth.toString() }">
					</p>
					${session.currentRunner?.dateOfBirth.toString() }
					<br>
					<label>Gender</label>
					<input type="radio" name="gender" value="M"
						checked="${session.currentRunner?.gender=='M'?'checked':''}">Male 
	<input type="radio" name="gender" value="F"
						checked="${session.currentRunner?.gender=='F'?'checked':''}">Female
	<br>
					<label> Address:&nbsp</label>
					<input type="text" class="form-control" name="address"
						value="${session.currentRunner?.address }">
					<br>
					<label>City:</label>
					<input type="text" class="form-control" name="city"
						value="${session.currentRunner?.city }">
					<br>
					<label>State:</label>
					<input type="text" class="form-control" name="state"
						value="${session.currentRunner?.state }">
					<br>
					<label>Zipcode:</label>
					<input type="text" class="form-control" name="zipcode"
						value="${session.currentRunner?.zipcode }">

					<g:hiddenField name="id" value="${session.currentRunner?.id }" />

					<br>
					<button type="submit" value="Submit" class="btn btn-success"
						onclick="updatedRunner()">Submit</button>


					</p>
				</g:form>


			</div>

		</div>


		<div id="myModalRace" class="modal-R">


			<!-- Modal content -->
			<div class="modal-content-R">
				<span class="close" id="close" style="color: red; align: right;">&times;</span>
				<div id='popupRaceDetail'></div>
			</div>




		</div></body>
</html>
