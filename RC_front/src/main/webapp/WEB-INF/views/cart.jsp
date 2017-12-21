<style>
body
{
overflow-x:hidden;
}
</style>
<div class="container content">
 <form:form modelAttribute="prod"> 
  <div class="row">
       <div class="col-md-12" style="height:5%: border-bottom:1px solid black">
             <center><h2 style="color:crimson">Shopping Cart</h2></center>
       </div>       
  </div>
  <br/>
  <div class="row">
  <div class="col-md-12">
  <table class="table table-responsive table-sripped">
       <tr>
             <th colspan="2" style="color:darkgrey">Item</th>
             <th style="color:darkgrey">Quantity</th>
             <th style="color:darkgrey">Price</th>
             <th style="color:darkgrey">Sub Total</th>
             <th></th>
       </tr>
       <c:set var="price" value="${0}"/>  
       <c:forEach items="${prod}" var="p">
       <tr>
       <td><img src="${images}/${p.product.productImage}" width="70px" height="70px"/></td>
       <td>${p.product.productName}</td>
       <td>
          ${p.quantity}
       </td>
       <td>&#8377; ${p.product.productPrice}</td>
       <c:set var="price" value="${price+p.totalPrice }"/>
       <td>&#8377; ${p.totalPrice}</td>
       <td><a href="${contextRoot}/user/delete/${p.cartItemId}/cartD"><span class="glyphicon glyphicon-remove-sign" style="text-size:30px; color:crimson"></span></a></td>
       </tr>
       </c:forEach>
  </table>
  </div>
  </div>
   <div class="row">
  <div class="col-md-12">
  <table class="table table-responsive">
  <tr>
   <td></td>
  <td></td>
  <th>Grand Total</th>
 <td>&#8377; ${price}</td>
  </tr>
  <br/><br/>
  <tr>
  <td></td>
  <td></td>
  <td><a href="${contextRoot}/user/products" class="btn btn-primary btn-md">Continue Shopping</button> </td>
  <td><a href="${contextRoot}/user/billing" class="btn btn-success btn-md">Place Order</button></td>
  </tr>
  </table>
  </div>
  </div>
       
 
  </form:form>
  </div>
  </div>
