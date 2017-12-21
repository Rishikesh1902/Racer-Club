<!-- Product Details -->
<div class="container content">
	<form:form modelAttribute="prod" action="${contextRoot}/user/${prod.productId}">
		<div style="height: 10%"></div>
		<div class="row well table-responsive">
			<div class="col-md-3">
				<div id="${prod.productId}"></div>
				<div>
					<img src="${images}/${prod.productImage}" height="400" width="300">
				</div>
			</div>
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div class="row">
					<p>
					<h1 style="color: blue; font-weight: bold">${prod.productName}</h1>
					</p>
				</div><br/>
				<div class="row">
					<p>
					<h4>
						<b>Category : </b>${prod.productCategory}</h2>
						</p>
				</div>
				<div class="row">
					<p>
					<h4><b>Keywords : </b>${prod.productKeyword}</h4>
					</p>
				</div>
				<div class="row">
					<p>
					<h4>
						<b>Description : </b>${prod.productDescription}</h4>
					</p>
				</div><br/>
				<div class="row">
					<p>
						<b></b>
					<h4 style="color: red">&#8377 ${prod.productPrice}</h4>
					</b>
					</p>
				</div><br/>
				<div class="row">
					<p>
						<b></b>
					<h4 style="color: orange">${prod.productQuantity} pieces left
						.</h4>
					</b>
					</p>
				</div><br/>
				<div class="row">
					<select name="quantity" id="quantity">
						<c:forEach var="i" begin="1" end="${prod.productQuantity}">
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>

				</div><br/>
				<div class="row">
					<p>
						<button style="text-size: 30px" class="btn btn-danger btn-md">
							<span class="glyphicon glyphicon-shopping-cart"
								style="text-size: 30px"></span> Add to Cart
						</button>


					</p>
				</div>
			</div>

		</div>
	</form:form>
</div>
