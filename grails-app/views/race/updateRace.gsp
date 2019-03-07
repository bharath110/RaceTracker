
<h1>Race updated</h1>
	<table class="table loadTable" >

    <thead>
            <tr bgcolor="#f0f0f0" >
		
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
    			<td>${race?.id}</td>
    			<td>${race?.raceCode}</td>
       		    <td>${race?.name}</td>
      		    <td>${race?.startDate}</td>
       		    <td>${race?.city}</td>
                <td>${race?.state}</td>
                <td>${race?.distance }</td>
                <td>${race?.cost }</td>
                <td>${race?.maxRunners }
            	
    
 	   </tr>
	
    <!-- Alternate CSS classes for the rows. -->
  
</tbody>
</table>
<%--<td>
            		<g:form controller="Race" action="edit" >
					<g:hiddenField name="id" value="${race?.id}" id="${race?.id}"/> <input
						type="submit" value="Edit" />
						
					</g:form><br>
			</td><td><g:form controller="Race" action="delete">
			
					<g:hiddenField name="id" value="${race?.id}"  id="${race?.id}"/> <input
	
						type="submit" value="Delete" />
			</g:form>
			
			</td>--%>