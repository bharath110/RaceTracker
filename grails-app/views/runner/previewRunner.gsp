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
				${flash.message}<br> <br>
				<h1>Your updates saved</h1>
				<table
					class="table table-striped table-bordered table-hover table-condensed">
					<th>Your Profile Details</th>
					<tr>
						<td>First Name</td>
						<td>
							${runner?.firstName }
						</td>
					</tr>
					<tr>
						<td>Last Name:</td>
						<td>
							${runner?.lastName }
						</td>
					</tr>
					<tr>
						<td>Date Of Birth</td>
						<td>
							${runner?.dateOfBirth }
						</td>
					</tr>
					<tr>
						<td>Gender</td>
						<td>{${runner?.gender }
						</td>
					</tr>
					<tr>
						<td>Address</td>
						<td>
							${runner?.address }
						</td>
					</tr>
					<tr>
						<td>City</td>
						<td>
							${runner?.city }
						</td>
					</tr>
					<tr>
						<td>State</td>
						<td>
							${runner?.state }
						</td>
					</tr>
					<tr>
						<td>Zip code</td>
						<td>
							${runner?.zipcode }
						</td>
					</tr>
					<tr>
						<g:form controller="Runner" action="edit" email="${runner?.email}">
							<g:hiddenField name="id" value="${runner?.id }" />
						</g:form>
				</table>
				

			</div>
		</div>
	</div>

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
	<table class="table loadTable" >

    <thead>
            <tr bgcolor="#f0f0f0" >
		
				 <th> First Name:</th>
				 <th>Last Name:</th>
  			     <th> Date Of Birth:</th>
   				 <th>Gender:</th>
   				 <th>Address:</th>
  			     <th>City:</th>   
  			     <th>State:</th>
   				 <th>Max Runner</th>
		  </tr>
		  
  </thead>
 --%>