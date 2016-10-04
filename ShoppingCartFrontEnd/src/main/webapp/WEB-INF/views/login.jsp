<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RG e-mall</title>

</head>
<body>
<h4><font color="red">
<c:if test ="${not empty error }">
<div class "errorblock">
Your loggin attempt was not successfull,try again.
Caused : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</div>
</c:if>
</font></h4>
<div class="back">
		<h2>Login</h2>
	</div>
	<!---->	
	<div class="container">
		<div class="account_grid">
			<div class=" login-right">
				<h3>REGISTERED CUSTOMERS</h3>
				
				<form:form action="login" method="post">
				<div class="col-sm-6">
		<table>
			<tr>
				
				<td><input type="text" name="username" placeholder="Username" class="form-control"></td>
			</tr>

			<tr>
				
				<td><input type="password" name="password" placeholder="********" class="form-control" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login" class="form-control" ></td>
			</tr>

		</table>

</div>

	</form:form>

			
			<div class=" login-left">
				<p><h3>NEW CUSTOMERS</h3>
				<p>By creating an account with our store, you will be able to
					move through the checkout process faster, store multiple shipping
					addresses, view and track your orders and more.</p>
				<a class="login-left" href="registerHere">Create an Account</a></p>
			</div>
</div>
		</div>

	</div>
	
</body>
</html>