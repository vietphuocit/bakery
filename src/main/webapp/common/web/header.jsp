<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ include file='/common/taglib.jsp'%>

<!-- Header Section Begin -->
<header class='header'>
	<div class='header__top'>
		<div class='container'>
			<div class='row'>
				<div class='col-lg-12'>
					<div class='header__top__inner'>
						<div class='header__top__left'>
							<ul>
								<li>VN <span class='arrow_carrot-down'></span>
									<ul>
										<li>VN</li>
										<li>ENG</li>
									</ul>
								</li>
								<security:authorize access='!isAuthenticated()'>
									<li><a href='<core:url value='/login'/>'>Sign in</a></li>
									<li><a href='<core:url value='/register'/>'>Register</a></li>
								</security:authorize>
								<security:authorize access='isAuthenticated()'>
									<li><a href='<core:url value='/logout'/>'>Logout</a></li>
								</security:authorize>
							</ul>
						</div>
						<div class='header__logo'>
							<a href='<core:url value='/' />'><img
								src='<core:url value='/template/web/img/logo-header.png' />'
								alt=''></a>
						</div>
						<div class='header__top__right'>
							<div class='header__top__right__links'>
								<a href='#' class='search-switch'><img
									src='<core:url value='/template/web/img/icon/search.png'/>'
									alt=''></a> <a href='<core:url value='/wishlist'/>'><img
									src='<core:url value='/template/web/img/icon/heart.png'/>'
									alt=''></a>
							</div>
							<div class='header__top__right__cart'>
								<a href='<core:url value='/cart' />'><img
									src='<core:url value='/template/web/img/icon/cart.png'/>'
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
						<li id='home'><a href='<core:url value='/' />'>Home</a></li>
						<li id='shop'><a href='<core:url value='/product' />'>Shop</a></li>
						<li id='about'><a href='<core:url value='/about' />'>About</a></li>
						<li id='blog'><a href='<core:url value='/blog' />'>Blog</a></li>
						<li id='contact'><a href='<core:url value='/contact' />'>Contact</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</header>

<!-- Header Section End -->

<!-- Search Begin -->
<div class='search-model'>
	<div class='h-100 d-flex align-items-center justify-content-center'>
		<div class='search-close-switch'>+</div>
		<form action='<core:url value='/product/search'/>' method='post'
			class='search-model-form'>
			<input type='text' name='keyword' id='search-input'
				placeholder='Search here.....'>
		</form>
	</div>
</div>
<!-- Search End -->
