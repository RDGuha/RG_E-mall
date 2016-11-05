<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
	<%@ page isELIgnored="false" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
<%@ include file="/WEB-INF/views/shared/header.jsp"%>


<div class="container">

	<center>
	
			<br>
			<c:if test="${!empty productList}">
			<h3>Product List</h3>
				<table border="1px solid black" class="table">
					<tr>
					
						<th width="80">Product ID</th>
						<th width="120">Product Name</th>
						<th width="200">Product Description</th>
						<th width="80">Price</th>
						 <th width="80">Product Category</th>
						<!--<th width="80">Product Supplier</th> -->
						<th width="60">Product Details</th>
						
					</tr>
					<c:forEach items="${productList}" var="product">
						<tr>
							<td>${product.id}</td>
							<td>${product.name}</td>
							<td>${product.description}</td>
							<td>${product.price}</td>
							<td>${product.category.name}</td>
							<%-- <td>${product.supplier.name}</td> --%>
							<td><a
								href="<c:url value='product/show/${product.id}' />">show</a></td>
							
						</tr>
					</c:forEach>
				</table>
			</c:if>
	</center>
	</div>
	
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