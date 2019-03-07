
<table
	class="table table-striped table-bordered table-hover table-condensed" style="width:300px;">
	
	<tr>
		<th> <strong>Name</strong></th>
		<td>
			${session.currentRunner?.firstName+" "+session.currentRunner?.lastName}
		</td>
	</tr>
	
	
	<tr>
		<th><strong>Date Of Birth</strong></th>
		<td>
			${session.currentRunner?.dateOfBirth }
		</td>
	</tr>

	<tr>
		<th><strong>Gender</strong></th>
		<td>${session.currentRunner?.gender=='M'?'Male':'Female' } 
		</td>
	</tr>

	<tr>
		<th><strong>Address</strong></th>
		<td>
			${session.currentRunner?.address }
		</td>
	</tr>
	
	<tr>
		<th><strong>City</strong></th>
		<td>
			${session.currentRunner?.city }
		</td>
	</tr>
	
	<tr>
		<th><strong>State</strong></th>
		<td>
			${session.currentRunner?.state }
		</td>
	</tr>

	<tr>
		<th><strong>Zip code</strong></th>
		<td>
			${session.currentRunner?.zipcode }
		</td>
	</tr>
	
</table>
