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
			
			
			</c:forEach>
			

			</div>
		</div>
	</div>

</body>
</html>