<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
if (session.getAttribute("userName") == null) {
	session.setAttribute("message", "Login First");
	response.sendRedirect("loginFail.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password Change</title>

<style>
body {
	margin: 0;
	padding: 0;
	background-color: #CBF1F5;
}

.admin {
	width: 50%;
	background-color: #FCBAD3;
	text-align: center;
	font-family: 'Montserrat', sans-serif;
	color: white;
	padding-top: 5px;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}
</style>

</head>
<body>

	<div class="admin">
		<h1>Change Password</h1>

		<form action="changePassword" method="post" class="form">

			<div class="container">
				<label for="npws"><b>New Password</b></label> <input type="text"
					placeholder="Enter new password" name="npsw" required> <label
					for="cpsw"><b>Password</b></label> <input type="text"
					placeholder="Confirm Password" name="cpsw" required>

				<button type="submit">Change Password</button>
			</div>

		</form>

	</div>

</body>
</html>