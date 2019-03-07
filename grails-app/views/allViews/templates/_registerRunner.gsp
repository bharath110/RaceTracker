
<div class="registerRunner container">
	<h1>Registration</h1>

	<form name="RegisterForRunner" action="register" method="post">
		<label> First Name:</label>
		<input type="text" name="firstName" placeholder="Enter the first Name" />
		<br>

		<label>Last Name:</label>
		<input type="text" name="lastName" placeholder="Enter the last Name" />
		<br>
		<label>Date Of Birth:</label>
		<input type="date" name="dateOfBirth" value="${new Date()} }" >
		
		<br>
		<label>Gender:</label><br>

		<input type="radio" name="gender" value="M" >Male
		<input type="radio" name="gender" value="F" >Female
		<br>
		<label>Address:</label>
		<input type="text" name="address" placeholder="Enter the Address" />
		<br>
		<label>City:</label>
		<input type="text" name="city" placeholder="Enter the city" />
		<br>
		<label>State:</label>
		<input type="text" name="state" placeholder="Enter the state" />
		<br>
		<label>Zip code:</label>
		<input type="text" name="zipcode" placeholder="Enter the zipcode" />
		<br>
		<label>Email :</label>

		<input type="email" name="email" placeholder="Enter the email" />
		<label>Password :</label>
		<input type="password" name="password" placeholder="Enter the "password"" />
		<input type="submit" value="Register" id="buttonSubmitrunner"
			onclick="callShowRunner()" />
	</form>
	<div class="row">

	<g:submitButton name="Back To Login!" id="buttonBacktoLogin"
		onclick="callShowLogin()" class="btn btn-info" />
</div>
</div>
