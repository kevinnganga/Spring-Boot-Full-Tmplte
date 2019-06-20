<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
</head>
<body>

	<h1>NEW LOGIN****...</h1>
	
	<form:form action="geting" modelAttribute="loginClass">
	
		User ID: <form:input path="id"  />
		
		
		<br><br>
	
		
	
		<input type="submit" value="Submit" />
	
	</form:form>

</body>
</html>