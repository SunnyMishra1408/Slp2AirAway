<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.flyAway.dbconnection.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%
	if(session.getAttribute("userName")==null){
		session.setAttribute("message", "Login First");
    	response.sendRedirect("loginFail.jsp");
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
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
	height: 20vh;
	background-color: #CBF1F5;
	font-family: 'Roboto Mono', monospace;
	color: #AA96DA;
	font-size: 2em;
}

ul {
	display: flex;
	justify-content: space-between;
	list-style: none;
	padding: 0 10px;
}

li {
	margin-top: 10px;
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

tbody tr:nth-of-type(even){
background-color: #A6E3E9;
}

</style>

</head>
<body>

	<nav>
		<ul>
			<li>FlyAway</li>
			<li>
				<ul>
					<li style="margin: 5px;"><a class="logout" href="passwordChange.jsp">Change
							Password</a></li>
					<li style="margin: 5px;"><a class="logout" href="logoutServlet">logout</a></li>
				</ul>
			</li>
		</ul>

	</nav>

	<section class="main">

		<h1
			style="text-align: center;color:#AA96DA; padding: 10px; font-family: 'Roboto Mono', monospace;">Admin
			Dashboard</h1>

		<%
		DbConnection db = new DbConnection();
		Connection conn = db.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet res = stmt.executeQuery("select * from flights");
		%>

		<table>
			<thead>
				<tr>
					<th>Flight ID</th>
					<th>Flight Name</th>
					<th>Source</th>
					<th>Destination</th>
					<th>Day</th>
					<th>Price</th>
				</tr>
			</thead>

			<tbody>
				<%
				while (res.next()) {
				%>
				<tr>
					<td><%=res.getInt(1)%></td>
					<td><%=res.getString(2)%></td>
					<td><%=res.getString(3)%></td>
					<td><%=res.getString(4)%></td>
					<td><%=res.getString(5)%></td>
					<td><%=res.getInt(6)%></td>
				</tr>
				<%
				}
				%>

			</tbody>

		</table>


	</section>

</body>
</html>