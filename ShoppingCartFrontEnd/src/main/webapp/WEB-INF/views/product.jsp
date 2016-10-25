<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ page session="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
<link href="resources/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- <script src="resources/js/jquery.min.js"></script> -->
<script src="resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>

<!-- Custom Theme files -->
<!--theme-style-->
<link href="resources/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




</script>
<script type="text/javascript" src="resources/js/move-top.js"></script>
<script type="text/javascript" src="resources/js/easing.js"></script>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Montez' rel='stylesheet'
	type='text/css'>
<!--//fonts-->
<!-- start menu -->
<!--//slider-script-->
<script src="resources/js/easyResponsiveTabs.js" type="text/javascript"></script>
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


<script src="resources/js/bootstrap.js"></script>
<!-- js -->
<script src="resources/js/simpleCart.min.js">
	
</script>
<!-- start menu -->
<link href="resources/css/memenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="resources/js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<!-- /start menu -->
</head>


					<br><br>
	<center>
		<div class="container">
			<h1>Add a Product</h1>
			<br>

			<c:url var="addAction" value="/product/add"></c:url>

			<form:form action="${addAction}" commandName="product"
				enctype="multipart/form-data">
				<table>
					<tr>
						<td align="left"><form:label path="id">
								ID
							</form:label></td>
						<c:choose>
							<c:when test="${!empty product.id}">
								<td><form:input path="id" disabled="true"
										readonly="true" /></td>
							</c:when>

							<c:otherwise>
								<td align="left"><form:input path="id"
										patttern=".{6,7}" required="true"
										title="id should contains 6 to 7 characters" /></td>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<form:input path="id" hidden="true" />
						<td align="left"><form:label path="name">
								Name
							</form:label></td>
						<td align="left"><form:input path="name"
								required="true" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left"><form:label path="description">
								Description
							</form:label></td>
						<td align="left"><form:input path="description"
								required="true" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left"><form:label path="price">
								Price
							</form:label></td>
						<td align="left"><form:input path="price" required="true" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left"><form:label path="supplier">
								Supplier
							</form:label></td>
						<%-- <td><form:input path="supplier.name" required="true" /></td> --%>
						<td align="left"><form:select path="supplier.name"
								items="${supplierList}" itemValue="name" itemLabel="name" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left"><form:label path="category">
								Category
							</form:label></td>
						
						<td align="left"><form:select path="category.name"
								items="${categoryList}" itemValue="name" itemLabel="name" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left"><form:label path="image">
								Image
							</form:label></td>
						<td align="left"><form:input type="file" path="image" name="image"/></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left" colspan="2"><c:if
								test="${!empty product.name}">
								<input type="submit"
									value="Edit Product" />
							</c:if> <c:if test="${empty product.name}">
								<input type="submit"
									value="Add Product" />
							</c:if></td>
					</tr>
				</table>
			</form:form>
			<br>
			<h3>Product List</h3>
			<br>
			<c:if test="${!empty productList}">
				<table border="1px solid black" class="table">
					<tr>
						<th width="80">Product ID</th>
						<th width="120">Product Name</th>
						<th width="200">Product Description</th>
						<th width="80">Price</th>
						<th width="80">Product Category</th>
						<th width="80">Product Supplier</th>
						<th width="60">Edit</th>
						<th width="60">Delete</th>
					</tr>
					<c:forEach items="${productList}" var="product">
						<tr>
							<td>${product.id}</td>
							<td>${product.name}</td>
							<td>${product.description}</td>
							<td>${product.price}</td>
							<td>${product.category.name}</td>
							<td>${product.supplier.name}</td>
							<td><a
								href="<c:url value='product/edit/${product.id}' />">Edit</a></td>
							<td><a
								href="<c:url value='product/remove/${product.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
	</center>
	
	<br><br><br><br>
	
	
	
</body>
</html>