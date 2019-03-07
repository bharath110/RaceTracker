

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