<h3>
	<center>
	<div >	<strong>Runner Registered   ${selectedRace.name}</strong>
	</center>
</h3>
<table
	class="table table-striped table-bordered table-hover table-condensed">


	<thead>
		<tr>
			<th>First Name</th>
			<th>Last Name:</th>
			<th>Gender</th>
			<th>Address</th>
			<th>City</th>
			
			
		</tr>
	</thead>
	<g:each var="runner" in="${registeredRunners}" status="i">
		<tr>

			<td>
				${runner?.lastName }
			</td>
			<td>
				${runner?.firstName }
			</td>
			
			<td>
				${runner?.gender=='M'?'Male':'Female' }
			</td>
			<td>
				${runner?.address }
			</td>

			<td>
				${runner?.city }
			</td>
			
			<td>
			
			
			</td>
		
		</tr>
		</g:each>
</table>

</div>
