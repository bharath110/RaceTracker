
<%	  
	response.setHeader("cache-control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
	response.setHeader("cache-control","no-store"); //Directs caches not to store the page under any circumstance
	response.setDateHeader("expires", 0); //Causes the proxy cache to see the page as "stale"
	response.setHeader("pragma","no-cache"); //Any stupid browser should recognise what this means 	
	response.sendRedirect("race/goToLogin")
%><%--

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

<meta name="layout" content="main" />
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/jquery-1.11.0.min.js"></script>
</head>

<body>
	<g:link controller="Race" action="goToLogin">Continue to Login</g:link>
	<div class="container">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>

			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="images\marathon theme image-3.png" alt="Flower"
						height="100%" width="100%">
				</div>
				<div class="item">
					<img src="images\marathon theme image-1.png" alt="Chania"
						height="100%" width="100%">
				</div>

				<div class="item">
					<img src="images\marathon theme image-2.png" alt="Chania"
						height="100%" width="100%">
				</div>



			</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

	</div>
 <div class="panel-footer-R">Panel Footer</div>
</body>
</html>

--%>