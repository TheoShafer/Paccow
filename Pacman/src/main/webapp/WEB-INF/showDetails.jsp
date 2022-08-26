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
</head>
<style>
.darkmode {
	background: #555555;
	color: white;
}
.footer {
	position: absolute;
	display: flex;
	left: 45vw;
	bottom: 10px;
	text-shadow: 5px 5px 5px #000000;
}
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
h3{
color:white;
}
</style>
<body class="darkmode">
	<div class="container mt-5">
	
		<h1><c:out value="${oneShow.title }" /></h1>
		<a href="/dashboard">Back to Dashboard</a>
		<hr/>
		<h1> Posted By: </h1>
		<h3><c:out value="${oneShow.teamlead.userName }" /></h3>
		<hr/>
		<h1> Network: </h1>
		<h3><c:out value="${oneShow.author }" /></h3>
		<hr/>
		<h1> Description: </h1>
		<h3><c:out value="${oneShow.description }" /></h3>
		<hr/>
		
		
		<c:if test="${oneShow.teamlead.id == userId }">
			<form action="/shows/delete/${oneShow.id }" method="post">
				<input type="hidden" name="_method" value="delete" />
				<a href="/shows/edit/${oneShow.id }" class="btn btn-success">Edit</a>
				<button type="submit" class="btn btn-danger" > Delete</button>
			</form>
		</c:if>
	
	</div>
	<p class="footer">Dark mode!</p>
</body>
</html>

