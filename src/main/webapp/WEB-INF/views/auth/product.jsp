<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">




<title>Our cake</title>
</head>

<body class="subpage">
	<div id="main">

		<!-- <div class="top1">
<div class="container">
<div class="row">
<div class="span12">
<div class="top1_inner clearfix">
	<header><div class="logo_wrapper"><a href="index.html" class="logo"><img src="https://via.placeholder.com/267x69" alt=""></a></div></header>
	<div class="top2 clearfix">
		<div class="search-form-wrapper clearfix">
			<form id="search-form" action="search.php" method="GET" accept-charset="utf-8" class="navbar-form" >
				<input type="text" name="s" value='Search' onBlur="if(this.value=='') this.value='Search'" onFocus="if(this.value =='Search' ) this.value=''">
				<a href="#" onClick="document.getElementById('search-form').submit()"></a>
			</form>
		</div>
		<div class="social_wrapper">
			<ul class="social clearfix">
			    <li><a href="#"><img src="images/social_ic1.png"></a></li>
			    <li><a href="#"><img src="images/social_ic2.png"></a></li>		   
			</ul>
		</div>
	</div>
</div>	
</div>	
</div>	
</div>	
</div>

<div class="hl1"></div>
<div class="hl2">
<div class="hl2_inner">
<div class="container">
<div class="row">
<div class="span12">
<div class="hl1_inner2">
	<div class="navbar navbar_">
		<div class="navbar-inner navbar-inner_">
			<a class="btn btn-navbar btn-navbar_" data-toggle="collapse" data-target=".nav-collapse_">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			<div class="nav-collapse nav-collapse_ collapse">
				<ul class="nav sf-menu clearfix">
					<li><a href="index.html">home</a></li>	      
					<li class="sub-menu sub-menu-1"><a href="index-1.html">about</a>
						<ul>
							<li><a href="index-1.html">who we are</a></li>
							<li><a href="index-1.html">our staff</a></li>
							<li><a href="index-1.html">history</a></li>
							<li><a href="index-1.html">Products</a></li>						
						</ul>						
					</li>
					<li class="active"><a href="index-2.html">our cakes</a></li>
					<li><a href="index-3.html">services</a></li>
					<li><a href="index-4.html">MENU</a></li>
					<li><a href="index-5.html">contacts</a></li>											
				</ul>
			</div>
		</div>
	</div>	
	<div class="page_title"><div class="page_title_left"></div><div class="page_title_px">Our Cakes</div><div class="page_title_right"></div></div>
</div>	
</div>	
</div>	
</div>	
</div>
</div>

-->
		<div class="hl3"></div>

		<div id="content">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div class="box1">

							<h1 style="text-align: center">Our Cakes</h1>

							<div id="isotope-options">
								<ul id="isotope-filters" class="clearfix">
									<li><a href="#" class="selected" data-filter="*"> All</a></li>
									<c:forEach items="${listCategory}" var="category">
										<li><a href="/bakery/category/${category.id}"
											data-filter=".isotope-filter1">${category.name}</a></li>
									</c:forEach>

								</ul>
							</div>

							<ul class="thumbnails thumbnails-iisotope" id="isotope-items">
								<c:forEach var="product" items="${listProduct}">
									<li class="isotope-element isotope-filter1">
										<div class="thumb-isotope">
											<div class="thumbnail clearfix">
												<a href="/bakery/product/${product.primaryKeyProduct.id}">
													<figure>
														<img class="img-thumbnail"
															src='<c:url value="/uploads/${product.image}"/>'
															alt="">
														<em></em>
													</figure>
													<div class="caption">${product.name}</div>
												</a>
											</div>
										</div>
									</li>
								</c:forEach>
						
						</div>
					</div>
				</div>
			</div>
		</div>


		<footer>
			<div class="copyright">
				Copyright © 2020 <a href="https://gridgum.com/themes/category/free/">Free
					Bootstrap Templates</a>. All rights reserved.
			</div>
		</footer>
	</div>
	</div>
	</div>




	</div>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
<%-- <body>
	<table  >
 		<tr>
			<c:forEach items="${listCategory}" var="category">
				<th><a href="/bakery/category/${category.id}">${category.name}</a></th>
				
			</c:forEach>

		</tr>  

	<tr>
			<c:forEach var="product" items="${listProduct}">
				<td><a href="/bakery/product/${product.primaryKeyProduct.id}">${product.name}</a></td>
			</c:forEach>
		</tr> 

	</table>
</body> --%>
</html>