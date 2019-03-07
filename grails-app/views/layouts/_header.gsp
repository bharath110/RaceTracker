<%	  
	response.setHeader("cache-control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
	response.setHeader("cache-control","no-store"); //Directs caches not to store the page under any circumstance
	response.setDateHeader("expires", 0); //Causes the proxy cache to see the page as "stale"
	response.setHeader("pragma","no-cache"); //Any stupid browser should recognise what this means 	
%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Prevent client cache -->
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="-1">
	<meta http-equiv="pragma" content="no-cache">
	
<div id="header">
<p><a class="header-main"
href="${resource(dir:'')}">RaceTrack</a></p>
<p class="header-sub">When's your next race?</p>
</div>