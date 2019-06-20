<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>UPDATE UNITSr</title>
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
			<h2>UNITS   CRM SYSTEM</h2>
		</div>
	</div>

	<div id="container">
		<h3>UPDATE UNITS</h3>
	
		<form:form action="updateprocessing" modelAttribute="linksupdates" method="POST">
		<!-- need to associate this data with customer id to keep track of the units id -->

			
			<form:hidden path="id" />
					
			<table>
				<tbody>
					<tr>
						<td><label>USER ID:</label></td>
						<td><form:input path="id" /></td>
					</tr>
				
					<tr>
						<td><label>USER NAME:</label></td>
						<td><form:input path="userName" /></td>
					</tr>

					<tr>
						<td><label>PASSWORD:</label></td>
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










