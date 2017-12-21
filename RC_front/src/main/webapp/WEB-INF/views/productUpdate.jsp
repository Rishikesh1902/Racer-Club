<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<div class="row">
		<div class="col-md-3">
		<form:form enctype="multipart/form-data" action="updateData.do" method="POST"
					commandName="prod" modelAttribute="prod">
					
		<img src="${images}/${prod.productImage}" height="300" width="100%" alt="product image"/>
		</div>
		<div class="col-md-6">
			<div class="form-container">
				<h3>Product Update Form</h3>
				

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
						<div class="form-actions floatRight">
						<input type="submit" class="btn btn-primary btn-sm" name="action" value="Update" />
						</div>
						
					</div>
					</form:form>
					</div>
					</div>
					
					<div class="col-md-3"></div>
					
					</div>
					</div>
						
			