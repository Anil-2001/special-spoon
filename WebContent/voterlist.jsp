<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Voter List</title>
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<script type="text/javascript"
	src="resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
</head>
<body style="background-color:#E0FFFF">
	<br><br>

	<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "voting_system";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
	<h1 align="center">Voter List</h1>
	
		<table align="center" class="table table-striped">
				<tr>
				
					<th>Voter Name</th>
					<th>Gender</th>
					<th>State No.</th>
					<th>district</th>
					<th>email</th>
					<th>dob</th>
				</tr>
			
			
			<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql = "select * from voter_table";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getString("voter_name") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("state_no") %></td>
<td><%=resultSet.getString("district") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("dob") %></td>

</tr>

<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
				
					<tr>
						<td><c:out value="${s.count}" /></td>
						<td><c:out value="${v.id}" /></td>
						<td><c:out value="${v.voterName}" /></td>
						<td><c:out value="${v.password}" /></td>
						<td><c:out value="${v.stateNo}" /></td>
						<td><c:out value="${v.districtName}" /></td>
						<td><c:out value="${v.gender}" /></td>
						<td><c:out value="${v.imgUrl}" /></td>
						<td><c:out value="${v.email}" /></td>
						<td><c:out value="${v.dob}" /></td>
						
					</tr>
			
			</tbody>
		</table>
	
	
	<div align="center"><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<button type="button" class="btn btn-warning"><a href="aLoginController" style="color: red">Logout</a></button>
		
	</div>
</body>
</html>