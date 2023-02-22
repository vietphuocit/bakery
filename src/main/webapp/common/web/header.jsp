<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
								<a href='<core:url value='/cart' />'><img
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