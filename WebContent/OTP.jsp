<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="styleSheet" href="css/style.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OTP Verification</title>
</head>
<body style="background-color:#CCCCFF">
	<center>
		<div class="main">
		<form action="OTP" method="post">
			<table border="1" bordercolor="pink">
				<thead>
					<h1><tr>OTP Verification</tr></h1>
				</thead>
				<br>
				<tr>
					<td>Enter OTP</td>
					<td><input type="text" name="votp"></td>
				</tr>
				<tr>
					<td><input type="submit" value="verify OTP" id="btn"></td>
					<td><input type="submit" value="Clear" id="btn1"></td>
				</tr>
			</table>
					

			</form>
		</div>
	</center>
</body>
</html>