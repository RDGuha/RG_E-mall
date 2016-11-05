
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
<%@ include file="/WEB-INF/views/shared/header.jsp"%>

	
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


	<%@ include file="/WEB-INF/views/shared/footer.jsp"%>

</body>
</html>