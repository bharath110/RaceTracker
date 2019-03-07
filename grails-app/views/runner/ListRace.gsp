<center><h4>Available Races</h4></center>
<table class="table table-striped table-bordered table-hover table-condensed">

	<thead>
		<tr bgcolor="#f0f0f0">


			<th>Race Code</th>
			<th>Race Name</th>
			<th>Start Date</th>
			<th>City</th>
			<th>Register To This Race</th>
					</tr>

	</thead>
	<g:each var="race" in="${raceList}" status="i">
		<tr id="${race.id}">
			<td>
				${race.raceCode)}
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
			<td>
			<g:formRemote name="myform"
							url="[controller:'Race', action:'selectedRace']"
							update="popupRaceDetail">
							<g:hiddenField name="id" id="${race.id}"  value="${race.id}"/>
							<button type="submit" name="Race info and Register" id="buttonselectRace"
								onclick="callselectRace()" class="btn btn-success" >Race info and Register</button>
						
		</g:formRemote>	
			</td>

		</tr>
	</g:each>


	</tbody>
</table>

