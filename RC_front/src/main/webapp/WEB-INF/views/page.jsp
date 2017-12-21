<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>Racers Club - ${title}</title>

<script>
	window.menu = '${title}';
</script>

<s:url value="/resources/images" var="images" />
<s:url value="/resources/js" var="js" />
<s:url value="/resources/css" var="css" />

<!-- Stylesheets -->
<link rel="stylesheet" href="${css}/bootstrap.min.css" />
<link rel="stylesheet" href="${css}/bootstrap-theme.min.css" />
<link rel="stylesheet" href="${css}/jquery.dataTables.min.css" />
<link rel="stylesheet" href="${css}/dataTables.bootstrap.min.css" />
<link rel="stylesheet" href="${css}/style.css" />

<!-- Scripts -->
<script src="${js}/jquery.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<script src="${js}/jquery.dataTables.min.js"></script>
<script src="${js}/dataTables.bootstrap.min.js"></script>
<script src="${js}/datatablescript.js"></script>
<script src="${js}/myapp.js"></script>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	display: block;
	height: 100%;
	line-height: 1;
	margin: 10px auto;
}
</style>
</head>
<body>
	<div class="wrapper">

		<div class="header">
			<!-- navbar import -->
			<%@include file="./shared/navbar.jsp"%>
		</div>

		<div class="content">
			<!-- Page content -->
			<!-- Home Page -->
			<c:if test="${userClickHome == true }">
				<%@include file="./home.jsp"%>
			</c:if>
			<!-- About Page -->
			<c:if test="${userClickAbout == true }">
				<%@include file="./about.jsp"%>
			</c:if>
			<!-- Contact Page -->
			<c:if test="${userClickContact == true }">
				<%@include file="./contact.jsp"%>
			</c:if>
			<!-- View All Products Page -->
			<c:if test="${userClickProducts == true }">
				<%@include file="./products.jsp"%>
			</c:if>
			<!-- Product Management Page -->
			<c:if test="${userClickProductCRUD == true }">
				<%@include file="./productCRUD.jsp"%>
			</c:if>
			<!-- Product Update Page -->
			<c:if test="${userClickProductCRUDUpdate == true }">
				<%@include file="./productUpdate.jsp"%>
			</c:if>
			<!--Product Details Page -->
			<c:if test="${userClickProductDetails==true}">
				<%@include file="productDetails.jsp"%>
			</c:if>

			<!-- Cart Page -->
			<c:if test="${userClickCart==true}">
				<%@include file="cart.jsp"%>
			</c:if>
			
			
		</div>

		<div class="footer">
			<!-- footer import -->
			<%@include file="./shared/footer.jsp"%>
		</div>

	</div>
</body>
</html>
