
<h1>Create Race</h1>

		<g:formRemote name="myform"
					url="[controller:'Race', action:'createRace']"  update="divcreateRace">
			<label> Race Name:</label>
			<input type="text" name="name"
				placeholder="Enter the first Name" />
				<br>
			<label>Race Code:</label>
			<input type="text" name="raceCode" placeholder="Enter the raceCode" />
						<br>
			<label>Race Start Date:</label>
			<g:datePicker  name="startDate" precision="day" />

			<br>
			<label>State:</label>
			<g:radioGroup values="['GA', 'NC', 'SC', 'VA']" name="state" labels="['GA', 'NC', 'SC', 'VA']">
				<p>${it.radio} - ${it.label} </p>
			</g:radioGroup>
			<br>
			<label>City:</label>
			<input type="text" name="city" placeholder="Enter the city" />
			<br>
			<label>Distance:</label>
			<input type="text" name="distance" placeholder="Enter the distance" />
			<br>
			<label>Cost:</label>
			<input type="text" name="cost" placeholder="Enter the cost" />
			<br>
			<label>Max Runners :</label>
			
			<input type="text" name="maxRunners" placeholder="Enter the maxRunners" />
			<br>
			<g:submitButton name="submit" value="Create Race"  />
		</g:formRemote>
