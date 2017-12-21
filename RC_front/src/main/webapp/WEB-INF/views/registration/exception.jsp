<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<html>
<head>

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
	
			<!-- here the href's value will be used to decide the 
				 controller to be executed on click of this link.
				 here "home" is mapped in spring mvc controller-->
			<a href="home.obj">Home</a>
			<fieldset>
				<legend>Error occurred</legend>
				${exception}
			</fieldset>
		</div>
		
			<div class="footer">
		<%@include file="../shared/footer.jsp"%>
	</div>
		
	</body>
</html>