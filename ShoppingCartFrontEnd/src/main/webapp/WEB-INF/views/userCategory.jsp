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