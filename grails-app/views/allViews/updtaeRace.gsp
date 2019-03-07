<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>

<title>Update Race</title>
</head>

<body>

	<h1>Test Race updated</h1>
	<table class="table loadTable">

		<thead>
			<tr bgcolor="#f0f0f0">

				<th>Race Id</th>
				<th>Race Code</th>
				<th>Race Name</th>
				<th>Start Date></th>
				<th>City</th>
				<th>State</th>
				<th>Distance</th>
				<th>Cost</th>
				<th>Max Runner</th>

			</tr>

		</thead>

		<tr>
			<td>
				${race?.id}
			</td>
			<td>
				${race?.raceCode}
			</td>
			<td>
				${race?.name}
			</td>
			<td>
				${race?.startDate}
			</td>
			<td>
				${race?.city}
			</td>
			<td>
				${race?.state}
			</td>
			<td>
				${race?.distance }
			</td>
			<td>
				${race?.cost }
			</td>
			<td>
				${race?.maxRunners }
			
		</tr>

		<!-- Alternate CSS classes for the rows. -->

		</tbody>
	</table>
</body>
</html>