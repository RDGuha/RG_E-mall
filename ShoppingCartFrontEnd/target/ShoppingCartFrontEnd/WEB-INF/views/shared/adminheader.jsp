<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
	<%@ page isELIgnored="false" %>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>

</head>
<body><div class="header-info">
		<div class="container">
			<div class="header-top-in">

				<ul class="support">
					<li><a href="mailto:guhard1@yahoo.com"><i
							class="glyphicon glyphicon-envelope"> </i>guhard1@yahoo.com</a></li>
					<li><span><i class="glyphicon glyphicon-earphone"
							class="tele-in"> </i>+91 810 242 8380</span></li>
				</ul>
				<ul class=" support-right">
					<li><a href="#"><i
							class="glyphicon glyphicon-user" class="men"> </i>Welcome :${pageContext.request.userPrincipal.name}</a></li>
					<li><a href="/logout"><i
							class="glyphicon glyphicon-lock" class="tele"> </i>Log Out
							</a></li>
				</ul>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="header">
		<div class="header-top">

			<div class="header-bottom">
				<div class="container">
					<div class="logo">
						<h1>
							<a href="adminHome">RG<span>e-mall</span></a>
						</h1>
					</div>
					</div>
					</div>
					</div>
					</div>
					<div class="back"
				id="bs-example-navbar-collapse-1" >
				<p style=text-align: center;><ul class="nav navbar-nav">
					<li><a href="manageCategories"><h3>CATEGORY</h3></a></li>
					<li><a href="manageSuppliers"><h3>SUPPLIER</h3></a></li>
					<li><a href="manageProducts"><h3>PRODUCT</h3></a></li>
				</ul></p>
			</div>
			</body>
			</html>