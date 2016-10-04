<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
	<%@ page isELIgnored="false" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RG e-mall</title>
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet"
	type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- <script src="resources/js/jquery.min.js"></script> -->
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
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<!-- /start menu -->
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp"%>

	
		<div id="AdminPage">
		<c:if test="${isAdmin==true}">
			<%@ include file="/WEB-INF/views/adminHome.jsp"%>

		</c:if>
	</div>
	
	

	<div id="HomePage">
		<c:if test="${InHomePage==true}">
			<%@ include file="/WEB-INF/views/homePage.jsp"%>

		</c:if>
	</div>
	
	

	<div id="LoginPage">
		<c:if test="${InLoginPage==true}">
			<%@ include file="/WEB-INF/views/login.jsp"%>

		</c:if>
	</div>

	<div id="RegisterPage">
		<c:if test="${InRegisterPage==true}">
			<%@ include file="/WEB-INF/views/register.jsp"%>

		</c:if>
	</div>

	<div id="AboutPage">
		<c:if test="${InAboutPage==true}">
			<%@ include file="/WEB-INF/views/about.jsp"%>

		</c:if>
	</div>
	
	<div id="AboutPage">
		<c:if test="${InContactPage==true}">
			<%@ include file="/WEB-INF/views/contact.jsp"%>

		</c:if>
	</div>


	<%@ include file="/WEB-INF/views/footer.jsp"%>

</body>
</html>