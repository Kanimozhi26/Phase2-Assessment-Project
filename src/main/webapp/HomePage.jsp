<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway- Phase 2 Assessment</title>
</head>
<body >
<h1>FlyAway- Phase 2 Assessment</h1>
<div align="left">
<a href="AdminPage.jsp">Admin Login</a>
</div>
<%
	@SuppressWarnings("unchecked")
	HashMap<String,String> user=(HashMap<String,String>)session.getAttribute("user");
	if(user!=null){
%>
<p>Welcome <%=user.get("name") %></p>
<a href="Logout">Logout</a>
<%
	}else{
%>
<a href=UserPage.jsp>User Login</a>
<%
	}
%>
<br><br>
<left>
<div style="border:5px solid black;width:25%;border-radius:20px;padding:20px" align="left">
<form action=FlightList method=post>
	<label for=from>From :-</label> <input type=text name=from id=from/><br><br>
	<label for=to>To :-</label> <input type=text name=to id=to/><br><br>
	<label for=departure>Departure :-</label> <input type=date name=departure id=departure/><br><br>
	<label for=travellers>Travelers :-</label> <input type=number name=travellers id=travellers/><br><br>
	<input type=submit value=Search /> <input type=reset />
</form>
</div>
</left>
</body>
</html>