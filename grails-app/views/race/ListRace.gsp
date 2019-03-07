<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="container" style="width: 80%">
		<center>
			<strong>Race List</strong>
		</center>
		<table
			class="table table-striped table-bordered table-hover table-condensed ">
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
				<tr id="${race.getAt('id')}">
					<td>
						${race.getAt('raceCode')}
					</td>
					<td>
						${race.getAt('name')}
					</td>
					<td>
						${race.getAt('startDate') }
					</td>
					<td>
						${race.getAt('city')}
					</td>
					<td>
						<button id="editRace" value="${race.getAt('id')}"
							onclick="callEditRace(${race.getAt('id')});  $('#showRunnerByRaceID').hide(); $('#popupEdit').show();" class="btn btn-success">
							<span class="glyphicon glyphicon-edit"></span> Edit
						</button> <g:hiddenField id="id" name="id" value="${race.getAt('id')}" />
					</td>
						<td><button id="deleteRace" value="${race.getAt('id')}" name="id"
							onclick="callDelete(${race.getAt('id')})" class="btn btn-danger">
							<span class="glyphicon glyphicon-trash"></span> Delete
						</button> 
						</td>
						<td><g:formRemote name="myform"
							url="[controller:'Race', action:'showRunnerForSelectRace']"
							update="showRunnerByRaceID">
							<g:hiddenField name="raceid" value="${race.getAt('id')}" />
							<button id="selectRaceId" value="${race.getAt('id')}" name="raceid"
								onclick="callShowRunner(); $('#popupEdit').hide(); $('#showRunnerByRaceID').show();" class="btn btn-info">
								<span class="glyphicon "></span> See Runner
							</button>
						</g:formRemote>
					</td>
				</tr>
			</g:each>


			</tbody>
		</table>

	</div>
</body>
</html>