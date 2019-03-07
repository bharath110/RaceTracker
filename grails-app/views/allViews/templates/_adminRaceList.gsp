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
	
	<g:each var="race" in="${raceList}" status="i">
		<tr id="${race.id}">
			<td>
				${race.raceCode}
			</td>
			<td>
				${race.name}
			</td>
			<td>
				${race.startDate }

			</td>
			<td>
				${race.city}
			</td>
			<td><g:hiddenField name="dateVariable " />
				<button id="editRace" value="${race.id}"
					onclick="callEditRace('${race.id}');   dateDisplayOnGsp('${race.startDate}'); $('#showRunnerByRaceID').hide();$('#updatedRace').hide();$('#popupEdit').show();"
					class="btn btn-success" title="Edit this Race">
					<span class="glyphicon glyphicon-edit"></span> Edit
				</button> <g:hiddenField id="id" name="id" value="${race.id}" /></td>
			<td><g:form url="[controller:'Race', action:'delete']">
					<g:hiddenField name="id" value="${race.id}" />
					<button id="deleteRace" name="id" class="btn btn-danger" title="Delete this Race">
						<span class="glyphicon glyphicon-trash"></span> Delete
					</button>
				</g:form></td>
			<td><g:formRemote name="myform"
					url="[controller:'Race', action:'showRunnerForSelectRace']"
					update="showRunnerByRaceID">
					<g:hiddenField name="raceid" value="${race.id}" />
					<button id="selectRaceId" value="${race.id}" name="raceid"
						 title="View Registered Runners of this Race" onclick="callShowRunner(); $('#popupEdit').hide(); $('#showRunnerByRaceID').show();"
						class="btn btn-info">
						<span class="glyphicon "></span>View Runners
					</button>
				</g:formRemote></td>
		
		</tr>
	</g:each>
	</tbody>
</table>