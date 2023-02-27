<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8' %>
	<%@ include file='/common/taglib.jsp' %>

		<div class='container-xxl'>
			<div class='authentication-wrapper authentication-basic container-p-y'>
				<div class='authentication-inner'>
					<div class='card'>
						<div class='card-body'>
							<div class='app-brand justify-content-center'>
								<a href='<core:url value='/'/>' class='app-brand-link gap-2'>
								<span class='app-brand-logo demo'> </span> <span
									class='app-brand-text demo text-body fw-bolder'>Cutie Pies</span>
								</a>
							</div>
							<form id='loginForm' class='mb-3 needs-validation' action='/bakery/j_spring_security_check'
								method='POST' novalidate>
								<div class='mb-3 position-relative'>
									<label for='username' class='form-label'>Tên đăng nhập</label> <input type='text'
										class='form-control' id='username' name='username'
										placeholder='Nhập tên đăng nhập' required />
								</div>
								<div class='mb-3 form-password-toggle'>
									<div class='d-flex justify-content-between'>
										<label class='form-label' for='password'>Mật khẩu</label> <a
											href='auth-forgot-password-basic.html'> <small>Quên
												mật khẩu?</small>
										</a>
									</div>
									<div class='input-group input-group-merge'>
										<input type='password' id='password' class='form-control' name='password'
											placeholder='••••••••••' aria-describedby='password' required /> <span
											class='input-group-text cursor-pointer'><i class='bx bx-hide'></i></span>
									</div>
								</div>
								<!-- <div class='mb-3'>
								<div class='form-check'>
									<input class='form-check-input' type='checkbox'
										id='remember-me'/> <label class='form-check-label'
										for='remember-me'> Remember Me </label>
								</div>
							</div> -->
								<div class='mb-3'>
									<button class='btn btn-primary d-grid w-100' type='submit'>Đăng
										nhập</button>
								</div>
							</form>

							<p class='text-center'>
								<span>Bạn chưa có tài khoản?</span> <a href='<core:url value='/register'/>'> <span>Tạo
									tài
									khoản mới</span>
								</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script type="text/javascript">
			const form = document.getElementById('loginForm');
			const username = document.getElementById('username');
			const password = document.getElementById('password');

			form.addEventListener('submit', (event) => {
				event.preventDefault();

				if (username.value.trim() === '') {
					alert('Please enter your username');
					return;
				}

				if (password.value.trim() === '') {
					alert('Please enter your password');
					return;
				}

				form.submit();
			});
		</script>