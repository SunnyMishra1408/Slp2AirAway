<%@page import="com.flyAway.model.Booking"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&family=Parisienne&family=Roboto+Mono&family=Ubuntu&display=swap"
	rel="stylesheet">

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

input[type=text], input[type=email], input[type=number] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

.btn {
	width: 100%;
	height: 3em;
}

span {
	font-size: 1.5em;
	font-family: 'Roboto Mono', monospace;
}

h1 {
	text-align: center;
	font-family: 'Montserrat', sans-serif;
	letter-spacing: 2px;
}
</style>


</head>
<body>

	<h1>Booking Detail</h1>


	<div class="admin">
		<h1>Enter person details</h1>

		<form action="payment.jsp" class="form">

			<div class="container">
				<label for="name"><span>Enter Name</span></label> <input type="text"
					placeholder="Enter Name " name="name" required> <label
					for="email"><span>Enter Email</span></label> <input type="email"
					placeholder="Enter email" name="email" required><label
					for="phone"><span>Enter phone number</span></label> <input
					type="number" placeholder="Enter phone number " name="phone"
					required>

				<button class="btn" type="submit">Submit</button>
			</div>

		</form>

	</div>


</body>
</html>