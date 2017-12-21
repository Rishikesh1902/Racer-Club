<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<div class="form-container">
				<center><b><h2>Product Form</h2></b></center>
				<hr/>
				<form:form enctype="multipart/form-data" action="productData.do" method="POST"
					commandName="product" modelAttribute="product">
					
					<form:hidden path="productId"/>
					
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="productName">Product
								Name</label>
							<form:input path="productName" class="form-control input-sm" />
							<div class="has-error">
								<form:errors style="color:red" path="productName" class="help-inline" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="productCategory">Product
								Category</label>
							<form:input path="productCategory" class="form-control input-sm" />
							<div class="has-error">
								<form:errors style="color:red" path="productCategory" class="help-inline" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="productDescription">Product
								Description</label>
							<form:input path="productDescription"
								class="form-control input-sm" />
							<div class="has-error">
								<form:errors style="color:red" path="productDescription" class="help-inline" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="productKeyword">Product
								Keyword</label>
							<form:input path="productKeyword" class="form-control input-sm" />
							<div class="has-error">
								<form:errors style="color:red" path="productKeyword" class="help-inline" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="file">Product
								Image</label>
							<form:input type="file" path="file" class="form-control input-sm" />
							<div class="has-error">
								<form:errors style="color:red" path="file" class="help-inline" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="productPrice">Product
								Price</label>
							<form:input path="productPrice" class="form-control input-sm" />
							<div class="has-error">
								<form:errors style="color:red" path="productPrice" class="help-inline" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="productQuantity">Product
								Quantity</label>
							<form:input path="productQuantity" class="form-control input-sm" />
							<div class="has-error">
								<form:errors style="color:red" path="productQuantity" class="help-inline" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-actions">
						<center>
						<c:if test="${product.productId==0}"><input type="submit" name="action" class="btn btn-primary btn-md" value="Add" /></c:if>
						<c:if test="${product.productId!=0}"><input type="submit" class="btn btn-primary btn-sm" name="action" value="Update" /></c:if>
						</center> 
						</div>
						
						<div class="col-md-3"></div>
					</div>
					</div>
					</div>
					<br>
					<br />
					<div class="row">
						<div class="table-responsive col-md-12">

							<table id="myDataTable1" class="table table-striped">
								<thead>
									<tr>
										<th>Product ID</th>
										<th>Product Image</th>
										<th>Product Name</th>
										<th>Product Category</th>
										<th>Keywords</th>
										<th>Price</th>
										<th>Quantity</th>
										<th>Edit Product</th>
										<th>Delete Product</th>
									</tr>
								</thead>
							</table>
						</div>
							</form:form>
		<!-- form closure -->
			</div>
		</div>