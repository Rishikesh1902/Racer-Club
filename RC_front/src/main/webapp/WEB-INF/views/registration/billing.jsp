<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<div class="wrapper">

		<div class="header">
			<%@include file="navbar.jsp"%>
		</div>

		<div class="content">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="form-container col-md-8 jumbotron">
					<form:form class="form-horizontal" method="POST"
						modelAttribute="address">
						<h3>Billing Address</h3>

						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="addAddress1">Address1</label>
								<form:input path="addAddress1" type="text" class="form-control"
									placeholder="56-R" />
								<div class="has-error">
									<form:errors style="color:red" path="addAddress1"
										class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="addAddress2">Address2</label>
								<form:input path="addAddress2" type="text" class="form-control"
									placeholder="Vasant Vihar" />
								<div class="has-error">
									<form:errors style="color:red" path="addAddress2"
										class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="addCity">City</label>
								<form:input path="addCity" type="text" class="form-control"
									placeholder="Delhi" />
								<div class="has-error">
									<form:errors style="color:red" path="addCity"
										class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="addZipCode">Zip
									Code</label>
								<form:input path="addZipCode" type="text" class="form-control"
									placeholder="110057" />
								<div class="has-error">
									<form:errors style="color:red" path="addZipCode"
										class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="addState">State</label>
								<form:input path="addState" type="text" class="form-control"
									placeholder="Delhi" />
								<div class="has-error">
									<form:errors style="color:red" path="addState"
										class="help-inline" />
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="addCountry">Country</label>
								<form:input path="addCountry" type="text" class="form-control"
									placeholder="India" />
								<div class="has-error">
									<form:errors style="color:red" path="addCountry"
										class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<input type="submit" name="_eventId_submit" value="register"
									class="btn btn-primary btn-md" />
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