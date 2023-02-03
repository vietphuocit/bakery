<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Sign up</title>
</head>
<body>
	<core:import url="../layouts/header.jsp" />
	<h3 class="p-3 text-center">Register</h3>
	<form:form class="w-25 border rounded p-4 m-auto bg-light bg-gradient"
		action="/bakery/register" method="POST" modelAttribute="user">
		<div class="mb-3">
			<form:label for="name" class="form-label" path="name">Name</form:label>
			<form:input type="text" class="form-control" id="name" path="name"
				name="name" />
		</div>
		<div class="mb-3">
			<form:label for="username" class="form-label" path="username">Username</form:label>
			<form:input type="text" class="form-control" id="username"
				path="username" name="username" />
		</div>
		<div class="mb-3">
			<form:label for="password" class="form-label" path="password">Password</form:label>
			<form:input type="password" class="form-control" id="password"
				path="password" name="password" />
		</div>
		<div class="mb-3">
			<label for="rePassword" class="form-label">Remember password</label>
			<input type="password" class="form-control" id="rePassword">
		</div>
		<div class="text-center">
			<button type="submit" class="btn btn-success">Sign up</button>
		</div>
	</form:form>
</body>
</html>
