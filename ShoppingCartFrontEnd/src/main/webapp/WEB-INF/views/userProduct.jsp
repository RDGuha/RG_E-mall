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