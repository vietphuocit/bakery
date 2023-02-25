<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ include file='/common/taglib.jsp'%>

<core:if test='${type != null}'>
	<core:set var='title' value='${title}' />
	<core:set var='message' value='${message}' />
	<core:set var='type' value='${type}' />
</core:if>

<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Admin</title>

<link rel='icon' type='image/x-icon'
	href='<core:url value='/template/web/img/icon-tab.png' />' />

<link rel='stylesheet'
	href='<core:url value='/template/admin/vendor/fonts/boxicons.css'  />' />

<link rel='stylesheet'
	href='<core:url value='/template/admin/vendor/css/core.css' />'
	class='template-customizer-core-css' />
<link rel='stylesheet'
	href='<core:url value='/template/admin/vendor/css/theme-default.css' />'
	class='template-customizer-theme-css' />
<link rel='stylesheet'
	href='<core:url value='/template/admin/css/admin.css'  />' />

<link rel='stylesheet'
	href='<core:url value='/template/admin/vendor/libs/perfect-scrollbar/perfect-scrollbar.css'  />' />

<link rel='stylesheet'
	href='<core:url value='/template/admin/vendor/libs/apex-charts/apex-charts.css' />' />

<script src='<core:url value='/template/admin/vendor/js/helpers.js' />'></script>

<script src='<core:url value='/template/admin/js/config.js' />'></script>

<link rel='stylesheet'
	href='<core:url value='/template/auth/css/toast.css' />' />

<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css'
	integrity='sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=='
	crossorigin='anonymous' />

