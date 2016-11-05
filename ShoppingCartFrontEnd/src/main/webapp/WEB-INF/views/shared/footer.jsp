<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RG e-mall</title>

</head>
<body>
	<div class="scroll-slider">
		<div class="container">
			<div class="nbs-flexisel-container">
				<div class="nbs-flexisel-inner">
					<ul class="flexiselDemo3 nbs-flexisel-ul"
						style="left: -253.6px; display: block;">
						<li onclick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="resources/images/c3.png"
							alt="" /></li>
						<li onclick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="resources/images/c4.jpg"
							alt="" /></li>
						<li onclick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="resources/images/c1.png"
							alt="" /></li>
						<li onclick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="resources/images/c2.jpg"
							alt="" /></li>
						<li onclick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="resources/images/c3.png"
							alt="" /></li>
						<li onclick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="resources/images/c4.jpg"
							alt="" /></li>
						<li onclick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="resources/images/c1.png"
							alt="" /></li>
						<li onclick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="resources/images/c2.jpg"
							alt="" /></li>
					</ul>
					<div class="nbs-flexisel-nav-left" style="top: 21.5px;"></div>
					<div class="nbs-flexisel-nav-right" style="top: 21.5px;"></div>
				</div>
			</div>
			<div class="clearfix"></div>
			<!--start-image-->
			<script type="text/javascript" src="resources/js/jquery.flexisel.js"></script>
			<!--//end-->
			<script type="text/javascript">
				$(window).load(function() {
					$(".flexiselDemo3").flexisel({
						visibleItems : 5,
						animationSpeed : 1000,
						autoPlay : true,
						autoPlaySpeed : 3000,
						pauseOnHover : true,
						enableResponsiveBreakpoints : true,
						responsiveBreakpoints : {
							portrait : {
								changePoint : 480,
								visibleItems : 2
							},
							landscape : {
								changePoint : 640,
								visibleItems : 3
							},
							tablet : {
								changePoint : 768,
								visibleItems : 3
							}
						}
					});
				});
			</script>
			<!---->
		</div>
	</div>
	<!--//end-bottom-->
	<!--start-footer-->
	<center>
	<div class="footer">
		<div class="container">
			
				<div class="footer-top">
					<div class="col-md-4 footer-center">
						<h3>About Us</h3>
						<ul>
							<li><a href="<c:url value="home"/>">Home</a></li>
							<li><a href="<c:url value="aboutUs" />">Who We Are</a></li>
							<li><a href="<c:url value="contactUs" />">Contact Us</a></li>
						</ul>
					</div>
					<div class="col-md-4 footer-center">
						<h3>Account</h3>
						<ul>
							<li><a href="loginHere">Login</a></li>
							<li><a href="registerHere">Register</a></li>
						</ul>
					</div>
					<div class="col-md-4 footer-center">
						<h3>Shopping</h3>
						<ul>
							<li><a href="<c:url value='category/show/CG01' />">Mobiles</a></li>
							<li><a href="<c:url value='category/show/CG02' />">Laptops</a></li>
							<li><a href="<c:url value='category/show/CG03' />">Digital
									Camera</a></li>
						
						</ul>
					</div>

					<div class="clearfix"></div>
				</div>
			
		</div>
	</div>
	</center>
	<ul class="socials">
		<li><a class="soc1" href="#"></a></li>
		<li><a class="soc2" href="#"></a></li>
		<li><a class="soc3" href="#"></a></li>
	</ul>
	<!--/start-copyright-->
	<div class="copy">
		<div class="container">
			<p>&copy; 2016 RG E-mall. All Rights Reserved |</p>
		</div>
	</div>
	<!--//end-copyright-->
	<!--end-footer-->
	<!--//end-content-->
	<!--start-smooth-scrolling-->
	<script type="text/javascript">
		$(document).ready(function() {

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
		$(document).ready(function() {
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});
	</script>

	<a href="#to-top" id="toTop" style="display: block;"> <span
		id="toTopHover" style="opacity: 1;"> </span></a>
	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

</body>
</html>