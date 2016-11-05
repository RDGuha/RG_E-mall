
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RG e-mall</title>

</head>
<body>

	<div class="back">
	<h4>${message}</h4>
		<h2>Register</h2>
	</div>
	<!---->
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-4">
			<div class="col-sm-10">
			<form:form action="register" method="post" commandName="user">
			<div class="form-group">
			
		<table>
		
			<tr>
				<td><form:label path="id">
						User Id
					</form:label></td>

				<td><form:input path="id" pattern=".{4,7}" required="true"
						title="id should contains 4 to 7 characters" placeholder="enter userId" class="form-control"  /></td>
			</tr>
			
			<tr>
				<td><form:label path="name">
						Name
					</form:label></td>

				<td><form:input path="name" pattern="[a-zA-Z][a-zA-Z\s]*" required="true"
						title="name should not be empty" placeholder="name" class="form-control" /></td>
			</tr>
			<tr>
				<td><form:label path="password">
						Password
					</form:label></td>
 
				<td><form:input type="password" path="password" pattern=".{4,15}"
						required="true"
						title="password should contains 4 to 15 characters" placeholder="enter password" class="form-control" /></td>
			
			</tr>
				<tr>
				<td><form:label path="repassword">
						Re-type Password
					</form:label></td>

				<td><form:input type="password"  path="repassword" pattern=".{4,15}"
						required="true"
						title="password should contains 4 to 15 characters" placeholder="re-enter password" class="form-control" /></td>
			</tr>
			<tr>
				<td><form:label path="mobile">
						Mobile
					</form:label></td>

				<td><form:input type="tel" path="mobile" pattern="[7|8|9][0-9]{9}$" required="true"
						title="Please enter valid mobile number" placeholder="enter mobile number" class="form-control" /></td>
			</tr>

			<tr>
				<td><form:label path="email">
						Email
					</form:label></td>

				<td><form:input type="email" path="email" placeholder="enter email Id" class="form-control" /></td>
			</tr>

			<tr>
				<td><form:label path="address">
						Address
					</form:label></td>

				<td><form:input path="address" required="true" placeholder="enter address" class="form-control" /></td>
			</tr>

			<tr>

				<td><input type="submit"
					value="Register" class="form-control"/></td>
				<td><input type="reset" value="Reset" class="form-control" />
				</td>
			</tr>

		</table>
		
		</div>
			<br> Already have an account? <a href="loginHere">Login</a>
					now!
	</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>