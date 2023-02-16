<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ include file='/common/taglib.jsp'%>

<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>

<title>Auth</title>

<!-- Favicon -->
<link rel='icon' type='image/x-icon'
	href='<core:url value='/template/assets/img/favicon/favicon.ico' />' />
<!-- Fonts -->
<link rel='preconnect' href='https://fonts.googleapis.com' />
<!-- <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin /> -->
<link
	href='https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap'
	rel='stylesheet' />

<!-- Icons. Uncomment required icon fonts -->
<link rel='stylesheet'
	href='<core:url value='/template/assets/vendor/fonts/boxicons.css' />' />

<!-- Core CSS -->
<link rel='stylesheet'
	href='<core:url value='/template/assets/vendor/css/core.css' />'
	class='template-customizer-core-css' />
<link rel='stylesheet'
	href='<core:url value='/template/assets/vendor/css/theme-default.css' />'
	class='template-customizer-theme-css' />
<link rel='stylesheet'
	href='<core:url value='/template/assets/css/demo.css'  />' />

<!-- Vendors CSS -->
<link rel='stylesheet'
	href='<core:url value='/template/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css' />' />

<!-- Page CSS -->
<!-- Page -->
<link rel='stylesheet'
	href='<core:url value='/template/assets/vendor/css/pages/page-auth.css' />' />
<!-- Helpers -->
<script src='<core:url value='/template/assets/vendor/js/helpers.js'/>'></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->

<!-- Bootstrap 5 -->
<!-- <link
	href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css'
	rel='stylesheet'
	integrity='sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC'
	crossorigin='anonymous'> -->

<script src='<core:url value='/template/assets/js/config.js'/>'></script>
</head>
<body>
	<dec:body />
	<div id='toast-auth'
		class='bs-toast toast fade m-4 toast-placement-ex top-0 end-0'
		role='alert' aria-live='assertive' aria-atomic='true'
		data-delay='2000'>
		<div class='toast-header'>
			<i class='bx bx-bell me-2'></i>
			<div class='me-auto fw-semibold' id='toast-title'></div>
			<button type='button' class='btn-close' data-bs-dismiss='toast'
				aria-label='Close'></button>
		</div>
		<div class='toast-body' id='toast-notification'></div>
	</div>

	<script type='text/javascript'>
		var toast = document.getElementById('toast-auth');
		var title = document.getElementById('toast-title');
		var notification = document.getElementById('toast-notification');

		if (window.location.href.indexOf('login?failed') != -1) {
			title.innerText = 'Đăng nhập thất bại';
			notification.innerText = 'Sai tài khoản hoặc mật khẩu.';
			toast.classList.add('bg-danger');
			toast.classList.add('show');
		} else if (window.location.href.indexOf('register?failed') != -1) {
			title.innerText = 'Đăng ký thất bại';
			notification.innerText = 'Tài khoản đã tồn tại trong hệ thống.';
			toast.classList.add('bg-danger');
			toast.classList.add('show');
		} else if (window.location.href.indexOf('register?success') != -1) {
			title.innerText = 'Đăng ký thành công';
			notification.innerHTML = 'Bạn đã đăng ký thành công, chọn <a href='/bakery/login'>Sign in</a> để đăng nhập.';
			toast.classList.add('bg-success');
			toast.classList.add('show');
		}

		setTimeout(function() {
			toast.classList.remove('show');
		}, 3000);
	</script>
	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script
		src='<core:url value='/template/assets/vendor/libs/jquery/jquery.js'/>'></script>
	<script
		src='<core:url value='/template/assets/vendor/libs/popper/popper.js'/>'></script>
	<script
		src='<core:url value='/template/assets/vendor/js/bootstrap.js'/>'></script>
	<script
		src='<core:url value='/template/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js'/>'></script>

	<script src='<core:url value='/template/assets/vendor/js/menu.js'/>'></script>
	<!-- end build -->

	<!-- Vendors JS -->

	<!-- Main JS -->
	<script src='<core:url value='/template/assets/js/main.js'/>'></script>

	<!-- Page JS -->
	<script src='<core:url value='/template/assets/js/ui-toasts.js'/>'></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<!-- <script async defer src='https://buttons.github.io/buttons.js'></script> -->
	
	<!-- Bootstrap JS -->
	<!-- <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css' rel='stylesheet'> -->
	<script
		src='https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js'></script>
</body>
</html>