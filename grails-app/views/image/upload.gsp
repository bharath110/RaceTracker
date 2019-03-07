
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />

<title>Home</title>

<script src="../js/Jquery-validation.js"></script>
<link rel="stylesheet" href="../css/jquery-ui.css">

<script src="../js/jquery-1.12.4.js"></script>
<script src="../js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#tabs").tabs();
	});
</script>
<link rel="stylesheet" href="../css/bootstrapFile.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>

<body>
	<div id="tabs">
		<ul>
			<li><a href="#profileDetail">Pic Upload</a></li>
			</li>
			<li><a href="#picId">Show pic</a></li>
		</ul>
		<div id="profileDetail" class="profile container">
			<div class="profile container">



				<g:form url="[controller:'Image', action:'save']"
					enctype="multipart/form-data">
					<fieldset class="form">
						Name:<input type="text" id="payload" name="name" /> Pic:<input
							type="file" id="payload" name="imageData" />
					</fieldset>
					<fieldset class="buttons">
						<button type="submit">Submit</button>
					</fieldset>
				</g:form>
			</div>

		</div>
		<div id="picId" class="ListDivId container">
			<div id="picDisplay">
				<g:form name="form" url="[controller:'Image', action:'display']" update="picDisplay">
				
				Id:<input type="text" id="picidShow" name="id" />
				<fieldset class="buttons">
					<button type="submit">Submit</button>
				</fieldset>
				
				
				</g:form>
				<%--

		--%>
			</div>
		</div>
</body>
</html>




















