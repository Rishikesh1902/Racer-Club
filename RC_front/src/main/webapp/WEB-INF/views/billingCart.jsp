<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>Racers Club - ${title}</title>
<script>
	window.menu = '${title}';
</script>
<s:url value="/resources/css" var="css" />
<s:url value="/resources/js" var="js" />
<s:url value="/resources/images" var="images" />
<!-- Style -->
<link rel="stylesheet" href="${css}/jquery.dataTables.min.css" />
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<link rel="stylesheet" href="${css}/bootstrap-theme.min.css" />
<link rel="stylesheet" href="${css}/dataTables.bootstrap.min.css" />
<link rel="stylesheet" href="${css}/style.css">

<!-- Latest compiled JavaScript -->
<script type="text/javascript" src="${js}/jquery.js"></script>
<script type="text/javascript" src="${js}/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${js}/bootstrap.min.js"></script>
<script type="text/javascript" src="${js}/datatableScript.js"></script>
<script type="text/javascript" src="${js}/dataTables.bootstrap.min.js"></script>

<!-- Self coded js file -->
<script src="${js}/myapp.js"></script>
<style>
body {
	color: #5a5a5a;
	background-color: #F0F4F5;
}
</style>
</head>
<body>
	<div class="container wrapper">
		<div class="header">
			<%@include file="registration/navbar.jsp"%>
		</div>

		<div class="content">
			<div class="row form-container" style="padding-top: 10%">
				<div class="col-md-3"></div>
				<form:form modelAttribute="billing">
					<div class="col-md-7">
						<div style="font-size: 60px; color: black;text-align:center;text-decoration:underline;">Billing
							Address</div>
						<div style="border: 2px solid grey;text-align:center;border-radius:15px;">
							<div><h3>${billing.addAddress1}</h3></div>
							<div><h3>${billing.addAddress2}</h3></div>
							<div><h3>${billing.addCity}</h3></div>
							<div><h3>${billing.addState} - ${billing.addZipCode}<h3></div>
							<div><h3>${billing.addCountry}</h3></div>
						</div>
					</div>
				</form:form>
			</div>
			<br/>
			<br/>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-7">
					<center><a href="shipping" class="btn btn-danger btn-lg">Continue</a></center>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<%@include file="./shared/footer.jsp"%>
	</div>
</body>
</html>
