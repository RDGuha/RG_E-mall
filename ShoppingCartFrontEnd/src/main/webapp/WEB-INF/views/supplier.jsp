<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

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