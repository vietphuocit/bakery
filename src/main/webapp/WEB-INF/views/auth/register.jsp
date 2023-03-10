<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8' %>
	<%@ include file='/common/taglib.jsp' %>

		<body>
			<div class='container-xxl'>
				<div class='authentication-wrapper authentication-basic container-p-y'>
					<div class='authentication-inner'>
						<div class='card'>
							<div class='card-body'>
								<div class='app-brand justify-content-center'>
									<a href='<core:url value='/'/>' class='app-brand-link gap-2'>
									<span class='app-brand-logo demo'> </span> <span
										class='app-brand-text demo text-body fw-bolder'>Sneat</span>
									</a>
								</div>

								<form id='formAuthentication' class='mb-3 needs-validation' action='/bakery/register/'
									method='POST' novalidate>
									<div class='mb-3'>
										<label for='fullName' class='form-label'>Your name</label> <input type='text'
											class='form-control' id='fullName' name='fullName'
											placeholder='Enter your name' required />
									</div>
									<div class='mb-3'>
										<label for='username' class='form-label'>Username</label> <input type='text'
											class='form-control' id='username' name='username'
											placeholder='Enter your username' required />
									</div>
									<div class='mb-3 form-password-toggle'>
										<label for='password' class='form-label'>Password</label>
										<div class='input-group input-group-merge'>
											<input type='password' id='password' class='form-control' name='password'
												placeholder='••••••••••' aria-describedby='password' required
												onblur='confirmPwBlur()'/>
											<span class='input-group-text cursor-pointer'><i
													class='bx bx-hide'></i></span>
										</div>
									</div>
									<div class='mb-3 form-password-toggle'>
										<label for='re-password' class='form-label'>Repeat
											Password</label>
										<div class='input-group input-group-merge'>
											<input type='password' id='confirm-password' class='form-control'
												placeholder='••••••••••' aria-describedby='password' required
												onblur='confirmPwBlur()'/>
											<span class='input-group-text cursor-pointer'><i
													class='bx bx-hide'></i></span>
										</div>
									</div>

									<div class='mb-3'>
										<div class='form-check'>
											<input class='form-check-input' type='checkbox' id='terms-conditions'
												name='terms' required /> <label class='form-check-label'
												for='terms-conditions'> I
												agree to <a href='#'>privacy policy and terms</a>
											</label>
										</div>
									</div>
									<button type='submit' class='btn btn-primary d-grid w-100' id='sign-up'
										disabled>Sign up</button>
								</form>

								<p class='text-center'>
									<span>Already have an account?</span> <a href='<core:url value='/login'/>'>
									<span>Sign in</span>
									</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<script type='text/javascript'>
				var form = document.getElementById('formAuthentication');
				form.addEventListener('submit', function (event) {
					if (form.checkValidity() === false) {
						event.preventDefault();
						event.stopPropagation();
					}
					form.classList.add('was-validated');
				}, false);

				var checker = document.getElementById('terms-conditions');
				var sendbtn = document.getElementById('sign-up');
				var password = document.getElementById('password');
				var confirmPassword = document.getElementById('confirm-password');

				checker.onchange = function () {
					if (confirmPwBlur())
						sendbtn.disabled = !this.checked;
				}

				function confirmPwBlur() {
					if (password.value !== confirmPassword.value
						|| confirmPassword.value == '') {
						sendbtn.disabled = true;
						password.classList.add('is-invalid')
						confirmPassword.classList.add('is-invalid')
						return false;
					}
					sendbtn.disabled = !checker.checked;
					password.classList.remove('is-invalid')
					confirmPassword.classList.remove('is-invalid')
					return true;
				}
			</script>
		</body>