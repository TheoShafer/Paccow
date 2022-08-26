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
.not_button{
cursor: default;
border: 0px solid white;
font-size:1.5rem;
}
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
</style>
<body class="darkmode">
	<div class="container mt-5">
	<h1><c:out value="${show.title }" /></h1>
	
		<form:form action="/shows/edit/${show.id }" method="post" modelAttribute="show" class="form-control">
			<!-- <form:label path="title" class="form-label" >${oneShow.title } </form:label> -->
			<!-- <form:input path="title" type="text" class="not_button"/> -->
			<input type="hidden" name="_method" value="put" />
			<div>
				<form:label path="title" class="form-label" >Title </form:label>
				<form:input path="title" type="text" class="form-control" />
				<form:errors path="title" class="text-danger" />
			</div>
			<div>
				<form:label path="author" class="form-label" >Network </form:label>
				<form:input path="author" type="text" class="form-control" />
				<form:errors path="author" class="text-danger" />
			</div>
			<div>
				<form:label path="description" class="form-label" >Description </form:label>
				<form:input path="description" type="text" class="form-control" />
				<form:errors path="description" class="text-danger" />
			</div>
			<a class="btn btn-primary" href="/dashboard">Cancel</a>
			<input type="submit" value="Submit" class="btn btn-primary" />
			
			
		</form:form>
			<form action="/shows/delete/${show.id }" method="post">
				<input type="hidden" name="_method" value="delete" />
				<button type="submit" class="btn btn-danger" > Delete</button>
			</form>
	</div>
	<p class="footer">Dark mode!</p>
</body>
</html>

