q<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<nav class="navbar navbar-default" style="font-size: 8pt">

	<div class="collapse navbar-collapse" id="menuBar">
		<!-- Navbar-fixed-top -->
		<ul class="nav navbar-nav" style="font-size: 8pt">

			<li id="home"><a href="${contextRoot}/index"><img
					src="${images}/RC_Sports.jpg" style="height: 20pt; width: 100pt" /></a></li>
			<li id="about"><a href="${contextRoot}/about"><span
					class="glyphicon glyphicon-info-sign"></span> About Us</a></li>
			<li id="contact"><a href="${contextRoot}/contact"><span
					class="glyphicon glyphicon-envelope"></span> Contact Us</a></li>
			<li id="products"><a href="${contextRoot}/user/products"><span
					class="glyphicon glyphicon-list"></span> View All</a></li>

			<security:authorize access="hasAuthority('User')">
				<li id="cart"><a href="${contextRoot}/user/cart"><span
						class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
			</security:authorize>

			<security:authorize access="hasAuthority('ADMIN')">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="/#/"><span
						class="glyphicon glyphicon-user"></span> ADMIN<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${contextRoot}/admin/productCRUD"><span
								class="glyphicon glyphicon-list"></span>Product Management</a></li>
					</ul></li>
			</security:authorize>
		</ul>
		<ul class="nav navbar-nav navbar-right" style="font-size: 8pt">
			<security:authorize access="isAnonymous()">
				<li id="register"><a href="register"><span
						class="glyphicon glyphicon-plus"></span> Register</a></li>
				<li id="login"><a href="${contextRoot}/login"><span
						class="glyphicon glyphicon-user"></span> Login</a></li>
			</security:authorize>

			<security:authorize access="isAuthenticated()">
				<li id="logout"><a href="${contextRoot}/logout">Logout</a></li>
			</security:authorize>
		</ul>
	</div>
</nav>