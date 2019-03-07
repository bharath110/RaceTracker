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
			<tr id="${race?.id}" onclick="callColorMe(${race?.id})">
				<td  >
					${race?.raceCode}
				</td>
				<td  >
					${race?.name}
				</td>
				<td><g:datePicker name="dateOfBirth" value="${race?.startDate}"
						precision="day" /></td>
				<td>
					${race?.city}
				</td>
				<td>
				  <button id="editRace" value="${race?.id}" onclick="callPost(${race?.id})">"edit"</button>
  					 <g:hiddenField id="${race?.id}" name="id" value="${race?.id}"/>
			
					 <button id="delete" value="${race?.id}" onclick="callDelete(${race?.id})">Delete</button>
					</td>

			</tr>
		</g:each>
		

		</tbody>
	</table>

