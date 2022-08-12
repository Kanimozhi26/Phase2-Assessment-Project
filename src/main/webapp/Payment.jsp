<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight List</title>
</head>
<body >
<br>
<a href=HomePage.jsp style="color:black;text-decoration:none;font-size:35px;font-weight:bold;">FlyAway- Phase 2 Assessment</a>
<br><br>
<%
	@SuppressWarnings("unchecked")
	List<String[]> flights=(List<String[]>)session.getAttribute("flights");
	if(flights!=null){
%>
<h1>Payment Page</h1>
<left>
<table border="0">
<%
	for(String[] flight:flights){
%>
<tr>
<th>Price :</th>
<td><%=flight[2]%></td>
</tr>
<br>
</table>
</left>

<%
	}
%>

<a href="Logout">Logout</a>
<br>
<br>
<%
	}
	else{
%>
<h1></h1>
<%
	}
%>



<br>
<div style="border:5px solid black;width:30%;border-radius:20px;padding:20px" align="left">
<form action=BookFlight.jsp method=post>
	<label for=cardno>Enter Debit Card Number :-</label> <input type=text name=cardno id=cardno/><br><br>
	<label for=cvv> Enter CVV:-</label> <input type="password" name=text id=cvv /><br><br>
	<input type=submit value=Pay />
</form>
</div>
</body>
</html>