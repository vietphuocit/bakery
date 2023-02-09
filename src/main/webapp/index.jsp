<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
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