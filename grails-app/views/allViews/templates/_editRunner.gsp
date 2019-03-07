<br><br>

<g:form name="runnerEditForm" url="[controller:'Runner', action:'update']"	>
<p>
	<label> First Name:</label>
	<input type="text" name="firstName"
		value="${session.currentRunner?.firstName }">
<br>
	<label>Last Name:</label>
	<input type="text" class="form-control" name="lastName"
		placeholder="Last Name" value="${session.currentRunner?.lastName }">
<br>
<p>
	<label for="dateOfBirth">Date Of Birth:</label>
	<input type="date" class="form-control" id="runnerDOB" name="dateOfBirth"
		placeholder="Enter Date Of Birth">
</p>
<br>
	<label>Gender</label>
	<input type="radio" name="gender" value="M"
		checked="${session.currentRunner?.gender=='M'?'checked':''}">Male 
	<input type="radio" name="gender" value="F"
		checked="${session.currentRunner?.gender=='F'?'checked':''}">Female
	<br>
	<label>  Address:&nbsp</label>
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
	<button type="submit" value="Submit" class="btn btn-success" onclick="updatedRunner()">Submit</button>

	
</p>
</g:form>

