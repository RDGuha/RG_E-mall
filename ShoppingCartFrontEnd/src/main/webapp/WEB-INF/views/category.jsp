<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>



	<center><h1>Add a Category</h1>
<br><br>
	<c:url var="addAction" value="/category/add"></c:url>

			<form:form action="${addAction}" commandName="category">
				<table>
					<tr>
						<td align="left"><form:label path="id">
								ID
							</form:label></td>
						<c:choose>
							<c:when test="${!empty category.id}">
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
						<td align="left"><form:label path="description">
								Description
							</form:label></td>
						<td align="left"><form:input path="description" required="true" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left" colspan="2"><c:if test="${!empty category.name}">
								<input type="submit"
									value="Edit Category" />
							</c:if> <c:if test="${empty category.name}">
								<input type="submit"
									value="Add Category" />
							</c:if></td>
					</tr>
				</table>
			</form:form>
	
	<h3>Category List</h3>
	<c:if test="${!empty categoryList}">
		<table class="table" border="1px solid black">
			<tr>
				<th width="80">Category ID</th>
				<th width="120">Category Name</th>
				<th width="120">Category Description</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td><a href="<c:url value='category/edit/${category.id}' />">Edit</a></td>
					<td><a href="<c:url value='category/remove/${category.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</center>
	<br><br><br><br>
	
	
	
</body>
</html>