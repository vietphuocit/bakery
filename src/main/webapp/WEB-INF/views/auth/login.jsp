<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en" class="light-style customizer-hide" dir="ltr"
	data-theme="theme-default"
	data-assets-path='<core:url value="/template/sneat/assets/"/>'
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<title>Login</title>
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
						<h4 class="mb-2">Welcome to Sneat!</h4>
						<p class="mb-4">Please sign-in to your account and start the
							website</p>

						<form id="formAuthentication" class="mb-3"
							action="/bakery/j_spring_security_check" method="POST">
							<div class="mb-3">
								<label for="username" class="form-label">Username</label> <input
									type="text" class="form-control" id="username" name="username"
									placeholder="Enter your username" required="required" />
							</div>
							<div class="mb-3 form-password-toggle">
								<div class="d-flex justify-content-between">
									<label class="form-label" for="password">Password</label> <a
										href="auth-forgot-password-basic.html"> <small>Forgot
											Password?</small>
									</a>
								</div>
								<div class="input-group input-group-merge">
									<input type="password" id="password" class="form-control"
										name="password" placeholder="••••••••••"
										aria-describedby="password" required="required" /> <span
										class="input-group-text cursor-pointer"><i
										class="bx bx-hide"></i></span>
								</div>
							</div>
							<div class="mb-3">
								<div class="form-check">
									<input class="form-check-input" type="checkbox"
										id="remember-me" /> <label class="form-check-label"
										for="remember-me"> Remember Me </label>
								</div>
							</div>
							<div class="mb-3">
								<button class="btn btn-primary d-grid w-100" type="submit">Sign
									in</button>
							</div>
						</form>

						<p class="text-center">
							<span>New on our platform?</span> <a
								href="<core:url value='/register' />"> <span>Create
									an account</span>
							</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>