

<table
	class="table table-striped table-bordered table-hover table-condensed">
	<th>Profile</th>
	<tr>
		<td>First Name</td>
		<td>
			${updatedRunner?.firstName }
		</td>
	</tr>
	<tr>
		<td>Last Name:</td>
		<td>
			${updatedRunner?.lastName }
		</td>
	</tr>
	<tr>
		<td>Date Of Birth</td>
		<td>
			${updatedRunner?.dateOfBirth }
		</td>
	</tr>
	<tr>
		<td>Gender</td>
		<td>
			${updatedRunner?.gender=='M'?'Male':'Female' }
		</td>
	</tr>
	<tr>
		<td>Address</td>
		<td>
			${updatedRunner?.address }
		</td>
	</tr>
	<tr>
		<td>City</td>
		<td>
			${updatedRunner?.city }
		</td>
	</tr>
	<tr>
		<td>State</td>
		<td>
			${updatedRunner?.state }
		</td>
	</tr>
	<tr>
		<td>Zip code</td>
		<td>
			${updatedRunner?.zipcode }
		</td>
	</tr>
</table>
<button id="btnCloseModel" class="btn btn-primary"
						onclick="closeModal();">Close</button>