<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<html>
<head>

<spring:url value="/resources/images" var="images" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/css" var="css" />

<!-- Stylesheets -->
<link rel="stylesheet" href="${css}/bootstrap.min.css" />
<link rel="stylesheet" href="${css}/bootstrap-theme.min.css" />
<link rel="stylesheet" href="${css}/style.css" />

<!-- Scripts -->
<script src="${js}/jquery.js"></script>
<script src="${js}/bootstrap.min.js"></script>
</head>

<body>
	<div class="container wrapper">

		<div class="header">
			<%@include file="navbar.jsp"%>
		</div>

		<div class="content">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="form-container col-md-8 jumbotron">
					<form:form class="form-horizontal" method="POST" modelAttribute="user">
					<h1>Sign Up to access</h1>
						<h3>Registration Form</h3>
						<hr/>

						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="userName">UserName</label>
								<form:input path="userName" type="text" class="form-control"
									placeholder="flint" />
								<div class="has-error">
									<form:errors style="color:red" path="userName"
										class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="userFullName">UserFullName</label>
								<form:input path="userFullName" type="text" class="form-control"
									placeholder="flint salvatore" />
								<div class="has-error">
									<form:errors style="color:red" path="userFullName"
										class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="role">Role</label>
								<form:select path="role" type="text" class="form-control">
									<form:option value="User" label="User" selected="true" />
									<form:option value="Supplier" label="Supplier" />
								</form:select>
								<div class="has-error">
									<form:errors style="color:red" path="role"
										class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="password">Password</label>
								<form:input path="password" type="password"
									class="form-control" placeholder="pass@123" />
								<div class="has-error">
									<form:errors style="color:red" path="password"
										class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="userConPassword">Confirm
									Password</label>
								<form:input path="userConPassword" type="password"
									class="form-control" placeholder="pass@123" />
								<div class="has-error">
									<form:errors style="color:red" path="userConPassword"
										class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="userEmail">Email</label>
								<form:input path="userEmail" type="email"
									placeholder="abc@xyz.com" class="form-control" />
								<div class="has-error">
									<form:errors style="color:red" path="userEmail"
										class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="userMobile">Mobile
									Number</label>
								<form:input path="userMobile" type="text"
									placeholder="+919945678902" class="form-control" maxlength="13"
									minlength="13" />
								<div class="has-error">
									<form:errors style="color:red" path="userMobile"
										class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="userSecurityQ">Security
									Question</label>
								<form:select path="userSecurityQ" class="form-control">
									<form:option value="Name of the first pet"
										label="Name of the first pet" selected="true" />
									<form:option value="Name of the favourite book"
										label="Name of the favourite book" />
									<form:option value="Name of the favourite sport"
										label="Name of the favourite sport" />
								</form:select>
								<div class="has-error">
									<form:errors style="color:red" path="userSecurityQ"
										class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="userSecurityA">Security
									Answer</label>
								<form:input path="userSecurityA" type="text" placeholder="demo"
									class="form-control" />
								<div class="has-error">
									<form:errors style="color:red" path="userSecurityA"
										class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div>
								<div class="form-actions floatRight">
									<input type="submit" name="_eventId_submit"
										class="btn btn-primary btn-sm" value="Register" />
									</th>
								</div>
							</div>
						</div>
					</form:form>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>

		<div class="footer">
			<%@include file="../shared/footer.jsp"%>
		</div>

	</div>
</body>
</html>