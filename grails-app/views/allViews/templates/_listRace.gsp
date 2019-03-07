

	<table class="table loadTable">

		<thead>
			<tr bgcolor="#f0f0f0">

			
				<th>Race Code</th>
				<th>Race Name</th>
				<th>Start Date</th>
				<th>City</th>
				<th>Actions</th>
			</tr>

		</thead>
		<g:each var="race" in="${raceList}" status="i">
			<tr onclick="callColorMe(${this})" onmouseover="">
				<td>
					${race.getAt('raceCode')}
				</td>
				<td>
					${race.getAt('name')}
				</td>
				<td><g:datePicker name="startDate" value="${race.getAt('startDate')}"
						precision="day" /></td>
				<td>
					${race.getAt('city')}
				</td>
				<td>
				  <button id="editRace" value="${race.getAt('id')}" onclick="callPost(${race.getAt('id')})">"edit"</button>
   
			
					 <button id="delete" value="${race.getAt('id')}" onclick="callPost(${race.getAt('id')})">Delete</button>
					</td>

			</tr>
		</g:each>
		

		</tbody>
	</table>
	