</head>
<body>
	<!-- Layout wrapper -->
	<div class='layout-wrapper layout-content-navbar'>
		<div class='layout-container'>
			<!-- Menu -->

			<aside id='layout-menu'
				class='my-layout-menu layout-menu menu-vertical menu bg-menu-theme'>
				<div class='app-brand demo'>
					<a href='<core:url value='/admin'/>' class='app-brand-link'> <span
						class='app-brand-logo demo'><img
							src='<core:url value='/template/admin/img/logo-header.png' />'
							alt=''></span> <span
						class='app-brand-text demo menu-text fw-bolder ms-2'> </span>
					</a>
				</div>

				<!-- <div class='menu-inner-shadow'></div> -->

				<ul class='menu-inner py-1'>
					<!-- Dashboard -->
					<li class='menu-item' id='dashboard'><a
						href='<core:url value='/admin'/>' class='menu-link'> <i
							class='menu-icon tf-icons bx bx-home-circle'></i> Dashboard
					</a></li>

					<li class='menu-item' id='category'><a
						href='<core:url value='/admin/category' />' class='menu-link'>
							Quản lý danh mục </a></li>

					<li class='menu-item' id='product'><a
						href='<core:url value='/admin/product' />' class='menu-link'>
							Quản lý sản phẩm </a></li>
				</ul>
			</aside>
			<!-- / Menu -->

			<!-- Layout container -->
			<div class='layout-page my-layout-page'>

				<!-- Navbar -->
				<nav
					class='layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme'
					id='layout-navbar'>
					<div
						class='layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none'>
						<a class='nav-item nav-link px-0 me-xl-4'
							href='javascript:void(0)'> <i class='bx bx-menu bx-sm'></i>
						</a>
					</div>

					<div class='navbar-nav-right d-flex align-items-center'
						id='navbar-collapse'>
						<!-- Search -->
						<div class='navbar-nav align-items-center'>
							<div class='nav-item d-flex align-items-center'>
								<i class='bx bx-search fs-4 lh-0'></i> <input type='text'
									class='form-control border-0 shadow-none'
									placeholder='Search...' aria-label='Search...' />
							</div>
						</div>
						<!-- /Search -->

						<ul class='navbar-nav flex-row align-items-center ms-auto'>

							<!-- User -->
							<li class='nav-item navbar-dropdown dropdown-user dropdown'>
								<div class='nav-link dropdown-toggle hide-arrow'
									data-bs-toggle='dropdown'>
									<div class='avatar avatar-online'>
										<img
											src='<core:url value='/template/admin/img/avatars/1.png'/>'
											class='w-px-40 h-auto rounded-circle' />
									</div>
								</div>
								<ul class='dropdown-menu dropdown-menu-end'>
									<li><div class='dropdown-item'>
											<div class='d-flex'>
												<div class='flex-shrink-0 me-3'>
													<div class='avatar avatar-online'>
														<img
															src='<core:url value='/template/admin/img/avatars/1.png'/>'
															class='w-px-40 h-auto rounded-circle' />
													</div>
												</div>
												<div class='flex-grow-1'>
													<span class='fw-semibold d-block'>John Doe</span> <small
														class='text-muted'>Admin</small>
												</div>
											</div>
										</div></li>
									<li>
										<div class='dropdown-divider'></div>
									</li>
									<li><a class='dropdown-item' href='#'> <i
											class='bx bx-user me-2'></i> <span class='align-middle'>My
												Profile</span>
									</a></li>
									<li><a class='dropdown-item' href='#'> <i
											class='bx bx-cog me-2'></i> <span class='align-middle'>Settings</span>
									</a></li>
									<li><a class='dropdown-item' href='#'> <span
											class='d-flex align-items-center align-middle'> <i
												class='flex-shrink-0 bx bx-credit-card me-2'></i> <span
												class='flex-grow-1 align-middle'>Billing</span> <span
												class='flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20'>4</span>
										</span>
									</a></li>
									<li>
										<div class='dropdown-divider'></div>
									</li>
									<li><a class='dropdown-item' href='auth-login-basic.html'>
											<i class='bx bx-power-off me-2'></i> <span
											class='align-middle'>Log Out</span>
									</a></li>
								</ul>
							</li>
							<!--/ User -->
						</ul>
					</div>
				</nav>

				<!-- / Navbar -->

				<!-- Content wrapper -->
				<div class='content-wrapper'>
					<!-- Content -->
					<dec:body />
					<!-- / Content -->

					<!-- Footer -->
					<footer class='content-footer footer bg-footer-theme'>
						<div
							class='container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column'>
							<div class='mb-2 mb-md-0'>
								©
								<script>
									document.write(new Date().getFullYear());
								</script>
								, made with ❤️ by <a href='https://themeselection.com'
									target='_blank' class='footer-link fw-bolder'>ThemeSelection</a>
							</div>
							<div>
								<a href='https://themeselection.com/license/'
									class='footer-link me-4' target='_blank'>License</a> <a
									href='https://themeselection.com/' target='_blank'
									class='footer-link me-4'>More Themes</a> <a
									href='https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/'
									target='_blank' class='footer-link me-4'>Documentation</a> <a
									href='https://github.com/themeselection/sneat-html-admin-template-free/issues'
									target='_blank' class='footer-link me-4'>Support</a>
							</div>
							<button onClick='test()'>a</button>
						</div>
					</footer>
					<!-- / Footer -->

					<div class='content-backdrop fade'></div>
				</div>
				<!-- Content wrapper -->
			</div>
			<!-- / Layout page -->
		</div>

		<!-- Overlay -->
		<div class='layout-overlay layout-menu-toggle'></div>
	</div>
	<!-- / Layout wrapper -->

	<!-- Toast -->
	<div id='toast'></div>
	<!-- /Toast -->

	<script
		src='<core:url value='/template/admin/vendor/libs/jquery/jquery.js' />'></script>
	<script
		src='<core:url value='/template/admin/vendor/libs/popper/popper.js' />'></script>
	<script
		src='<core:url value='/template/admin/vendor/js/bootstrap.js' />'></script>
	<script
		src='<core:url value='/template/admin/vendor/libs/perfect-scrollbar/perfect-scrollbar.js' />'></script>

	<script src='<core:url value='/template/admin/vendor/js/menu.js' />'></script>
	<script
		src='<core:url value='/template/admin/vendor/libs/apex-charts/apexcharts.js' />'></script>

	<script src='<core:url value='/template/admin/js/main.js' />'></script>

	<script
		src='<core:url value='/template/admin/js/dashboards-analytics.js' />'></script>

	<script src='<core:url value='/template/auth/js/script.js' />'></script>

	<script type='text/javascript'>
		/* Active navigation */
		var activeE = document.querySelectorAll('li.active');
		activeE.length != 0 ? activeE[0].classList.remove('active') : '';
		var path = location.pathname;
		if (path.indexOf('category') != -1) {
			document.getElementById('category').classList.add('active');
		} else if (path.indexOf('product') != -1) {
			document.getElementById('product').classList.add('active');
		} else {
			document.getElementById('dashboard').classList.add('active');
		}

		if ('${ type }' != '') {
			toast({
				title : '${ title }',
				message : '${ message }',
				type : '${ type }',
				duration : 5000
			});
		}
	</script>
</body>
</html>