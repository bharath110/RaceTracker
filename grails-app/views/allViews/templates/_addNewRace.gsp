<h3>Create Race</h3>

		<g:form id="myFormId" name="myform"
			url="[controller:'Race', action:'createRace']">
			<label> Race Name:</label>
			<input type="text" name="name" autocomplete="off"
				placeholder="Enter the First Name" />
			<br>
			<label>Race Code:</label>
			<input type="text" name="raceCode" autocomplete="off"
				placeholder="Enter the Race Code" />
			<br>
			<label>Race Start Date:</label>
			<input type="date" name="startDate" autocomplete="off"
				placeholder="Enter the Start Date" />
			<br>
			<br>
			<label>State:</label>
			<g:radioGroup values="['GA', 'NC', 'SC', 'VA']" name="state"
				labels="['GA', 'NC', 'SC', 'VA']">
				<p>
					${it.radio}
					-
					${it.label}
				</p>
			</g:radioGroup>
			<br>
			<label>City:</label>
			<input type="text" name="city" placeholder="Enter the city"
				autocomplete="off" />
			<br>
			<label>Distance:</label>
			<input type="text" name="distance" placeholder="Enter the distance"
				autocomplete="off" />
			<br>
			<label>Cost:</label>
			<input type="text" name="cost" placeholder="Enter the cost"
				autocomplete="off" />
			<br>
			<label>Max Runners :</label>

			<input type="text" name="maxRunners"
				placeholder="Enter the maxRunners" autocomplete="off" />
			<br>
			<button type="submit" name="submit" value="Create Race"
				id='submitCreateId' class="btn btn-success"
				onclick="callSubmitCreate()">Create Race</button>
			
		</g:form>