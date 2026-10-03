<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>

<style>
body {
	font-family: Arial, sans-serif;
	background: #f2f4f7;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	margin: 0;
}

.container {
	background: white;
	width: 400px;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.12);
}

h1 {
	text-align: center;
	color: #333;
	margin-bottom: 25px;
}

input {
	width: 100%;
	padding: 12px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 6px;
}

input:focus {
	outline: none;
	border-color: #2563eb;
}

button {
	width: 100%;
	padding: 12px;
	margin-top: 15px;
	border: none;
	border-radius: 6px;
	background: #2563eb;
	color: white;
	font-size: 16px;
	cursor: pointer;
}

button:hover {
	background: #1d4ed8;
}
</style>
</head>

<body>

	<div class="container">

		<h1>Create Account</h1>

		<form action="RegisterController" method="post">

			<input type="text" name="userName" placeholder="Username"> <input
				type="text" name="firstName" placeholder="First Name"> <input
				type="text" name="lastName" placeholder="Last Name"> <input
				type="text" name="password" placeholder="Password">

			<button type="submit">Register</button>
			<a href="./login.jsp">Click Here to Login</a>
		</form>

	</div>

</body>
</html>