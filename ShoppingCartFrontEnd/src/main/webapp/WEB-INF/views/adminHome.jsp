


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

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