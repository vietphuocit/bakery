<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Sign in</title>
</head>
<body>
	<core:import url="../layouts/header.jsp" />
	<h3 class="p-3 text-center">Sign in to Website</h3>
	<form:form class="w-25 border rounded p-4 m-auto bg-light bg-gradient"
		method="POST" action='/bakery/j_spring_security_check'
		modelAttribute="user">
		<div class="mb-3">
			<form:label path="username" for="username" class="form-label">Username</form:label>
			<form:input path="username" name="username" type="text"
				class="form-control" id="username" />
		</div>
		<div class="mb-3">
			<form:label path="password" for="password" class="form-label">Password</form:label>
			<form:input path="password" name="password" type="password"
				class="form-control" id="password" />
		</div>
		<div class="mb-3">
			<a href="#">Forgot password?</a>
		</div>
		<div class="text-center">
			<form:button type="submit" class="btn btn-success">Sign in</form:button>
		</div>
	</form:form>
	<div class="mt-3 w-25 border rounded p-4 m-auto ">
		Don't have account? <a href="#">Create an account</a>.
	</div>
</body>
</html>
