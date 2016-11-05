<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RG e-mall</title>
</head>
<body>
	<center>
		<h1>Your Cart Details</h1>
		<br>
		<table border="1px solid black">
			<tr>
				<th align="left" width="80">Cart ID</th>
				<th align="left" width="120">Product Name</th>
				<th align="left" width="80">Price</th>
				<th align="left" width="200">Quantity</th>
				
				<th align="left" width="200">Status</th>
				<th align="left" width="200">Delete</th>
				<th align="left" width="200">Proceed</th>
			</tr>
			<c:forEach items="${cartDetails}" var="cart">
				<tr>
					<td align="left">${cart.id}</td>
					<td align="left">${cart.productName}</td>
					<td align="left">${cart.price}</td>
					<td align="left">${cart.quantity}</td>
					
					<td align="left">${cart.status}</td>
					<td align="left"><a
						href="<c:url value='cart/delete/${cart.id}' />">Delete
							from cart</a></td>
					<td align="left"><a
						href="<c:url value='cart/proceed/${cart.id}' />">Proceed</a></td>
				</tr>
			</c:forEach>
		</table>

	</center>
	<br>
</body>
</html>