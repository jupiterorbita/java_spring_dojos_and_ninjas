<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<style>
	tr, th, td {
	outline: 1px solid grey;
	}
	body *{
	margin-left:20px;
	}
</style>
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title> <c:out value="${dojo.name}" /></title>
</head>
<body>

	<h2><c:out value="${dojo.name}" /></h2>
	<table>
		<thead>
			<tr>
				<td>First Name</td>
				<td>Last Name</td>
				<td>Age</td>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${dojo.ninjas}" var="n">
				<tr>
					<td><c:out value="${n.firstName}" /></td>
					<td><c:out value="${n.lastName}" /></td>
					<td><c:out value="${n.age}" /></td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>