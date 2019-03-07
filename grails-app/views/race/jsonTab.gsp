

<h3>
			<center>
				<strong>Race List</strong>
			</center>
		</h3>
		<table
			class="table table-striped table-bordered table-hover table-condensed">

			<thead>
				<tr bgcolor="#f0f0f0">


					<th>Race Code</th>
					<th>Race Name</th>
					<th>Start Date</th>
					<th>City</th>
					<th>Actions</th>
					<th>Actions</th>
					<th>Actions</th>
				</tr>

			</thead>
		
			<g:each var="racedata" in="${raceList}" status="i">
				<tr id="">
					<td>
						${racedata.getAt("id")}
					</td>
					
				</tr>
			</g:each>
			</tbody>
		</table>