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
	<div class="container">

		<div class="header">
			<%@include file="navbar.jsp"%>
		</div>

		<div class="content">
		<form:form modelAttribute="registerModel">
		<h2>Do you want to continue ?</h2>
		<input type="submit" name="_eventId_submit" class="btn btn-success btn-lg" value="Continue"/>	
		<input type="submit" name="_eventId_edit" class="btn btn-success btn-lg" value="Back"/>
		</form:form>
		</div>

	</div>
	
	<div class="footer">
		<%@include file="../shared/footer.jsp"%>
	</div>
</body>
</html>