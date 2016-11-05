
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
	<h4>${message}</h4>
	<div id="carousel1" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carousel1" data-slide-to="0" class="active"></li>
			<li data-target="#carousel1" data-slide-to="1"></li>
			<li data-target="#carousel1" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="resources/images/carousel 1.jpg" alt="First slide image"
					class="center-block">
				<div class="carousel-caption">
					<h3>Welcome to RG e-mall</h3>

				</div>
			</div>
			<div class="item">
				<img src="resources/images/carousel 2.jpg" alt="Second slide image"
					class="center-block">
				<div class="carousel-caption">
					<h3>Here You get Best Priced Products..</h3>

				</div>
			</div>
			<div class="item">
				<img src="resources/images/carousel 3.jpg" alt="Third slide image"
					class="center-block">
				<div class="carousel-caption">
					<h3>Fast Delivery & Easy Return</h3>

				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#carousel1" role="button"
			data-slide="prev"><span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span><span class="sr-only">Previous</span></a><a
			class="right carousel-control" href="#carousel1" role="button"
			data-slide="next"><span class="glyphicon glyphicon-chevron-right"
			aria-hidden="true"></span><span class="sr-only">Next</span></a>
	</div>

	<div class="goggles">
		<div class="container">
			<c:forEach items="${categoryList}" begin="0" end="1" var="category">
				<br>
				<br>
				<h1></h1>
				<a href="<c:url value='category/show/${category.id}' /> "><h2>Latest ${category.name}s</h2></a>
				<div class="product-one">


					<c:forEach items="${category.products}" begin="0" end="3"
						var="product">
						<div class="col-md-3 product-left">
							<div class="p-one simpleCart_shelfItem">


								<a href="<c:url value='product/show/${product.id}' />"> <img
									id="image" alt="${product.name}"
									src="resources/productimages/${product.id}.jpg" width="200"
									height="255">
									<div class="mask">
										<span>Quick View</span>
									</div>
								</a>
								<h4>${product.name}</h4>
								<p>
									<a class="item_add"
										href="<c:url value='product/show/${product.id}' />"><i></i>
										<span class=" item_price">${product.price}</span></a>
								</p>



							</div>
						</div>


					</c:forEach>




				</div>
				<h1></h1>
				<div class="clearfix"></div>
			</c:forEach>





		</div>
	</div>
</body>
</html>