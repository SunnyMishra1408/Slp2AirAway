<%@page import="com.flyAway.model.Search"%>
<%@page import="com.flyAway.model.Booking"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>

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

span{
font-size:1.5em;
font-family: 'Roboto Mono', monospace;
}

h1,h2{
text-align:center;
font-family: 'Montserrat', sans-serif;
letter-spacing:2px;
color:#AA96DA;

}
 hr{
 border:2px solid white;
 width:80%;
 align:center;
 }
 
 table {
	width: 50%;
	margin:0 auto;
	border-left:2px solid #FCBAD3;
	border-right:2px solid #FCBAD3;
}
 
 table th {
	padding: 10px;
	background-color: #FCBAD3;
	color:grey;
	font-family: 'Ubuntu', sans-serif;
}

tbody tr{
font-family: 'Ubuntu', sans-serif;
}

tbody tr:nth-of-type(even){
background-color: #A6E3E9;
}
 
</style>


</head>
<body>

<%
Booking.card_number = request.getParameter("card_number");
Booking.name_on_card = request.getParameter("name_on_card");
%>

<h1>Ticket is confirmed</h1>
<hr>
<div>

<table>

<thead>
<tr>
<th colspan="2">Ticket Detail</th>

</tr>
</thead>

<tbody>

<tr>
<td>Flight ID </td>
<td><%=Booking.flight_booking_id %></td>

</tr>

<tr>
<td>Flight Name </td>
<td><%=Booking.flight_name %></td>
</tr>

<tr>
<td>Date of Journey</td>
<td><%=Search.date %></td>
</tr>

<tr>
<td>Passanger Name</td>
<td><%=Booking.passenger_name %></td>
</tr>

<tr>
<td>Passanger Email</td>
<td><%=Booking.passenger_email %></td>
</tr>

<tr>
<td>Passanger phone number</td>
<td><%=Booking.passenger_phone %></td>
</tr>

</tbody>

</table>

</div>
<hr>
<h2>Thanks for booking with us.Happy Journey!</h2>

</body>
</html>