<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ include file='/common/taglib.jsp'%>

<div class='container' id='container'>

	<div class='form-container register-container'>
		<form id='registerForm' action='/bakery/register/' method='POST'>
			<h1>Register Cutie Pies</h1>
			<input id='nameRegister' type='text' placeholder='Your name'
				name='fullName'>
			<!--  -->
			<input id='usernameRegister' type='text' placeholder='Username'
				name='username'>
			<!--   -->
			<input id='passwordRegister' type='password' placeholder='Password'
				name='password'>
			<!--  -->
			<input id='rePasswordRegister' type='password'
				placeholder='Repeat Password'>
			<button>Register</button>
			<span>or use your account</span>
			<div class='social-container'>
				<a href='#' class='social'><i class='lni lni-facebook-fill'></i></a>
				<a href='#' class='social'><i class='lni lni-google'></i></a> <a
					href='#' class='social'><i class='lni lni-linkedin-original'></i></a>
			</div>
		</form>
	</div>

	<div class='form-container login-container'>
		<form id='loginForm' action='/bakery/j_spring_security_check'
			method='POST'>
			<h1>Login Cutie Pies</h1>
			<input id='usernameLogin' name='username' type='text'
				placeholder='Username'>
			<!--  -->
			<input id='passwordLogin' name='password' type='password'
				placeholder='Password'>
			<!--  -->
			<div class='content'>
				<div class='checkbox'>
					<input type='checkbox' name='checkbox' id='rememberme'> <label
						for='rememberme'>Remember me</label>
				</div>
				<div class='pass-link'>
					<a href='#'>Forgot password?</a>
				</div>
			</div>
			<button type="submit">Login</button>
			<span>or use your account</span>
			<div class='social-container'>
				<a href='#' class='social'><i class='lni lni-facebook-fill'></i></a>
				<a href='#' class='social'><i class='lni lni-google'></i></a> <a
					href='#' class='social'><i class='lni lni-linkedin-original'></i></a>
			</div>
		</form>
	</div>

	<div class='overlay-container'>
		<div class='overlay set-bg'
			data-setbg='<core:url value='/template/auth/img/auth.jpg' />'>
			<div class='overlay-panel overlay-left'>
				<h1 class='title'>
					Hello <br> friends
				</h1>
				<p>if Yout have an account, login here and have fun</p>
				<button class='ghost' id='login'>
					Login <i class='lni lni-arrow-left login'></i>
				</button>
			</div>
			<div class='overlay-panel overlay-right'>
				<h1 class='title'>
					Start yout <br> journy now
				</h1>
				<p>if you don't have an account yet, join us and start your
					journey.</p>
				<button class='ghost' id='register'>
					Register <i class='lni lni-arrow-right register'></i>
				</button>
			</div>
		</div>
	</div>

</div>
