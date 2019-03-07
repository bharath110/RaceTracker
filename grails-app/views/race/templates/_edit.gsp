 
<div id="edit" >

	<span class="close">&times;</span>
			<label> Race Name:</label>
			<input type="text" name="name" value="${race?.name}" />
			<label>race Code:</label>
			<input type="text" name="raceCode" value="${race?.raceCode}" />
			<br>
			<br>
			<label>Race Start Date:</label>
			<g:datePicker name="startDate" precision="day"
				value="${race?.startDate}" />

			<br>
			<label>State:</label>
			<g:radioGroup values="['GA', 'NC', 'SC', 'VA']" name="state"
				value="${race?.state}" labels="['GA', 'NC', 'SC', 'VA']">
				<p>
					${it.radio}
					
					${it.label}
				</p>
			</g:radioGroup>
			<br>
			<label>City:</label>
			<input type="text" name="city" value="${race?.city}" />
			<br>
			<label>Distance:</label>
			<input type="text" name="distance" value="${race?.distance}" />
			<br>
			<label>Cost:</label>
			<input type="text" name="cost" value="${race?.cost}" />
			<br>
			<label>Max Runners :</label>

			<input type="text" name="maxRunners" value="${race?.maxRunners}" />
			<input type="submit" value="Update race"  onclick="callUpdtaeRace()"/>
			<g:hiddenField name="${race?.id}" value="${race?.id}" id="${race?.id}" />
		 
	</div>