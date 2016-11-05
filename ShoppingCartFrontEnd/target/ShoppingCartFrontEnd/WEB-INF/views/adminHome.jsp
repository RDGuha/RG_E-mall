<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RG e-mall Admin</title>
<link href="resources/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- <script src="resources/js/jquery.min.js"></script> -->
<script src="resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>

<!-- Custom Theme files -->
<!--theme-style-->
<link href="resources/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




</script>
<script type="text/javascript" src="resources/js/move-top.js"></script>
<script type="text/javascript" src="resources/js/easing.js"></script>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Montez' rel='stylesheet'
	type='text/css'>
<!--//fonts-->
<!-- start menu -->
<!--//slider-script-->
<script src="resources/js/easyResponsiveTabs.js" type="text/javascript"></script>
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


<script src="resources/js/bootstrap.js"></script>
<!-- js -->
<script src="resources/js/simpleCart.min.js">
	
</script>
<!-- start menu -->
<link href="resources/css/memenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="resources/js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<!-- /start menu -->
</head>
<body>

	<%@ include file="/WEB-INF/views/shared/adminheader.jsp"%>

	<div class="typrography">
		<h2 class="heading text-center">WELCOME ADMIN</h2>
		<p style="color: red; text-align: center;">*Please select your
			option*</p>
	</div>
	<div class="clearfix"></div>
	<div class="clearfix"></div>

	<div id="CategoryPage">
		<c:if test="${InCategoryPage==true}">
			<%@ include file="/WEB-INF/views/category.jsp"%>
		</c:if>
	</div>

	<div id="ProductPage">
		<c:if test="${InProductPage==true}">
			<%@ include file="/WEB-INF/views/product.jsp"%>
		</c:if>
	</div>
	
		<div id="SupplierPage">
		<c:if test="${InSupplierPage==true}">
			<%@ include file="/WEB-INF/views/supplier.jsp"%>
		</c:if>
	</div>





	<%@ include file="/WEB-INF/views/shared/footer.jsp"%>

</body>
</html>