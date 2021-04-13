<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

</head>
<body style="background-color:powderblue;">

<!--to display logged-in user name, using the session in controller.
	also called EL (Expression Language)  -->
	
	<div align="center"> <br><br>
	<h1 style="color: Blue">Welcome To </h1>
		<h1>Online Voting System</h1>
		<br> <br>
		
		<h3 style="color: red">${votingSuccessMsg}</h3>
	</div>

	<div align="center">
		<h2><a href="voterlogin.jsp" style="color: red">Voter</a> </h2><br>
		<h2><a href="adminlogin.jsp" style="color: green">Admin</a></h2> 
	</div>


	
</body>
</html>