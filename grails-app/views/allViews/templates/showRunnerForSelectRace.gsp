<table
	class="table table-striped table-bordered table-hover table-condensed">
	<g:each var="runner" in="${registeredRunners}" status="i">
	<th>Profile</th>
	<tr>
		<td>First Name</td>
		<td>
			${runner?.firstName }
		</td>
	</tr>
	<tr>
		<td>Last Name:</td>
		<td>
			${runner?.lastName }
		</td>
	</tr>
	<tr>
		<td>Date Of Birth</td>
		<td>
			${runner?.dateOfBirth }
		</td>
	</tr>
	<tr>
		<td>Gender</td>
		<td>${runner?.gender=='M'?'Male':'Female' } 
		</td>
	</tr>
	<tr>
		<td>Address</td>
		<td>
			${runner?.address }
		</td>
	</tr>
	<tr>
		<td>City</td>
		<td>
			${runner?.city }
		</td>
	</tr>
	<tr>
		<td>State</td>
		<td>
			${runner?.state }
		</td>
	</tr>
	<tr>
		<td>Zip code</td>
		<td>
			${runner?.zipcode }
		</td>
	</tr>
	<tr>
		
	</tr>
	</g:each>
</table>
<button id="btnCloseModel" class="btn btn-primary"
						onclick="closeModal();">Close</button>