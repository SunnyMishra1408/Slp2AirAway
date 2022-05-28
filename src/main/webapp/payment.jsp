<%@page import="com.flyAway.model.Search"%>
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

body{
margin:0;
padding:0;
background-color:#CBF1F5;
}

.admin {
	width: 50%;
	background-color: #FCBAD3;
	text-align: center;
	font-family: 'Montserrat', sans-serif;
	color: white;
	padding-top: 5px;
	position:absolute;
	left:50%;
	top:50%;
	transform:translate(-50%,-50%);
}

input[type=text], input[type=email],input[type=number] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

.btn{

width:100%;
height:3em;
}

span{
font-size:1.5em;
font-family: 'Roboto Mono', monospace;
}

h1{
text-align:center;
font-family: 'Montserrat', sans-serif;
letter-spacing:2px;
}

</style>


</head>
<body>

<%
Booking.passenger_name = request.getParameter("name");
Booking.passenger_email = request.getParameter("email");
Booking.passenger_phone= request.getParameter("phone");
System.out.println(Booking.price);
int amount = Search.persons * Booking.price;

%>


<h1>Payment Detail</h1>


		<div class="admin">
			<h1>Enter Card details</h1>

			<form action="confirmation.jsp" class="form">

					<div class="container">
						<label for="card_number"><span>Enter Card Number</span></label> <input type="text"
							placeholder="Enter card number " name="card_number" required> <label
							for="name_on_card"><span>Enter Card Holder Name</span></label> <input type="text"
							placeholder="Enter card holder name" name="name_on_card" required>
							<p><strong>Number of person :</strong> <%=Search.persons%></p>
							<p><strong>X</strong></p>
							<p><strong>Price per person :</strong> <%=Booking.price%></p>
							<p><strong>Total Amount :</strong> <%=amount%></p>
                         
						<button class="btn" type="submit">Pay</button>
					</div>

				</form>

		</div>


</body>
</html>