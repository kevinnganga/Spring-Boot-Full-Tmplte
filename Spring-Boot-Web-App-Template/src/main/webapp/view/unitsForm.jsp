<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Customer</title>
<style type="text/css">
	
	form {
	margin-top: 10px;
}

label {
	font-size: 16px; 
	width: 100px; 
	display: block; 
	text-align: right;
	margin-right: 10px;
	margin-top: 8px;
	margin-bottom: 8px;
}

input {
	width: 250px;
	border: 1px solid #666; 
	border-radius: 5px; 
	padding: 4px; 
	font-size: 16px;
}

.save {
	font-weight: bold;
	width: 130px; 
	padding: 5px 10px; 
	margin-top: 30px;
	background: #cccccc;
}

table {   
	border-style:none;
	width:50%;
}

tr:nth-child(even) {background: #FFFFFF}
tr:nth-child(odd) {background: #FFFFFF}

tr {
	border-style:none;
	text-align:left;	
}
	

</style>
	
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>LOGIN CRM SYSTEM</h2>
		</div>
	</div>

	<div id="container">
		<h3>ADD Login</h3>
	
		<form:form action="saveLogin" modelAttribute="units" method="POST">
		
			<table>
				<tbody>
					<tr>
						<td><label>User Name:</label></td>
						<td><form:input path="userName" /></td>
					</tr>
				
					<tr>
						<td><label>password:</label></td>
						<td><form:input path="password" /></td>
					</tr>

					

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/everythingV2">Back to List</a>
		</p>
	
	</div>

</body>

</html>










