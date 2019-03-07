<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Home</title>

</head>
<body>
<body>

	${flash.message}<br>
	<br>

	<div class="body">
		<h1>Login</h1>
		<g:if test="${flash.message}">
			<div class="message">
				${flash.message}
			</div>
		</g:if>
		<g:formRemote name="" url="[controller:'Race', action:'login']">

			<table>
				<tbody>
					<tr>
						<td class="name"><label for="login">User:</label></td>
						<td><input type="text" id="User" name="User" /></td>
					</tr>
					<tr>
						<td class="name"><label for="password">Password:</label></td>
						<td valign="top"><input type="password" id="password"
							name="password" /></td>

					</tr>
					<tr>
						<td><label for="Role">Role:</label><select name="role">
								<option value="admin">Admin</option>
								<option value="user">User</option>

						</select></td>
					</tr>
					<tr>
						<td><g:submitButton name="Login" /></td>
					</tr>
				</tbody>
			</table>

		</g:formRemote>
	</div>
</body>
</html>

