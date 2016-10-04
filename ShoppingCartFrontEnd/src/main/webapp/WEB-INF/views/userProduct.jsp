<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ page session="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
<link href="<c:url value="/resources/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css" media="all" />

<script src="<c:url value="/resources/js/jquery-1.11.2.min.js"/>"
	type="text/javascript"></script>

<!-- Custom Theme files -->
<!--theme-style-->
<link href="<c:url value="resources/css/style.css"/>" rel="stylesheet"
	type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 





</script>
<script type="text/javascript"
	src="<c:url value="resources/js/move-top.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="resources/js/easing.js"/>"></script>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Montez' rel='stylesheet'
	type='text/css'>
<!--//fonts-->
<!-- start menu -->
<!--//slider-script-->
<script src="<c:url value="resources/js/easyResponsiveTabs.js"/>"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#horizontalTab').easyResponsiveTabs({
			type : 'default', //Types: default, vertical, accordion           
			width : 'auto', //auto or any width like 600px
			fit : true
		// 100% fit in a container
		});
	});
</script>


<script src="<c:url value="resources/js/bootstrap.js"/>"></script>
<!-- js -->
<script src="<c:url value="resources/js/simpleCart.min.js"/>">
	
</script>
<!-- start menu -->
<link href="<c:url value="resources/css/memenu.css"/>" rel="stylesheet"
	type="text/css" media="all" />
<script type="text/javascript"
	src="<c:url value="resources/js/memenu.js"/>"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<!-- /start menu -->
</head>
<body>

	<h2>Product Details</h2>


	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<img id="image" alt="No Image" width="400" height="400" src="<c:url value="${uploadFile}"/>">
			</div>
			<div class="col-sm-6">
				<h2></h2>
				<br>

				
					<c:if test="${pageContext.request.userPrincipal.name==null}">
						<c:url var="addAction" value="loginHere"></c:url>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name!=null}">
						<c:url var="addAction" value="addtocart/${selectedProduct.id}"></c:url>
					</c:if>
				

				<form:form action="${addAction}" method="get">
				<table id="arrangetable">
					<tr>
						<td>Product ID</td>
						<td><input type="text" readonly="readonly"
							disabled="disabled" class="form-control"
							value="${selectedProduct.id}"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>Product Name</td>
						<td><input type="text" readonly="readonly"
							disabled="disabled" class="form-control"
							value="${selectedProduct.name}"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>Product Description</td>
						<td><input type="text" readonly="readonly"
							disabled="disabled" class="form-control"
							value="${selectedProduct.description}"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>Price</td>
						<td><input type="text" readonly="readonly"
							disabled="disabled" class="form-control"
							value="${selectedProduct.price}"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>Quantity</td>
						<td><input type="text" readonly="readonly" name="quantity"
							disabled="disabled" value="1" class="form-control"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>Product Category</td>
						<td><input type="text" readonly="readonly"
							disabled="disabled" class="form-control"
							value="${selectedProduct.category.name}"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>Product Supplier</td>
						<td><input type="text" readonly="readonly"
							disabled="disabled" class="form-control"
							value="${selectedProduct.supplier.name}"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left"><input type="submit" value="ADD to Cart"
							class="form-control" /></td>
						<td align="left"><a href="buy"><input type="button"
								value="Buy Now" class="form-control" /></a></td>
					</tr>
				</table>
				</form:form>
			</div>
		</div>
	</div>

</body>
</html>