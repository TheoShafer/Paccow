<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login/Registration</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<style>
.darkmode {
	background: #555555;
	color: white;
	padding: 50px;
	height: 100vh;
}
/*.footer {
	position: absolute;
	display: flex;
	left: 45vw;
	bottom: 1px;
	text-shadow: 5px 5px 5px #000000;
}*/
.atag {
	text-shadow: 1px 0px 1px #000BE3;
}
h1 {
	color: white;
}
td {
	background-color: #777777;
	outline: 1px solid #777777;
	border-bottom: 3px solid #000000;
}
.td-end {
	border-bottom-right-radius: 10px;
}
.purple {
	color: blue;
}
</style>
<body class="darkmode">
	<h1 class="blue">Shows</h1>
	<div class="container mt-5">
		<h1>Register</h1>
		<form:form action="/register" method="post" modelAttribute="newUser">
			<div class="form-group">
				<label>Name:</label>
				<form:input path="userName" class="form-control" />
				<form:errors path="userName" class="text-danger" />
			</div>
			<div class="form-group">
				<label>Email:</label>
				<form:input path="email" class="form-control" />
				<form:errors path="email" class="text-danger" />
			</div>
			<div class="form-group">
				<label>Password:</label>
				<form:input path="password" class="form-control" />
				<form:errors path="password" class="text-danger" />
			</div>
			<div class="form-group">
				<label>Confirm PW:</label>
				<form:input path="confirm" class="form-control" />
				<form:errors path="confirm" class="text-danger" />
			</div>
			<input type="submit" value="Register" class="btn btn-primary" />
			</form:form>

	<h1>Log in</h1>
		<form:form action="/login" method="post" modelAttribute="newLogin">
			<div class="form-group">
				<label>Email:</label>
				<form:input path="email" class="form-control" />
				<form:errors path="email" class="text-danger" />
			</div>
			<div class="form-group">
				<label>Password:</label>
				<form:input path="password" class="form-control" />
				<form:errors path="password" class="text-danger" />
			</div>
			<input type="submit" value="Login" class="btn btn-success" />
		</form:form>
		

	
	</div>

	<!--  <p class="footer">Dark mode!</p> -->
</body>
</html>
