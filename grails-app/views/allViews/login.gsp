
<!DOCTYPE html>
<html>
<head>

<title>Home</title>
<style type="text/css" media="screen">
.error {
	color: #d82626;
}
</style>
<script
	src="../js/jquery-1.12.4.js"></script>
	<script
	src="../js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="../js/Jquery-validation.js"></script>

<script type="text/javascript">
	
</script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style type="text/css">
#logoutMsgId {
	color: green;
	margin-top: 50px;
	text-align: center;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
		
		$("#errorSpan").fadeOut(3000);
		$("#msgSpan").fadeOut(3000);
		$("userId").value = '';
		$("password").value = '';

		$("form[name='myLoginForm']").validate({

			rules : {

				// on the right side
				password : "required",
				userId : "required",

			},
			// Specify validation error messages
			messages : {
				userId : "Please enter your UserName",
				password : "Please enter your Password",

			},

			submitHandler : function(form) {
				form.submit();
			}
		});
		$("form[name='RegisterForRunner']").validate({

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
				email : {
					required : true,
					email : true
				},
				password : "required"

			},

			// Specify validation error messages
			messages : {
				userId : "Please enter your UserId or email",
				password : "Please enter your Password",
				firstName : "Please enter your firstName",
				lastName : "Please enter your lastName",
				dateOfBirth : "Please enter your date Of Birth",
				gender : "Please enter your gender",
				address : "Please enter youraddress",
				city : "Please enter your gender",
				state : "Please enter state",
				zipcode : "Please enter your zipcode",
				email : "Please enter your email",
				password : "Please enter your Password"

			},

			submitHandler : function(form) {
				form.submit();
			}
		});
	});
</script>
</head>


<body>
	<%session.currentRunner=null %>

	<div class="container">

		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Sign In</div>

				</div>

				<center>
				<span id="errorSpan">
					<h5 style="color: red; align: center;">
						${flash.message}
						${flash.errorSessionOut}
						${flash.registerError}
					</h5>
					</span>
				</center>
				<center>
				<span id="msgSpan">
					<h5 style="color: green; align: center;">
						${flash.logoutMsg}
						${flash.registerSuccesMsg}
					</h5>
					</span>
				</center>
				<div style="padding-top: 30px" class="panel-body">

					<div style="display: none" id="login-alert"
						class="alert alert-danger col-sm-12"></div>

					<form id="logiform" name="myLoginForm" class="form-horizontal"
						action="login" method="post">


						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input id="login-username"
								type="text" class="form-control" name="userId" id="userId"
								value="" placeholder="username or email" />

						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input id="login-password"
								type="password" class="form-control" type="password"
								name="password" id="password" value="" placeholder="password">
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <select name="role"
								class="form-control">
								<option disabled selected value>-- Select a Role --</option>
								<option value="admin">Admin</option>
								<option value="user">User</option>

							</select>
						</div>
						<div style="margin-top: 10px" class="form-group">
							<!-- Button -->

							<div class="col-sm-12 controls">

								<input name="Login.Submit" type="submit" value="Log In"
									class="btn btn-success" />
							</div>
						</div>
					</form>


					<div class="form-group" style="align: right">
						<div class="col-md-12 control">
							<div
								style="border-top: 1px solid #888; padding-top: 15px; font-size: 106%; align: right; padding-left: 5px;">
								Don't have an account! <a href="#" id="signupLink"
									onClick="$('#loginbox').hide(); $('#signupbox').show()">
									Sign Up Here </a>

							</div>
						</div>
					</div>




				</div>
			</div>
		</div>

		<div id="signupbox" style="display: none; margin-top: 50px"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Sign Up</div>
					<div
						style="float: right; font-size: 85%; position: relative; top: -10px">
						<a id="signinlink" href="#"
							onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign
							In</a>
					</div>
				</div>
				<div class="panel-body">
					<form name="RegisterForRunner" class="form-horizontal"
						action="register" method="post">

						<div id="signupalert" style="display: none"
							class="alert alert-danger">
							<p>Error:</p>
							<span></span>
						</div>



						<div class="form-group">
							<label for="firstName" class="col-md-3 control-label">
								First Name:</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="firstName"
									placeholder="Enter First Name">
							</div>
						</div>

						<div class="form-group">
							<label for="lastName" class="col-md-3 control-label">Last
								Name:</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="lastName"
									placeholder="Last Name">
							</div>
						</div>
						<div class="form-group">
							<label for="dateOfBirth" class="col-md-3 control-label">Date
								Of Birth:</label>
							<div class="col-md-9">
								<input type="date" class="form-control" name="dateOfBirth"
									placeholder="Enter Date Of Birth">
							</div>
						</div>


						<div class="form-group">
							<label for="gender" class="col-md-3 control-label">Gender</label>
							<div class="col-md-9">
								<input type="radio" name="gender" value="M">Male <input
									type="radio" name="gender" value="F">Female
							</div>
						</div>
						<div class="form-group">
							<label for="address" class="col-md-3 control-label">Address:</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="address"
									placeholder="Password">
							</div>
						</div>

						<div class="form-group">
							<label for="city" class="col-md-3 control-label">City:</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="city"
									placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<label for="state" class="col-md-3 control-label">State:</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="state"
									placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<label for="zipcode" class="col-md-3 control-label">Zipcode:</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="zipcode"
									placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="col-md-3 control-label">Email:</label>
							<div class="col-md-9">
								<input type="email" class="form-control" name="email"
									placeholder="Email">
							</div>
						</div>


						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Password:</label>
							<div class="col-md-9">
								<input type="password" class="form-control" name="password"
									placeholder="Password">
							</div>
						</div>



						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<input name="SignUp" type="submit" value="Sign Up"
									class="btn btn-success" />


								<%--<button id="btn-signup" type="button" class="btn btn-info">
									<i class="submit"></i> &nbsp Sign Up
								</button>

							--%>
							</div>
						</div>





					</form>
				</div>
			</div>
		</div>
	</div>
	<%--<div class="hidediv" id="popupregisterRunner">

		<g:render template="../allViews/registerRunner"></g:render>
	</div>


--%>
</body>

</html>
