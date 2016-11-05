<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
	<%@ include file="/WEB-INF/views/shared/header.jsp"%>
	


<!-- Display all products start -->

<div class="container">
		<div class="row">
			<center>
				<h2>Choose Your Product</h2>
			</center>
			<div class="col-sm-12">
				<c:if test="${!empty productList}">
					<c:forEach items="${productList}" var="product">
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
				</c:if>
			</div>
		</div>
	</div> 
	
	<!-- Display all products end -->

	<div class="container">
		<c:if test="${!empty selectedProduct}">
			<c:import url="../views/userProduct.jsp"></c:import>
		</c:if>
	</div>

	<div class="container">
		<c:if test="${!empty selectedCategory}">
			<c:import url="../views/userCategory.jsp"></c:import>
		</c:if>
	</div>

	<div class="container">
		<c:if test="${!empty cartDetails}">
			<%@ include file="../views/cart.jsp"%>
		</c:if>
	</div>

	<%@ include file="/WEB-INF/views/shared/footer.jsp"%>


</body>
</html>