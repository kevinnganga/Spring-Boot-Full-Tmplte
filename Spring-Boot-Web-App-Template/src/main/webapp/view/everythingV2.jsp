<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List All Records</title>
	
	<!-- reference our style sheet -->

	<style type="text/css">
		
		html, body{
	margin-left:15px; margin-right:15px; 
	padding:0px; 
	font-family:Verdana, Arial, Helvetica, sans-serif;
}

table {   
	border-collapse:collapse;
	border-bottom:1px solid gray;
	font-family: Tahoma,Verdana,Segoe,sans-serif;
	width:72%;
}
 
th {
	border-bottom:1px solid gray;
	background:none repeat scroll 0 0 #09c332;
	padding:10px;
	color: #FFFFFF;
}

tr {
	border-top:1px solid gray;
	text-align:center;	
}
 
tr:nth-child(even) {background: #FFFFFF}
tr:nth-child(odd) {background: #BBBBBB}	
 
#wrapper {width: 100%; margin-top: 0px; }
#header {width: 70%; background: #09c332; margin-top: 0px; padding:15px 0px 15px 15px;}
#header h2 {width: 100%; margin:auto; color: #FFFFFF;}
#container {width: 100%; margin:auto}
#container h3 {color: #000;}
#container #content {margin-top: 20px;}

.add-button {
	border: 1px solid #666; 
	border-radius: 5px; 
	padding: 4px; 
	font-size: 12px;
	font-weight: bold;
	width: 120px; 
	padding: 5px 10px; 
	
	margin-bottom: 15px;
	background: #cccccc;
}
	</style>
		 

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>ALL DATABASE RECORDS</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add Units -->
		
			<input type="button" value="Add Customer"
				   onclick="window.location.href='showFormForAdd'; return false;"
				   class="add-button"/> <!-- class in the css to make it presentable -->
			
		
			<table>
				<tr>
					<th>ID</th>
					<th>USER NAME</th>
					<th>PASSWORD</th>
					<th>UPDATE</th>
				</tr>
				
				<!-- loop over and print the database rows -->
				<c:forEach var="tempCustomer" items="${yesV2}">

				<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/link">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>

					<!-- construct an "delete" link with customer id -->
					<c:url var="deleteLink" value="/Linkdelete">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>
				
					<tr>
						<td> ${tempCustomer.id} </td>
						<td> ${tempCustomer.userName} </td>
						<td> ${tempCustomer.password} </td>

						<td>
							<!-- display the update link -->
							<a href="${updateLink}">Update</a>
							<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this Unit?'))) return false">Delete</a> 
							
						</td>
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	

</body>

</html>









