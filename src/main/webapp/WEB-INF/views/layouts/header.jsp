<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!doctype html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

</head>
<body>
	<header class="px-3 py-2 border-bottom mb-3">
		<div class="container d-flex flex-wrap justify-content-between">
			<ul class="navbar-nav d-flex flex-row">
				<li class="nav-item p-2"><a class="nav-link"
					href='<core:url value="/" />'>Company Name</a></li>
				<li class="nav-item p-2"><a class="nav-link"
					href='<core:url value="/user" />'>User</a></li>
				<li class="nav-item p-2"><a class="nav-link"
					href='<core:url value="/admin" />'>Admin</a></li>
			</ul>
			<div class="d-flex flex-wrap justify-content-end align-items-center">
				<form class="me-2 mb-0">
					<input type="search" class="form-control" placeholder="Search..."
						aria-label="Search">
				</form>
				<sec:authorize access="isAuthenticated()">
					<span id="icon-cart" class="me-2"><i
						class="fas fa-shopping-cart"></i></span>
					<a href='<core:url value="/logout"/>' class="btn btn-danger">Sign
						out</a>
				</sec:authorize>
				<sec:authorize access="!isAuthenticated()">
					<a href='<core:url value="/login"/>'
						class="btn btn-light text-dark me-2">Sign in</a>
					<a href='<core:url value="/register"/>' class="btn btn-primary">Sign
						up</a>
				</sec:authorize>
			</div>
		</div>
	</header>
</body>
</html>
