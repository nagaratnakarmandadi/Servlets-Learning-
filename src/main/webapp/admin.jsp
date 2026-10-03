<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
	font-size: 24px;
}

.container {
	width: 90%;
	max-width: 1000px;
	margin: 40px auto;
}

.welcome {
	background: white;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.10);
}

.welcome h2 {
	margin-top: 0;
	color: #2563eb;
}

.welcome p {
	color: #555;
}

.cards {
	display: flex;
	gap: 20px;
	margin-top: 25px;
}

.card {
	flex: 1;
	background: white;
	padding: 25px;
	border-radius: 12px;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
}

.card h3 {
	margin-top: 0;
	color: #333;
}

.card p {
	color: #666;
}

.button {
	display: inline-block;
	margin-top: 15px;
	padding: 10px 18px;
	background: #2563eb;
	color: white;
	text-decoration: none;
	border-radius: 6px;
}

.button:hover {
	background: #1d4ed8;
}
</style>

</head>

<body>

	<div class="header">
		<h1>Admin Dashboard</h1>
	</div>

	<div class="container">

		<div class="welcome">
			<h2>Welcome to Admin Page</h2>
			<p>Manage your application from the admin dashboard.</p>
		</div>

		<div class="cards">

			<div class="card">
				<h3>Students</h3>
				<p>View and manage registered students.</p>
				<a href="#" class="button">View Students</a>
			</div>

			<div class="card">
				<h3>Projects</h3>
				<p>View and manage application projects.</p>
				<a href="project.jsp" class="button">View Projects</a>
			</div>

		</div>

	</div>

</body>
</html>