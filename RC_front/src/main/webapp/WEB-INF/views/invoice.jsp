<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
			<h1 style="font-size: 60px">ORDER INVOICE</h1>
			<form:form modelAttribute="cartModel">
				<div class="row">
					<div class="col-md-6" style="border: 2px solid blue;height:150px;spacing:5px;padding:10px">
						<b><h3>${cartModel.payment.cardName}</h3></b><br /><br/> 
						${cartModel.payment.email}<br />
						${cartModel.payment.phone}<br />
					</div>
					<div class="col-md-6" style="border: 2px solid blue;height:150px;spacing:5px;padding:5px">
						<b><h3>Address :</h3></b>
						<c:choose>
							<c:when test="${cartModel.shippingAddress.addAddress1}!=''">   
        ${cartModel.shippingAddress.addAddress1}<br /> 
        ${cartModel.shippingAddress.addAddress2}<br /> 
        ${cartModel.shippingAddress.addCity} - ${cartModel.shippingAddress.addZipCode} <br /> 
        ${cartModel.shippingAddress.addCountry} 
        </c:when>
							<c:otherwise>  

        ${cartModel.billingAddress.addAddress1}<br /> 
        ${cartModel.billingAddress.addAddress2}<br /> 
        ${cartModel.billingAddress.addCity} - ${cartModel.billingAddress.addZipCode} <br /> 
        ${cartModel.billingAddress.addCountry} 
        </c:otherwise>
						</c:choose>
					</div>
				</div><br/><br/><br/>
				<div class="row">
					<div class="col-md-12 table-responsive">
						<table class="table-striped table-hover table-bordered" style="width:100%">
							<tr>
								<th>Product Image</th>
								<th>Product Name</th>
								<th>Product Quantity</th>
								<th>Price</th>
								<th>Subtotal</th>
							</tr>
							<c:forEach items="${cartModel.cartItem}" var="ci">
								<tr>
									<td><img src="${images}/${ci.product.productImage}"
										height="70px" width="70px" /></td>
									<td>${ci.product.productName}</td>
									<td>${ci.quantity}</td>
									<td>&#8377; ${ci.product.productPrice}</td>
									<td>&#8377; ${ci.totalPrice}</td>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="4"><h4>Grand Total</h4></td>
								<th><h4>&#8377; ${cartModel.payment.totalPayment}</h4></th>
							</tr>
						</table>
					</div>
				</div>
<br/><br/><br/>
				<center><input type="submit" value="Confirm" name="_eventId_submit"
					class="btn btn-lg btn-danger" /></center>
			</form:form>
		</div>
		<div class="footer">
			<%@include file="./shared/footer.jsp"%>
		</div>
</body>
</html>
