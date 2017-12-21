<%@ page language="java" isELIgnored="false"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<s:url value="/resources/images" var="images" />
<s:url value="/resources/js" var="js" />
<s:url value="/resources/css" var="css" />

<link rel="stylesheet" href="${css}/bootstrap.min.css" />
<link rel="stylesheet" href="${css}/style.css" />
<script src="${js}/jquery.js"></script>
<script src="${js}/bootstrap.min.js"></script>
</head>
<body>
<div class="wrapper">

	<div class="content">
		<div class="col-md-2"></div>
		<div class="col-md-8 jumbotron">
			<h1>Welcome to Login</h1>
			<form class="form" action="login" method="POST">
			<c:if test="${error}">
			<p style="color:red;font-size:20px">${error}</h1>
			</c:if>
				<div class="form-group">
					<label> <span class="glyphicon glyphicon-user"></span>
						USERNAME
					</label> <input type="text" class="form-control" name="username" required>
				</div>
				<div class="form-group">
					<br /> <label> <span class="glyphicon glyphicon-pencil"></span>
						PASSWORD
					</label> <input type="password" class="form-control" name="password"
						required>
				</div>
				<div>
					<input type="submit" class="btn btn-default" value="Login"/>
				</div>
			</form>
			<br /> <br /> <a href="register"><span
				class="glyphicon glyphicon-wrench"></span> Signup</a>
		</div>
		<div class="col-md-2"></div>
	</div>

	<div class="row footer">
		<div class="col-md-12">
			<nav class="navbar navbar">
				<center>
					<p>Copyright 2017 © RacerClub.com | All Rights Reserved By
					Rishikesh</p>
				</center>
			</nav>
		</div>
	</div>
</div>
</body>