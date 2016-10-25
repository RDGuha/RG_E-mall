<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier Details</title>
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
<script type="text/javascript" src="resources/js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<!-- /start menu -->
</head>
<body>



					<br><br>
	<center><h1>Add a Supplier</h1>

	

			<c:url var="addAction" value="/supplier/add"></c:url>

			<form:form action="${addAction}" commandName="supplier">
				<table>
					<tr>
						<td align="left"><form:label path="id">
								ID
							</form:label></td>
						<c:choose>
							<c:when test="${!empty supplier.id}">
								<td><form:input path="id" disabled="true"
										readonly="true" /></td>
							</c:when>

							<c:otherwise>
								<td align="left"><form:input path="id"
										required="true" title="id should contains 6 to 7 characters" /></td>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<form:input path="id" hidden="true" />
						<td align="left"><form:label path="name">
								Name
							</form:label></td>
						<td align="left"><form:input path="name" required="true" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left"><form:label path="address">
								Address
							</form:label></td>
						<td align="left"><form:input path="address" required="true" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left" colspan="2"><c:if test="${!empty supplier.id}">
								<input type="submit"
									value="Edit Supplier" />
							</c:if> <c:if test="${empty supplier.id}">
								<input type="submit"
									value="Add Supplier" />
							</c:if></td>
					</tr>
				</table>
			</form:form>
	
	<h3>Supplier List</h3>
	<c:if test="${!empty supplierList}">
		<table class="table" border="1px solid black">
			<tr>
				<th width="80">Supplier ID</th>
				<th width="120">Supplier Name</th>
				<th width="120">Supplier Address</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${supplierList}" var="supplier">
				<tr>
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.address}</td>
					<td><a href="<c:url value='supplier/edit/${supplier.id}' />">Edit</a></td>
					<td><a href="<c:url value='supplier/remove/${supplier.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</center>
	<br><br><br><br>
	

	
</body>
</html>