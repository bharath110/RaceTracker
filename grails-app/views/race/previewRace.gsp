<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Home</title>
<style type="text/css" media="screen">
#status {
	background-color: #eee;
	border: .2em solid #fff;
	margin: 2em 2em 1em;
	padding: 1em;
	width: 12em;
	float: left;
	-moz-box-shadow: 0px 0px 1.25em #ccc;
	-webkit-box-shadow: 0px 0px 1.25em #ccc;
	box-shadow: 0px 0px 1.25em #ccc;
	-moz-border-radius: 0.6em;
	-webkit-border-radius: 0.6em;
	border-radius: 0.6em;
}

.ie6 #status {
	display: inline;
	/* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
}

#status ul {
	font-size: 0.9em;
	list-style-type: none;
	margin-bottom: 0.6em;
	padding: 0;
}

#status li {
	line-height: 1.3;
}

#status h1 {
	text-transform: uppercase;
	font-size: 1.1em;
	margin: 0 0 0.3em;
}

#page-body {
	margin: 2em 1em 1.25em 18em;
}

h2 {
	margin-top: 1em;
	margin-bottom: 0.3em;
	font-size: 1em;
}

p {
	line-height: 1.5;
	margin: 0.25em 0;
}

#controller-list ul {
	list-style-position: inside;
}

#controller-list li {
	line-height: 1.3;
	list-style-position: inside;
	margin: 0.25em 0;
}

@media screen and (max-width: 480px) {
	#status {
		display: none;
	}
	#page-body {
		margin: 0 1em 1em;
	}
	#page-body h1 {
		margin-top: 0;
	}
}
</style>
</head>
<body>
<body>
<div id="nav">
<div class="homePagePanel">
<div class="panelTop"></div>
<div class="panelBody">
	${flash.message}<br>
	<br>
	<h1>Race updated</h1>
	<table class="table loadTable" >

    <thead>
            <tr bgcolor="#f0f0f0" >
		
				 <th>Race Id</th>
				 <th>Race Code</th>
  			     <th>Race Name</th>
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
            	<td><g:form controller="Race" action="edit" >
					<g:hiddenField name="id" value="${race?.id}" /> <input
						type="submit" value="Edit" />
						
			</g:form><br>
			<g:form controller="Race" action="delete">
			
					<g:hiddenField name="id" value="${race?.id}" /> <input
	
						type="submit" value="Delete" />
			</g:form>
			</td>
    
 	   </tr>
	
    <!-- Alternate CSS classes for the rows. -->
  
</tbody>
</body>
</html>
<%--
String name
String raceCode
	Date startDate
	String city
	String state
	BigDecimal distance
	BigDecimal cost
	Integer maxRunners
 --%>