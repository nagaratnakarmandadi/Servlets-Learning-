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

/* Header */
.header {
	background: #1e293b;
	color: white;
	padding: 20px 40px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.header h1 {
	margin: 0;
}

/* Logout button */
.logout-btn {
	background: #dc2626;
	color: white;
	padding: 10px 18px;
	border-radius: 6px;
	text-decoration: none;
	font-size: 14px;
}

.logout-btn:hover {
	background: #b91c1c;
}

/* Main container */
.container {
	width: 90%;
	max-width: 1200px;
	margin: 40px auto;
}

/* Table container */
.table-container {
	background: white;
	padding: 25px;
	border-radius: 12px;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.10);
	overflow-x: auto;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

/* Table header */
th {
	background: #2563eb;
	color: white;
	padding: 12px;
	text-align: left;
}

/* Table data */
td {
	padding: 12px;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background: #f5f5f5;
}

/* Actions */
.actions {
	white-space: nowrap;
}

/* Update button */
.update-btn {
	background: #16a34a;
	color: white;
	border: none;
	padding: 8px 14px;
	border-radius: 6px;
	cursor: pointer;
	margin-right: 5px;
}

.update-btn:hover {
	background: #15803d;
}

/* Delete button */
.delete-btn {
	background: #dc2626;
	color: white;
	border: none;
	padding: 8px 14px;
	border-radius: 6px;
	cursor: pointer;
}

.delete-btn:hover {
	background: #b91c1c;
}
</style>

</head>

<body>

	<!-- Header -->

	<div class="header">

		<h1>Admin Dashboard</h1>

		<a href="${pageContext.request.contextPath}/LogoutController"
			class="logout-btn"> Logout </a>

	</div>


	<!-- Main Content -->

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

					<th>Actions</th>

				</tr>


				<%
				for (Student s : students) {
				%>

				<tr>

					<td><%=s.getUserName()%></td>

					<td><%=s.getFirstName()%></td>

					<td><%=s.getLastName()%></td>

					<td><%=s.getPassword()%></td>

					<td class="actions">
						<!-- Update --> <a
						href="${pageContext.request.contextPath}/UpdateStudentController?username=<%= s.getUserName() %>">

							<button type="button" class="update-btn">Update</button>

					</a> <!-- Delete --> <a
						href="${pageContext.request.contextPath}/DeleteController?username=<%= s.getUserName() %>"
						onclick="return confirm('Are you sure you want to delete this user?');">

							<button type="button" class="delete-btn">Delete</button>

					</a>

					</td>

				</tr>

				<%
				}
				%>

			</table>

		</div>

	</div>

</body>

</html>