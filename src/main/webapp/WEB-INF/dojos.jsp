<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Dojos</title>
</head>
<body>
	
	<h1>Dojos</h1>
	
	<ul>
		<c:forEach items="${dojos}" var="d">			
			<li>  <c:out value="${d.name}"/>  </li>
			<ul>
				<c:forEach items="${d.ninjas}" var="n">
					<li> <c:out value="${n.firstName}"/> </li>
				</c:forEach>
			</ul>
		</c:forEach>
	</ul>
	
	
	<h1>New Dojo</h1>
	
	<form:form action="/dojos" method="post" modelAttribute="dojo">
	<p>
		<form:label path="name">name:</form:label>
		<form:errors path="name"/>
		<form:input path="name"/>
	</p>
	<input type="submit" value="Submit"/>
	</form:form>
</body>
</html>