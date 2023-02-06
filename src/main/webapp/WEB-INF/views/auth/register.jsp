<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en" class="light-style customizer-hide" dir="ltr"
	data-theme="theme-default" data-assets-path="../assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<title>Register</title>
</head>

<body>
	<div class="container-xxl">
		<div class="authentication-wrapper authentication-basic container-p-y">
			<div class="authentication-inner">
				<div class="card">
					<div class="card-body">
						<div class="app-brand justify-content-center">
							<a href='<core:url value="/" />' class="app-brand-link gap-2">
								<span class="app-brand-logo demo"> </span> <span
								class="app-brand-text demo text-body fw-bolder">Sneat</span>
							</a>
						</div>

						<form:form id="formAuthentication" class="mb-3"
							action="/bakery/register/" method="POST" modelAttribute="user">
							<div class="mb-3">
								<label for="fullName" class="form-label">Your name</label>
								<form:input type="text" class="form-control" id="fullName"
									path="fullName" name="fullName" placeholder="Enter your name" />
							</div>
							<div class="mb-3">
								<label for="username" class="form-label">Username</label>
								<form:input type="text" class="form-control" id="username"
									path="username" name="username"
									placeholder="Enter your username" />
							</div>
							<div class="mb-3 form-password-toggle">
								<label for="password" class="form-label">Password</label>
								<div class="input-group input-group-merge">
									<form:input type="password" id="password" class="form-control"
										path="password" name="password" placeholder="••••••••••"
										aria-describedby="password" required="required" />
									<span class="input-group-text cursor-pointer"><i
										class="bx bx-hide"></i></span>
								</div>
							</div>
							<div class="mb-3 form-password-toggle">
								<label for="re-password" class="form-label">Repeat
									Password</label>
								<div class="input-group input-group-merge">
									<input type="password" id="re-password" class="form-control"
										placeholder="••••••••••" aria-describedby="password"
										required="required" /> <span
										class="input-group-text cursor-pointer"><i
										class="bx bx-hide"></i></span>
								</div>
							</div>

							<div class="mb-3">
								<div class="form-check">
									<input class="form-check-input" type="checkbox"
										id="terms-conditions" name="terms" /> <label
										class="form-check-label" for="terms-conditions"> I
										agree to <a href="#">privacy policy & terms</a>
									</label>
								</div>
							</div>
							<form:button class="btn btn-primary d-grid w-100">Sign up</form:button>
						</form:form>

						<p class="text-center">
							<span>Already have an account?</span> <a
								href="<core:url value='/login' />"> <span>Sign in
									instead</span>
							</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>