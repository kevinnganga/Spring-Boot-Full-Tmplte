<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>CUSTOM</title>
</head>
<body>

	<h1>NEW CUSTOM****DELETES...</h1>
	
	<form:form action="deleteProcessing" modelAttribute="deletes">
	
		User ID: <form:input path="id"  />
		
		
		<br><br>
	
		
	
		<input type="submit" value="Submit" />
	
	</form:form>

</body>
</html>