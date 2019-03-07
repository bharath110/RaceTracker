
<%	  
	response.setHeader("cache-control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
	response.setHeader("cache-control","no-store"); //Directs caches not to store the page under any circumstance
	response.setDateHeader("expires", 0); //Causes the proxy cache to see the page as "stale"
	response.setHeader("pragma","no-cache"); //Any stupid browser should recognise what this means 	
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Prevent client cache -->
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="-1">
	<meta http-equiv="pragma" content="no-cache">
	
<title><g:layoutTitle default="Grails" /></title>

<style type="text/css">
#header {
	background: #48802c;
	padding: 2em 1em 2em 1em;
	margin-bottom: 1em;
}

a.header-main:link, a.header-main:visited {
	color: #fff;
	font-size: 3em;
	font-weight: bold;
}
</style>



<asset:stylesheet src="application.css" />
<asset:stylesheet src="bootstrapFile.css" />
<asset:stylesheet src="bootstrapFontAwsome.css" />
<asset:javascript src="application.js" />
<asset:javascript src="jquery-1.12.4.js" />
<asset:javascript src="Jquery-validation.js" />

<g:layoutHead />
</head>
<body>
	<g:render template="/layouts/header" />

	<g:layoutBody />


	<div id="spinner" class="spinner" style="display: none;">
		<g:message code="spinner.alt" default="Loading&hellip;" />
	</div>
</body>
</html>
