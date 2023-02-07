<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

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
						<form id="formAuthentication" class="mb-3 needs-validation"
							action="/bakery/j_spring_security_check" method="POST" novalidate>
							<div class="mb-3 position-relative">
								<label for="username" class="form-label">Username</label> <input
									type="text" class="form-control" id="username" name="username"
									placeholder="Enter your username" required />
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
										aria-describedby="password" required /> <span
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
							<span>New on our website?</span> <a
								href="<core:url value='/register' />"> <span>Create
									an account</span>
							</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var form = document.getElementById("formAuthentication");
		form.addEventListener('submit', function(event) {
			if (form.checkValidity() === false) {
				event.preventDefault();
				event.stopPropagation();
			}
			form.classList.add('was-validated');
		}, false);
	</script>
</body>
