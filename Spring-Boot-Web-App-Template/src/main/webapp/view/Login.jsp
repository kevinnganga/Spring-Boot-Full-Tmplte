<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>Student Registration Form</title>
</head>

<body>

	<form:form action="authenticate" modelAttribute="posting">
	
		User name: <form:input path="userName"  />
		
		<br><br>
	
		Password: <form:input path="password" />
		
		<br><br>
	
		<input type="submit" value="Submit" />
	
	</form:form>
	
	
	


</body>

</html>












