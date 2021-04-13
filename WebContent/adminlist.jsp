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
<title>Admin List</title>
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<script type="text/javascript"
	src="resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
</head>
<body style="background-color:#DDA0DD">
	<br>
	<div align="center">
	<br>
	<h3 style="color: blue" align="center">Welcome ${username} to the Admin Panel !!!</h3>
	<br>
		<!-- <a href="AdminController?actions=admin_list"></a> -->
		<button type="button" class="btn btn-primary"><h2><a href=AdminController?actions=admin_new style="color: black">Register Admin</a></h2></button>
		<button type="button" class="btn btn-secondary"><h2><a href=AdminController?actions=voter_list style="color: blue">Voter Info</a> </h2></button>
		<button type="button" class="btn btn-success"><a href=AdminController?actions=ballot_list style="color: purple"><h2>Ballot<h2></a></button>
			
	</div>
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
<h1 align="center">Admin List</h1>
<table align="center" class="table table-striped">
<tr>
					
					<th>Admin Name</th>
					<th>Password</th>
				</tr>


<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql = "select * from admin_table";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getString("admin_name") %></td>
<td><%=resultSet.getString("password") %></td>

</tr>

<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
	
	
		<table class="table table-striped">
			<thead>
				
			</thead>
			<tbody>
				<c:forEach items="${admins}" var="s" varStatus="d">
					<tr>
						<td><c:out value="${d.count}" /></td>
						<td><c:out value="${s.id}" /></td>
						<td><c:out value="${s.adminName}" /></td>
						<td><c:out value="${s.password}" /></td>

						<td><a href=AdminController?actions=admin_edit&id=${s.id}
							style="color: blue">Edit</a> || <a
							href=AdminController?actions=admin_delete&id=${s.id}
							style="color: red">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	
	<br><br><br><br><br><br><br><br><br>
	<div align="center">
	<button type="button" class="btn btn-danger"> <a href="aLoginController" style="color: white"><h2>Logout<h2></a></button>
	</div>
</body>
</html>