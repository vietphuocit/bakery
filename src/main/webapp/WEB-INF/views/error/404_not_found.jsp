<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8' %>
	<%@ include file='/common/taglib.jsp' %>
		<!DOCTYPE html>
		<html lang='en' class='light-style' dir='ltr' data-theme='theme-default' data-admin-path='<core:url value='
			/template/admin/'/>'
		data-template='vertical-menu-template/sneat-free'>

		<head>

			<meta charset='utf-8'/>
			<title>404 Not found</title>
			<meta name='viewport'
				content='width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0'/>
			<meta name='description' content=''/>

			<!-- Favicon -->
			<link rel='icon' type='image/x-icon' href='<core:url value='/template/admin/img/favicon/favicon.ico'/>'/>

			<!-- Fonts -->
			<link rel='preconnect' href='https://fonts.googleapis.com'/>
			<!-- <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin /> -->
			<link
				href='https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap'
				rel='stylesheet'/>

			<!-- Icons. Uncomment required icon fonts -->
			<link rel='stylesheet' href='<core:url value='/template/admin/vendor/fonts/boxicons.css'/>'/>

			<!-- Core CSS -->
			<link rel='stylesheet' href='<core:url value='/template/admin/vendor/css/core.css'/>'
			class='template-customizer-core-css'/>
			<link rel='stylesheet' href='<core:url value='/template/admin/vendor/css/theme-default.css'/>'
			class='template-customizer-theme-css'/>
			<link rel='stylesheet' href='<core:url value='/template/admin/css/demo.css'/>'/>

			<!-- Vendors CSS -->
			<link rel='stylesheet' href='<core:url value='
				/template/admin/vendor/libs/perfect-scrollbar/perfect-scrollbar.css'/>'/>

			<!-- Page CSS -->
			<!-- Page -->
			<link rel='stylesheet' href='<core:url value='/template/admin/vendor/css/pages/page-misc.css'/>'/>
			<!-- Helpers -->
			<script src='<core:url value='/template/admin/vendor/js/helpers.js'/>'></script>

			<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
			<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
			<script src='<core:url value='/template/admin/js/config.js'/>'></script>
		</head>

		<body>
			<div class='container-xxl container-p-y'>
				<div class='misc-wrapper'>
					<h2 class='mb-2 mx-2'>Page Not Found :(</h2>
					<p class='mb-4 mx-2'>Oops! 😖 The requested URL was not found on
						this server.</p>
					<button onClick='goBack()' class='btn btn-primary'>Go back</button>
					<div class='mt-3'>
						<img src='<core:url value='/template/admin/img/illustrations/page-misc-error-light.png'/>'
						alt='page-misc-error-light' width='500' class='img-fluid'
						data-app-dark-img='illustrations/page-misc-error-dark.png'
						data-app-light-img='illustrations/page-misc-error-light.png'/>
					</div>
				</div>
			</div>
			<script>
				function goBack() {
					history.back();
				}
			</script>

			<!-- Core JS -->
			<!-- build:js admin/vendor/js/core.js -->
			<script src='<core:url value='/template/admin/vendor/libs/jquery/jquery.js'/>'></script>
			<script src='<core:url value='/template/admin/vendor/libs/popper/popper.js'/>'></script>
			<script src='<core:url value='/template/admin/vendor/js/bootstrap.js'/>'></script>
			<script src='<core:url value='/template/admin/vendor/libs/perfect-scrollbar/perfect-scrollbar.js'/>'>
			</script>

			<script src='<core:url value='/template/admin/vendor/js/menu.js'/>'></script>
			<!-- endbuild -->

			<!-- Vendors JS -->

			<!-- Main JS -->
			<script src='<core:url value='/template/admin/js/main.js'/>'></script>

			<!-- Page JS -->

			<!-- Place this tag in your head or just before your close body tag. -->
			<!-- <script async defer src='https://buttons.github.io/buttons.js'></script> -->
		</body>

		</html>