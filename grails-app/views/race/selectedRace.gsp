<center>
	<strong><h4>Race Details</h4></strong>
</center>
<table
	class="table table-striped table-bordered table-hover table-condensed">

	<thead>
		<tr bgcolor="#f0f0f0">

		</tr>
	</thead>
	<tr>
		<td>Race Name</td>
		<td>
			${selectedRace?.name}
		</td>
	</tr>
	<tr>
		<td>Start Date</td>
		<td>
			${selectedRace?.startDate}
		</td>
	</tr>
	<tr>
		<td>Race State</td>
		<td>
			${selectedRace?.state}
		</td>
	</tr>
	<tr>
		<td>City</td>
		<td>
			${selectedRace?.city}
		</td>
	</tr>
	<tr>
		<td>Race Distance</td>
		<td>
			${selectedRace?.distance}
		</td>
	</tr>
	<tr>
		<td>Race Cost</td>
		<td>
			${selectedRace?.cost}
		</td>
	</tr>
	<tr>

	</tr>
	</tbody>
</table>
<center>	<g:form name="myForm"
		url="[action:'registerForRace',controller:'Registration']">

		<g:hiddenField name="raceid" value="${selectedRace?.id}" />
		<button type="submit" name="confirm and register For Race"
			id="buttonregisterForRace" onclick="callAjaxForRunnerRegRace()"
			class="btn btn-success">confrm and register For Race</button>

	</g:form>
</center>