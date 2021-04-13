<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<script type="text/javascript"
	src="resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="resources/css/login.css">
<!-- css file link -->
</head>
<body style="background-color:#40E0D0">
	<div align="center">
		<h2><a href="home.jsp" style="color: green">Home</a> </h2>
		<h2><a href="VoterController" style="color: red">Register</a></h2>
	</div>
	<br>
	<div align="center">
		<br>
		<h2>Voter LogIn Page</h2>
	</div>

	<div id="container">
		<div class="row col-md-12">
			<div class="col-md-4"></div>
			<div class="col-md-4 jumbotron">
				<form action="vLoginController" method="post"
					class="form-horizontal">
					<span style="color: red">${registrationSuccessMsg}</span> <span
						style="color: red">${loggedOutMsg}</span>
					<div class="form-group">
						<label>Username</label> <input type="text" name="uname"
							value="${username}" class="form-control">
					</div>
					<br>
					<div class="form-group">
						<label>Password</label> <input type="password" name="pass"
							value="${password}" class="form-control">
					</div>
					<br>
					<div class="form-group">
						<label>Email</label> <input type="email" name="vmail"
							value="${email}" class="form-control">
					</div>
					<br>
					<div class="form-group">
						<input type="checkbox" name="remember-me" class="form-control">RememberMe
					</div>
					<div class="form-group">
						<input type="submit" value="Login" class="btn btn-success">
					</div>
					<span style="color: red">${loginFailMsg}</span> <br>
					<%-- <input
						type="button" value="${forgotPassMsg}" name="forgotPass" id="btn"> --%>
					<br> <input type="submit" value="Clear" id="btn1">
				</form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
</body>
</html>