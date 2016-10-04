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




	<div class="container">
		<div class="row">
<center><h2>List of ${selectedCategory.name}s</h2></center>
			<div class="col-sm-12">
			
			<c:forEach items="${selectedCategory.products}" var="product">
			
			
			
			<div class="col-md-3 product-left">
							<div class="p-one simpleCart_shelfItem">


								<a href="<c:url value='product/show/${product.id}' />"> <img
									id="image" alt="${product.name}"
									src="resources/productimages/${product.id}.jpg" width="200"
									height="255">
									<div class="mask">
										<span>Quick View</span>
									</div>
								</a>
								<h4>${product.name}</h4>
								<p>
									<a class="item_add"
										href="<c:url value='product/show/${product.id}' />"><i></i>
										<span class=" item_price">Rs. ${product.price}</span></a>
								</p>



							</div>
						</div>
			
			<%-- <a href="<c:url value='product/show/${product.id}' />">
			<img id="image" alt="${product.name}" src="resources/productimages/${product.id}.jpg" title="${product.name}" width="40" height="40">
			</a> --%>
			
			
			</c:forEach>
			
			
			
		<%-- 		<center>
					<table border="1px solid black">
					<tr>
					
						<th width="80">Product ID</th>
						<th width="120">Product Name</th>
						<th width="200">Product Description</th>
						<th width="80">Price</th>
						
						<th width="80">Product Supplier</th> 
						<th width="60">Product Details</th>
						
					</tr>
	<c:forEach items="${selectedCategory.products}" var="product">
	<tr>
							<td>${product.id}</td>
							<td>${product.name}</td>
							<td>${product.description}</td>
							<td>${product.price}</td>
							
							<td>${product.supplier.name}</td> 
							<td><a
								href="<c:url value='product/show/${product.id}' />">show</a></td>
							
						</tr>
		
	</c:forEach>
	</table>
	</center> --%>
	
	
<%-- <ul>
			<li class="uppercase"><a
				href="<c:url value='product/show/${product.id}' />">${product.name}</a></li>

		</ul> --%>
			</div>
		</div>
	</div>

</body>
</html>