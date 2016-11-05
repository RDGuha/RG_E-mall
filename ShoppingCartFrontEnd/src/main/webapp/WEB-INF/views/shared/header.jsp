<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RG e-mall</title>
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet"
	type="text/css" media="all" />
<script src="<c:url value="/resources/js/jquery-1.11.2.min.js"/>" type="text/javascript"></script>

<!-- Custom Theme files -->
<!--theme-style-->
<link href="<c:url value="resources/css/style.css"/>" rel="stylesheet" type="text/css"
	media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 



</script>
<script type="text/javascript" src="<c:url value="resources/js/move-top.js"/>"></script>
<script type="text/javascript" src="<c:url value="resources/js/easing.js"/>"></script>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Montez' rel='stylesheet'
	type='text/css'>
<!--//fonts-->
<!-- start menu -->
<!--//slider-script-->
<script src="<c:url value="resources/js/easyResponsiveTabs.js"/>" type="text/javascript"></script>
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
<link href="<c:url value="resources/css/memenu.css"/>" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="<c:url value="resources/js/memenu.js"/>"></script>
<script type="text/javascript" src="<c:url value="resources/js/angular.min.js"/>"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<!-- /start menu -->
</head>
<body>
	<!--header-->
	<div class="header-info">
		<div class="container">
			<div class="header-top-in">

				<ul class="support">
					<li><a href="mailto:guhard1@yahoo.com"><i
							class="glyphicon glyphicon-envelope"> </i>rajdeepguha7@gmail.com</a></li>
					<li><span><i class="glyphicon glyphicon-earphone"
							class="tele-in"> </i>+91 965 833 6528</span></li>
				</ul>
				<ul class=" support-right">
					<c:choose>
					<c:when test="${pageContext.request.userPrincipal.name==null}">
						<li align="left"><a href="<c:url value="loginHere" />">  Login</a></li>
						<li align="center"><a href="<c:url value="registerHere" />">
								Register</a></li>
					</c:when>
					<c:when test="${pageContext.request.userPrincipal.name!=null}">
						<li align="left">  Welcome :${pageContext.request.userPrincipal.name}</li>
						<li align="center"><a href="<c:url value="/logout" />"> logout</a></li>
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