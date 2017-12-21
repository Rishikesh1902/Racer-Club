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
	<div class="container">

		<div class="header">
			<%@include file="navbar.jsp"%>
		</div>

		<div class="content">
<a href="${contextRoot}/login"><span class="glyphicon glyphicon-user"></span> Login</a>
		<h2>Welcome , you have successfully registered .</h2>
		</div>

	</div>
	
	<div class="footer">
		<%@include file="../shared/footer.jsp"%>
	</div>
</body>
</html>