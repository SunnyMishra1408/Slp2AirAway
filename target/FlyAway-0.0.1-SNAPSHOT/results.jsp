<%@page import="com.flyAway.model.Booking"%>
<%@page import="com.flyAway.model.Search"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.flyAway.dbconnection.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&family=Parisienne&family=Roboto+Mono&family=Ubuntu&display=swap"
	rel="stylesheet">

<style>
* {
	margin: 0;
	padding: 0;
}

nav {
	height: 30vh;
	background-color: #CBF1F5;
	font-family: 'Roboto Mono', monospace;
	color: #AA96DA;
	font-size: 1em;
	text-align:center;
}

.fly{
font-size:1.5em;
padding:10px;
letter-spacing:2px;
}

nav p{
text-align:justify;
margin-left:30%;
color:grey;
}

.logout {
	text-decoration: none;
	color: white;
	font-size: .8em;
	border: 1px solid grey;
	border-radius: 20px;
	padding: 5px;
	background-color: #AA96DA;
}

table {
	width: 95%;
	margin:0 auto;
	border-left:2px solid #FCBAD3;
	border-right:2px solid #FCBAD3;
}

table th {
	text-align: left;
	padding: 10px;
	background-color: #FCBAD3;
	color:grey;
	font-family: 'Ubuntu', sans-serif;
}

tbody tr{
font-family: 'Ubuntu', sans-serif;
}

tbody td{
padding: 5px;
}

tbody tr:nth-of-type(even){
background-color: #A6E3E9;
}

.btn{
	text-decoration: none;
	color: white;
	font-size: .8em;
	border: 1px solid grey;
	border-radius: 20px;
	padding: 3px;
	background-color: #AA96DA;
	position: absolute;
    left: 15%;
    top: 0;
    width: 70%;
    text-align: center;
    margin-top:3px;
}
.btn-td{
position:relative;
}

</style>

</head>
<body>

	<nav>
	
	<h1 class="fly">FlyAway</h1>
	<p>Search result 0f flights from <strong><%= Search.source %></strong> to <strong><%= Search.destination %></strong></p>
	<p>Date of flight is <strong><%= Search.date %>(<%= Search.day%>)</strong>  for <strong><%= Search.persons %></strong>  passanger.</p>

	</nav>

	<section class="main">

		<h1
			style="text-align: center;color:#AA96DA; padding: 10px; font-family: 'Roboto Mono', monospace;">Search
			Result</h1>

		<%
		DbConnection db = new DbConnection();
		Connection conn = db.getConnection();
		Statement stmt = conn.createStatement();
		String query = Search.getQuery();
		ResultSet res = stmt.executeQuery(query);
		%>

		<table>
			<thead>
				<tr>
					<th>Flight Name</th>
					<th>Source</th>
					<th>Destination</th>
					<th>Day</th>
					<th>Price</th>
				    <th>Booking</th>
				</tr>
			</thead>

			<tbody>
				<%
				while (res.next()) {
				%>
				<tr>
					<td><%=res.getString(2)%></td>
					<td><%=res.getString(3)%></td>
					<td><%=res.getString(4)%></td>
					<td><%=res.getString(5)%></td>
					<td><%=res.getInt(6)%></td>
					<td class="btn-td">
					<% Booking.price = res.getInt(6);
					   Booking.flight_booking_id =res.getInt(1)+"";
					   Booking.flight_name = res.getString(2);
					%>
					<a href="booking.jsp" class="btn">Book</a>
					</td>
				</tr>
				<%
				}
				%>

			</tbody>

		</table>


	</section>

</body>
</html>