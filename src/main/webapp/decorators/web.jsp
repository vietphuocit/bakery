<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ include file='/common/taglib.jsp'%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Cutie Pies</title>

<!-- Favicon -->
<link rel='icon' type='image/x-icon'
	href='https://cdn-icons-png.flaticon.com/512/9480/9480880.png' />

<!-- Google Font -->
<link
	href='https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap'
	rel='stylesheet'>
<link
	href='https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap'
	rel='stylesheet'>

<!-- Css Styles -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/flaticon.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/barfiller.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/magnific-popup.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/font-awesome.min.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/elegant-icons.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/nice-select.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/owl.carousel.min.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/slicknav.min.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/web.css'/>'
	type='text/css'>
</head>
<body>

	<!-- Page Preloder -->
	<div id='preloder'>
		<div class='loader'></div>
	</div>

	<!-- Offcanvas Menu Begin -->
	<div class='offcanvas-menu-overlay'></div>
	<div class='offcanvas-menu-wrapper'>
		<div class='offcanvas__cart'>
			<div class='offcanvas__cart__links'>
				<a href='#' class='search-switch'><img
					src='<core:url value='/template/assets/img/icon/search.png'/>'
					alt=''></a> <a href='#'><img
					src='<core:url value='/template/assets/img/icon/heart.png'/>'
					alt=''></a>
			</div>
			<div class='offcanvas__cart__item'>
				<a href='#'><img
					src='<core:url value='/template/assets/img/icon/cart.png'/>' alt=''>
					<span>0</span></a>
				<div class='cart__price'>
					Cart: <span>$0.00</span>
				</div>
			</div>
		</div>
		<%-- <div class='offcanvas__logo'>
			<a href='./index.html'><img
				src='<core:url value='/template/assets/img/logo.png'/>' alt=''></a>
		</div> --%>
		<div id='mobile-menu-wrap'></div>
		<div class='offcanvas__option'>
			<ul>
				<li>USD <span class='arrow_carrot-down'></span>
					<ul>
						<li>EUR</li>
						<li>USD</li>
					</ul>
				</li>
				<li>ENG <span class='arrow_carrot-down'></span>
					<ul>
						<li>Spanish</li>
						<li>ENG</li>
					</ul>
				</li>
				<li><a href='#'>Sign in</a> <span class='arrow_carrot-down'></span></li>
			</ul>
		</div>
	</div>
	<!-- Offcanvas Menu End -->

	<!-- Header Section Begin -->
	<header class='header'>
		<div class='header__top'>
			<div class='container'>
				<div class='row'>
					<div class='col-lg-12'>
						<div class='header__top__inner'>
							<div class='header__top__left'>
								<ul>
									<li>USD <span class='arrow_carrot-down'></span>
										<ul>
											<li>EUR</li>
											<li>USD</li>
										</ul>
									</li>
									<li>ENG <span class='arrow_carrot-down'></span>
										<ul>
											<li>Spanish</li>
											<li>ENG</li>
										</ul>
									</li>
									<li><a href='#'>Sign in</a> <span
										class='arrow_carrot-down'></span></li>
								</ul>
							</div>
							<div class='header__logo'>
								<a href=''><img
									src='<core:url value='/template/assets/img/logo-header.png' />'
									alt=''></a>
							</div>
							<div class='header__top__right'>
								<div class='header__top__right__links'>
									<a href='#' class='search-switch'><img
										src='<core:url value='/template/assets/img/icon/search.png'/>'
										alt=''></a> <a href='#'><img
										src='<core:url value='/template/assets/img/icon/heart.png'/>'
										alt=''></a>
								</div>
								<div class='header__top__right__cart'>
									<a href='#'><img
										src='<core:url value='/template/assets/img/icon/cart.png'/>'
										alt=''> <span>0</span></a>
									<div class='cart__price'>
										Cart: <span>$0.00</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class='canvas__open'>
					<i class='fa fa-bars'></i>
				</div>
			</div>
		</div>
		<div class='container'>
			<div class='row'>
				<div class='col-lg-12'>
					<nav class='header__menu mobile-menu'>
						<ul>
							<li id="home"><a href='<core:url value="/" />'>Home</a></li>
							<li id="shop"><a href='<core:url value="/product" />'>Shop</a></li>
							<li id="about"><a href='<core:url value="/about" />'>About</a></li>
							<li id="blog"><a href='<core:url value="/blog" />'>Blog</a></li>
							<li id="contact"><a href='<core:url value="/contact" />'>Contact</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header Section End -->

	<dec:body />

	<!-- Footer Section Begin -->
	<footer class='footer set-bg'>
		<div class='container'>
			<div class='row'>
				<div class='col-lg-4 col-md-6 col-sm-6'>
					<div class='footer__widget'>
						<h6>WORKING HOURS</h6>
						<ul>
							<li>Monday - Friday: 08:00 am – 08:30 pm</li>
							<li>Saturday: 10:00 am – 16:30 pm</li>
							<li>Sunday: 10:00 am – 16:30 pm</li>
						</ul>
					</div>
				</div>
				<div class='col-lg-4 col-md-6 col-sm-6'>
					<div class='footer__about'>
						<div class='footer__logo'>
							<a href='#'><img
								src='<core:url value='/template/assets/img/logo-footer.png' />'
								alt=''></a>
						</div>
						<p>Lorem ipsum dolor amet, consectetur adipiscing elit, sed do
							eiusmod tempor incididunt ut labore dolore magna aliqua.</p>
						<div class='footer__social'>
							<a class='bg-facebook' href='#'><i class='fa fa-facebook'></i></a>
							<a class='bg-twitter' href='#'><i class='fa fa-twitter'></i></a>
							<a class='bg-instagram' href='#'><i class='fa fa-instagram'></i></a>
							<a class='bg-youtube' href='#'><i class='fa fa-youtube-play'></i></a>
						</div>
					</div>
				</div>
				<div class='col-lg-4 col-md-6 col-sm-6'>
					<div class='footer__newslatter'>
						<h6>Subscribe</h6>
						<p>Get latest updates and offers.</p>
						<form action='#'>
							<input type='text' placeholder='Email'>
							<button type='submit'>
								<i class='fa fa-send-o'></i>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class='copyright'>
			<div class='container'>
				<div class='row'>
					<div class='col-lg-7'>
						<p class='copyright__text text-white'>
							<!-- Link back to Colorlib can'
									t be removed. Template is licensed under CCBY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class='fa fa-heart' aria-hidden='true'></i> by <a
								href='https://colorlib.com' target='_blank'>Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
					<div class='col-lg-5'>
						<div class='copyright__widget'>
							<ul>
								<li><a href='#'>Privacy Policy</a></li>
								<li><a href='#'>Terms &amp; Conditions</a></li>
								<li><a href='#'>Site Map</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Search Begin -->
	<div class='search-model'>
		<div class='h-100 d-flex align-items-center justify-content-center'>
			<div class='search-close-switch'>+</div>
			<form class='search-model-form'>
				<input type='text' id='search-input' placeholder='Search here.....'>
			</form>
		</div>
	</div>
	<!-- Search End -->

	<!-- Js Plugins -->
	<script
		src='<core:url value = '/template/assets/js/jquery-3.3.1.min.js'/>'></script>
	<script
		src='<core:url value = '/template/assets/js/bootstrap.min.js'/>'></script>
	<script
		src='<core:url value = '/template/assets/js/jquery.nice-select.min.js'/>'></script>
	<script
		src='<core:url value = '/template/assets/js/jquery.barfiller.js'/>'></script>
	<script
		src='<core:url value = '/template/assets/js/jquery.magnific-popup.min.js'/>'></script>
	<script
		src='<core:url value = '/template/assets/js/jquery.slicknav.js'/>'></script>
	<script
		src='<core:url value = '/template/assets/js/owl.carousel.min.js'/>'></script>
	<script
		src='<core:url value = '/template/assets/js/jquery.nicescroll.min.js'/>'></script>

	<script src='<core:url value = '/template/assets/js/main.js'/>'></script>

	<script type="text/javascript">
		/* Active navigation */
		var activeE = document.querySelectorAll('li.active');

		(activeE.length != 0) ? activeE[0].classList.remove('active') : '';

		var path = location.pathname;

		if (path.indexOf('about') != -1) {
			document.getElementById('about').classList.add('active');
		} else if (path.indexOf('blog') != -1) {
			document.getElementById('blog').classList.add('active');
		} else if (path.indexOf('contact') != -1) {
			document.getElementById('contact').classList.add('active');
		} else if (path.indexOf('product') != -1) {
			document.getElementById('shop').classList.add('active');
		} else {
			document.getElementById('home').classList.add('active');
		}
	</script>
</body>
</html>