
<script  type="text/javascript" src="./js/jquery-1.11.0.min.js"></script>
<script  type="text/javascript" src="./js/Jquery-validation.js"></script>
<script  type="text/javascript" src="./js/createRaceValidation.js"></script>

<h1>Create Race </h1>

<g:formRemote name="myform"	id="myForm" url="[controller:'Race', action:'createRace']" update="divcreateRace">

	<label for="name">Race Name:</label>
	<input type="text" name="name" id="name" placeholder="Enter the first Name" />
	<br>
	<label for="raceCode">Race Code:</label>
	<input type="text" name="raceCode" id="raceCode" placeholder="Enter the raceCode" />
	<br>
	<label for="startDate">Race Start Date:</label>
	<g:datePicker name="startDate" id="startDate" precision="day" />

	<br>
	<label for="state">State:</label>
	<g:radioGroup values="['GA', 'NC', 'SC', 'VA']" name="state" id="state"	labels="['GA', 'NC', 'SC', 'VA']">
		<p>
			${it.radio}
			-
			${it.label}
		</p>
	</g:radioGroup>
	<br>
	<label for="city">City:</label>
	<input type="text" name="city" id="city" placeholder="Enter the city" />
	<br>
	<label for="distance">Distance:</label>
	<input type="text" name="distance" id="distance" placeholder="Enter the distance" />
	<br>
	<label for="cost">Cost:</label>
	<input type="text" name="cost" id="cost" placeholder="Enter the cost" />
	<br>
	<label for="maxRunners">Max Runners :</label>

	<input type="text" name="maxRunners" id="maxRunners" placeholder="Enter the maxRunners" />
	<br>
	<g:submitButton name="submit" value="Create Race"  class="btn btn-success" />

</g:formRemote>
