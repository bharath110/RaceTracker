<h3>Admin actions</h3>

<div class="buttonShow" id="buttonShow" >
      <g:submitButton name="Create Race" id="btncreateRace" /> 	
    
       
	<g:formRemote name="myform"
					url="[controller:'Race', action:'ListRace']"  update="divShowRaceList">
	<g:submitButton name="Show RaceList" id="buttonShowrace" /> 	 
	</g:formRemote>	
		
</div>