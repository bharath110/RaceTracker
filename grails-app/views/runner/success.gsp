<h1>Data Saved</h1>

<table class="table loadTable">

	<!-- Alternate CSS classes for the rows. -->
	<thead>
<tr>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Date Of Birth</th>
	<th>Gender</th>
	<th>Address</th>
	<th>City</th>
	<th>State</th>
	<th>Zip code</th>
	<th>Email </th>
</tr>
</thead>
	<tr bgcolor="#f0f0f0">

		<td>
			${runner?.firstName }
		</td>
		<td>
			${runner?.lastName}
		</td>
		<td>
			${runner?.dateOfBirth }
		</td>
		<td>
			${runner?.gender}
		</td><td>
			${runner?.address }
		</td>
		<td>
			${runner?.city}
		</td><td>
			${runner?.state }
		</td>
		<td>
			${runner?.zipcode}
		</td>
		<td>
			${runner?.email}
		</td>
			<%--
     <button id="edit" value="${runner?.id}">Edit</button>
     <g:form controller="Runner" action="edit" >
				<p>
					<input type="hidden" id="submit" name="submit" value="${runner?.id}" /> <input
						id="submit" name="submit" type="submit" value="Edit" />
			</g:form>
			<g:form controller="Runner" action="delete">
			
					<input type="hidden" name="id" value="${runner?.id}" /> <input
						type="submit" value="Delete"  />
			</g:form>
			</td>--%>
	</tr>

</table>