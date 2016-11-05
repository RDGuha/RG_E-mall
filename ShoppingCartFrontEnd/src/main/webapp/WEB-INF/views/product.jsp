


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>



					<br><br>
	<center>
		<div class="container">
			<h1>Add a Product</h1>
			<br>

			<c:url var="addAction" value="/product/add"></c:url>

			<form:form action="${addAction}" commandName="product"
				enctype="multipart/form-data">
				<table>
					<tr>
						<td align="left"><form:label path="id">
								ID
							</form:label></td>
						<c:choose>
							<c:when test="${!empty product.id}">
								<td><form:input path="id" disabled="true"
										readonly="true" /></td>
							</c:when>

							<c:otherwise>
								<td align="left"><form:input path="id"
										patttern=".{6,7}" required="true"
										title="id should contains 6 to 7 characters" /></td>
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
						<td align="left"><form:input path="name"
								required="true" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left"><form:label path="description">
								Description
							</form:label></td>
						<td align="left"><form:input path="description"
								required="true" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left"><form:label path="price">
								Price
							</form:label></td>
						<td align="left"><form:input path="price" required="true" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left"><form:label path="supplier">
								Supplier
							</form:label></td>
						<%-- <td><form:input path="supplier.name" required="true" /></td> --%>
						<td align="left"><form:select path="supplier.name"
								items="${supplierList}" itemValue="name" itemLabel="name" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left"><form:label path="category">
								Category
							</form:label></td>
						
						<td align="left"><form:select path="category.name"
								items="${categoryList}" itemValue="name" itemLabel="name" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left"><form:label path="image">
								Image
							</form:label></td>
						<td align="left"><form:input type="file" path="image" name="image"/></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="left" colspan="2"><c:if
								test="${!empty product.name}">
								<input type="submit"
									value="Edit Product" />
							</c:if> <c:if test="${empty product.name}">
								<input type="submit"
									value="Add Product" />
							</c:if></td>
					</tr>
				</table>
			</form:form>
			<br>
			<h3>Product List</h3>
			<br>
			<c:if test="${!empty productList}">
				<table border="1px solid black" class="table">
					<tr>
						<th width="80">Product ID</th>
						<th width="120">Product Name</th>
						<th width="200">Product Description</th>
						<th width="80">Price</th>
						<th width="80">Product Category</th>
						<th width="80">Product Supplier</th>
						<th width="60">Edit</th>
						<th width="60">Delete</th>
					</tr>
					<c:forEach items="${productList}" var="product">
						<tr>
							<td>${product.id}</td>
							<td>${product.name}</td>
							<td>${product.description}</td>
							<td>${product.price}</td>
							<td>${product.category.name}</td>
							<td>${product.supplier.name}</td>
							<td><a
								href="<c:url value='product/edit/${product.id}' />">Edit</a></td>
							<td><a
								href="<c:url value='product/remove/${product.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
	</center>
	
	<br><br><br><br>
	
	
	
</body>
</html>