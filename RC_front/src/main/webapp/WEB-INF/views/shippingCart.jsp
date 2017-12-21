<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>ZenSports - ${title}</title>
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

<!-- Latest compiled JavaScript -->
<script type="text/javascript" src="${js}/jquery.js"></script>
<script type="text/javascript" src="${js}/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${js}/bootstrap.min.js"></script>
<script type="text/javascript" src="${js}/datatableScript.js"></script>
<script type="text/javascript" src="${js}/productcrud.js"></script>
<script type="text/javascript" src="${js}/dataTables.bootstrap.min.js"></script>

<!-- Self coded js file -->
<script src="${js}/myapp.js"></script>
<script>
$(document).ready(function(){
    $('#s').click(function() {
        if( $(this).is(':checked')) {
           $(".mydiv").hide();
        } else {
           $(".mydiv").show();
        }
    });
    });
</script>
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
		<div class=" row content form-container">
             <form:form modelAttribute="ship" >
                    <div class="col-md-3"></div>
                    <div class="panel col-md-6"
                           style="padding-bottom: 10px; border: 1px solid; background-color: grey; color: white; border-color: #2e6da4;">
                           <div class="panel-heading"
                                 style="text-align: center; font-weight: bolder">
                                 <h2>Shipping Address</h2>
                                 
                                 <hr />
                                 <div>
                                        <input type="checkbox" id="s">Same as Billing Address</input>
                                 </div>
                           </div>
             
                           <div class="mydiv">
                                 <!-- Text input-->
                                 <div class="row form-group" style="padding-left: 10%; padding-right: 10%; padding-bottom: 2%">
                                        <div class="col-md-12">
                                               <form:input path="addAddress1" id="addAddress1" type="text" placeholder="Address 1" class="form-control input-md" />
                                                      <div class="has-error">
                                                            <form:errors path="addAddress1" class="help-inline"  style="color:red"/>
                                                     </div> 
                                        </div>

                                 </div>
                                 <!-- Text input-->
                                 <div class="row form-group" style="padding-left: 10%; padding-right: 10%; padding-bottom: 2%">
                                        <div class="col-md-12">
                                               <form:input path="addAddress2" id="addAddress2" type="text" placeholder="Address 2" class="form-control input-md"/>
                                                      <div class="has-error">
                                                            <form:errors path="addAddress2" class="help-inline"  style="color:red"/>
                                                     </div> 
                                        </div>

                                 </div>
                                 <!-- Text input-->
                                 <div class="row form-group" style="padding-left: 10%; padding-right: 10%; padding-bottom: 2%">
                                        <div class="col-md-12">
                                               <form:input path="addCity" id="addCity" type="text" placeholder="City" class="form-control input-md"/>
                                                     <div class="has-error">
                                                            <form:errors path="addCity" class="help-inline"  style="color:red"/>
                                                     </div> 
                                        </div>

                                 </div>
                                 <!-- Text input-->
                                 <div class="row form-group" style="padding-left: 10%; padding-right: 10%; padding-bottom: 2%">
                                        <div class="col-md-12">
                                               <form:input path="addZipCode" id="addZipCode" type="text" placeholder="Zip Code" class="form-control input-md"/>
                                                     <div class="has-error">
                                                            <form:errors path="addZipCode" class="help-inline"  style="color:red"/>
                                                     </div> 
                                        </div>

                                 </div>
                                 <!-- Text input-->
                                 <div class="row form-group" style="padding-left: 10%; padding-right: 10%; padding-bottom: 2%">
                                        <div class="col-md-12">
                                               <form:input path="addState" id="addState" type="text" placeholder="State" class="form-control input-md"/>
                                                     <div class="has-error">
                                                            <form:errors path="addState" class="help-inline"  style="color:red"/>
                                                     </div> 
                                        </div>

                                 </div>
                                 <!-- Text input-->
                                 <div class="row form-group" style="padding-left: 10%; padding-right: 10%; padding-bottom: 2%">
                                        <div class="col-md-12">
                                               <form:input path="addCountry" id="addCountry" type="text" placeholder="Country" class="form-control input-md"/>
                                                      <div class="has-error">
                                                            <form:errors path="addCountry" class="help-inline"  style="color:red"/>
                                                     </div> 
                                        </div>

                                 </div>
                                 
                                 <div class="row form-group"
                                        style="padding-left: 10%; padding-right: 10%; padding-bottom: 2%">
                                        <div class="col-md-12"></div>
                                 </div>
                                 </div>
                    
                    <div class="row form-group"
                                        style="padding-left: 10%; padding-right: 10%; padding-bottom: 2%">
                                        <div class="col-md-12">
                                               <input type="submit" name="_eventId_submit" value="Continue" class="btn btn-primary btn-md"/>
                                        </div>
                                 </div>
                    </div>
                    </form:form>
        
       
       </div>
	<div class="footer">
		<%@include file="./shared/footer.jsp"%>
	</div>
	</div>
</body>
</html>
