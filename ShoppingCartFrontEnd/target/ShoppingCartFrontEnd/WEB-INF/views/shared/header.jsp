
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RG e-mall</title>
<script src="<c:url value="/resources/js/angular.min.js"/>" type="text/javascript"></script>
</head>
<body>
	<!--header-->
	<div class="header-info">
		<div class="container">
			<div class="header-top-in">

				<ul class="support">
					<li><a href="mailto:guhard1@yahoo.com"><i
							class="glyphicon glyphicon-envelope"> </i>guhard1@yahoo.com</a></li>
					<li><span><i class="glyphicon glyphicon-earphone"
							class="tele-in"> </i>+91 810 242 8380</span></li>
				</ul>
				<ul class=" support-right">
					<c:choose>
					<c:when test="${pageContext.request.userPrincipal.name==null}">
						<li align="left"><a href="<c:url value="loginHere" />">  Login</a></li>
						<li align="center"><a href="<c:url value="registerHere" />">
								Register</a></li>
					</c:when>
					<c:when test="${pageContext.request.userPrincipal.name!=null}">
						<li>Welcome :${pageContext.request.userPrincipal.name}</li>
						<li align="right"><a href="<c:url value="/logout" />"> logout</a></li>
					</c:when>
				</c:choose>
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
							<a href="<c:url value="home" />">RG<span>e-mall</span></a>
						</h1>
					</div>
					<!---->

					<div class="top-nav">
						<ul class="memenu skyblue">
							<li class="active"><a href="<c:url value="home"/>">Home</a></li>
						
								<c:forEach items="${categoryList}" var="category">
								
							<li class="grid"><a href="<c:url value='category/show/${category.id}' />">${category.name}</a>
								<div class="mepanel">
									<div class="row">
										<div class="col1 me-one">
											<c:forEach items="${category.products}" var="product">
											<ul>
												<li class="uppercase"><a
													href="<c:url value='product/show/${product.id}' />">${product.name}</a></li>
												
											</ul>
											</c:forEach>
										</div>
										
										<div class="clearfix"></div>
									</div>
								</div></li>
								</c:forEach>

							<li class="grid"><a href="<c:url value="aboutUs" />">About Us</a></li>
							<li class="grid"><a href="<c:url value="contactUs" />">Contact Us</a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<!-- Coding to display cart -->
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</body>
</html>