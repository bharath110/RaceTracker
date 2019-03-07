
<h2>
	<strong>Edit Race</strong>
</h2>
<br>
<br>
<g:formRemote name="editRaceForm"
	url="[controller:'Race', action:'updateRace']" update="updatedRace">


	<label> Race Name:</label>
	<input id="name" type="text" name="name" value="${race1?.name}" />
	<br>
	<label>race1 Code:</label>
	<input id="raceCode" type="text" name="raceCode"
		value="${race1?.raceCode}" />
	<br>
	<br>
	<label>Race Start Date:</label>
	<input type="date" id="startDate" name="startDate"
		value="${race?.startDate}">
	<br>
	<label for="state">State:</label>
	<g:radioGroup values="['GA', 'NC', 'SC', 'VA']" name="state" id="state"
		labels="['GA', 'NC', 'SC', 'VA']">
		<p>
			${it.radio}
			-
			${it.label}
		</p>
	</g:radioGroup>
	<br>
	<label>City:</label>
	<input id="city" type="text" name="city" value="${race1?.city}" />
	<br>
	<label>Distance:</label>
	<input id="distance" type="text" name="distance"
		value="${race1?.distance}" />
	<br>
	<label>Cost:</label>
	<input id="cost" type="text" name="cost" value="${race1?.cost}" />
	<br>
	<label>Max Runners :</label>


	<input id="maxRunners" type="text" name="maxRunners"
		value="${race1?.maxRunners}" />
	<br>
	<input id="Rid" type="hidden" name="id" value="${race1?.id}" />

	<button id="submitB" type="submit" value="UpdateRace"
		class="btn btn-success"
		onclick="callToclosepopUp();$('#popupEdit').hide(); $('#updatedRace').show();">Update
		Race</button>


</g:formRemote>
