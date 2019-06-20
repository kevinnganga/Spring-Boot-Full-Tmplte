<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>CUSTOM</title>
</head>
<body>

	<h1>NEW CUSTOM****...</h1>
	
	<form:form action="customprocessing" modelAttribute="custom">
	
		User NAME: <form:input path="userName"  />
		
		
		<br><br>
	
		
	
		<input type="submit" value="Submit" />
	
	</form:form>

</body>
</html>