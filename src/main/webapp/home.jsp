<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Home</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f4f7;
	margin: 0;
}

/* Header */
.header {
	background-color: #1e293b;
	color: white;
	padding: 20px 40px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.header h1 {
	margin: 0;
}

/* Logout Button */
.logout-btn {
	background-color: #dc2626;
	color: white;
	padding: 10px 18px;
	border: none;
	border-radius: 6px;
	text-decoration: none;
	font-size: 14px;
	cursor: pointer;
}

.logout-btn:hover {
	background-color: #b91c1c;
}

/* Main container */
.container {
	width: 90%;
	max-width: 1000px;
	margin: 50px auto;
}

/* Welcome card */
.card {
	background-color: white;
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.10);
	text-align: center;
}

.card h2 {
	color: #1e293b;
}

.card p {
	color: #64748b;
	font-size: 17px;
}

/* Project button */
.project-btn {
	display: inline-block;
	margin-top: 20px;
	background-color: #2563eb;
	color: white;
	padding: 12px 20px;
	border-radius: 6px;
	text-decoration: none;
}

.project-btn:hover {
	background-color: #1d4ed8;
}
</style>

</head>

<body>

	<!-- Header -->
	<div class="header">

		<h1>Student Portal</h1>

		<a href="${pageContext.request.contextPath}/LogoutController"
			class="logout-btn"> Logout </a>

	</div>


	<!-- Main Content -->
	<div class="container">

		<div class="card">

			<h2>
				Welcome to
				<%=session.getAttribute("un")%>
			</h2>

			<p>You have successfully logged in.</p>

			<a href="project.jsp" class="project-btn"> View Project </a>

		</div>

	</div>

</body>

</html>