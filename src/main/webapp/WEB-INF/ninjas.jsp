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
<title>Insert title here</title>
</head>
<body>
	
	<c:forEach items="${ninjas}" var="n">
		<p>
		<c:out value="${n.firstName}"/> :
		<c:out value="${n.dojo.name}"/> ,
		</p>
	</c:forEach>
	
	<h1>New Ninja</h1>

	<form:form action="/ninjas" method="post" modelAttribute="ninja">
	<!-- DROPDOWN -->
	<p>
		<form:label path="dojo">your Dojo:</form:label>
		<form:errors path="dojo"/>
		<form:select path="dojo">
			<option disabled selected value="">Select a Dojo!</option>
			<c:forEach items="${dojos}" var="d">
				<!-- non-form option -->
				<form:option value="${d}">
					<c:out value="${d.name}"/>
				</form:option>
			</c:forEach>
		</form:select>
		
	</p>
	<p>
		<form:label path="firstName">First Name:</form:label>
		<form:errors path="firstName"/>
		<form:input path="firstName"/>
	</p>
	<p>
		<form:label path="lastName">Last Name:</form:label>
		<form:errors path="lastName"/>
		<form:input path="lastName"/>
	</p>
	<p>
		<form:label path="age">age:</form:label>
		<form:errors path="age"/>
		<form:input type="number" path="age" min="0" max="99"/>
	</p>
	<input type="submit" value="Submit"/>
	</form:form>
</body>
</html>