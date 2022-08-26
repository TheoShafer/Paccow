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
<title>show</title>
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
	color: white;
}
.atag {
	text-shadow: 1px 0px 1px #000BE3;
}
a{
font-size:1.2rem;
}
h1 {
	color: white;
}
td {
	background-color: #777777;
	outline: 1px solid #777777;
	border-bottom: 3px solid #000000;
	color: white;
}
.td-end {
	border-bottom-right-radius: 10px;
	color: white;
}
span{
	color:black;
}
th{
color: white;
}
</style>
<body class="darkmode">
	<div class="container mt-5">
		<h3>
			Welcome, <c:out value="${userName }" />
		</h3>
		<p>TV Shows</p>
		<a href="/logout">Logout</a>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>Show</th>
					<th>Network</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="eachShow" items="${showList }">
					<tr>
						<td><a href="/shows/${eachShow.id }"><c:out value="${eachShow.title }" /></a></td>
						<td><c:out value="${eachShow.author }" /></td>
					</tr>

				</c:forEach>

			</tbody>


		</table>
		<a class="btn btn-primary" href="/shows/add">Add a Show</a>
	</div>
	<p class="footer">Dark mode!</p>
</body>
</html>



