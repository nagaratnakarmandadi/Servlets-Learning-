<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.register.model.Student"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<style>
body {
	font-family: Arial, sans-serif;
	background: #f2f4f7;
	margin: 0;
}

.header {
	background: #1e293b;
	color: white;
	padding: 20px 40px;
}

.header h1 {
	margin: 0;
}

.container {
	width: 90%;
	max-width: 1100px;
	margin: 40px auto;
}

.table-container {
	background: white;
	padding: 25px;
	border-radius: 12px;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.10);
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th {
	background: #2563eb;
	color: white;
	padding: 12px;
	text-align: left;
}

td {
	padding: 12px;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background: #f5f5f5;
}
</style>

</head>

<body>

	<div class="header">
		<h1>Admin Dashboard</h1>
	</div>

	<div class="container">

		<div class="table-container">

			<h2>Registered Students</h2>

			<%
			List<Student> students = (List<Student>) request.getAttribute("students");
			%>

			<table>

				<tr>
					<th>Username</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Password</th>
				</tr>

				<%
				for (Student s : students) {
				%>

				<tr>
					<td><%=s.getUserName()%></td>
					<td><%=s.getFirstName()%></td>
					<td><%=s.getLastName()%></td>
					<td><%=s.getPassword()%></td>
				</tr>

				<%
				}
				%>

			</table>

		</div>

	</div>

</body>
</html>