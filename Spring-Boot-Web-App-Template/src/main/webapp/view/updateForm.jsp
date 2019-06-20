<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>CUSTOM</title>
</head>
<body>

	<h1>NEW CUSTOM***UPDATES*...</h1>
	
	<form:form action="updateProcessing" modelAttribute="update">
	
		User ID: <form:input path="id"   />

		User Name: <form:input path="userName"  value="${update.userName}" />

		Password: <form:input path="password"  value="${update.password}" />
		
		
		<br><br>
	
		
	
		<input type="submit" value="Submit" />
	
	</form:form>

</body>
</html>