<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.register.model.Student"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Edit Student</title>

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
	max-width: 600px;
	margin: 50px auto;
}

.form-container {
	background: white;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.10);
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 8px;
	font-weight: bold;
}

input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 6px;
	box-sizing: border-box;
}

.button-container {
	margin-top: 25px;
}

.save-btn {
	background: #16a34a;
	color: white;
	border: none;
	padding: 10px 18px;
	border-radius: 6px;
	cursor: pointer;
}

.save-btn:hover {
	background: #15803d;
}

.cancel-btn {
	background: #64748b;
	color: white;
	border: none;
	padding: 10px 18px;
	border-radius: 6px;
	text-decoration: none;
	margin-left: 10px;
}

.cancel-btn:hover {
	background: #475569;
}
</style>

</head>

<body>

	<div class="header">
		<h1>Edit Student</h1>
	</div>

	<div class="container">

		<div class="form-container">

			<h2>Update Student Details</h2>

			<%
			Student student = (Student) request.getAttribute("student");
			%>

			<form
				action="${pageContext.request.contextPath}/UpdateStudentController"
				method="post">

				<!-- Username -->
				<div class="form-group">

					<label>Username</label> <input type="text"
						value="<%=student.getUserName()%>" disabled>

					<!-- Username is used to identify the student -->
					<input type="hidden" name="username"
						value="<%=student.getUserName()%>">

				</div>

				<!-- First Name -->
				<div class="form-group">

					<label>First Name</label> <input type="text" name="firstname"
						value="<%=student.getFirstName()%>" required>

				</div>

				<!-- Last Name -->
				<div class="form-group">

					<label>Last Name</label> <input type="text" name="lastname"
						value="<%=student.getLastName()%>" required>

				</div>

				<!-- Password -->
				<div class="form-group">

					<label>Password</label> <input type="text" name="password"
						value="<%=student.getPassword()%>" required>

				</div>

				<div class="button-container">

					<button type="submit" class="save-btn">Save Changes</button>

					<a href="${pageContext.request.contextPath}/AdminController"
						class="cancel-btn"> Cancel </a>

				</div>

			</form>

		</div>

	</div>

</body>
</html>