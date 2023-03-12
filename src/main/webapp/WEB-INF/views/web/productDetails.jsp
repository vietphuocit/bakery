<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ include file='/common/taglib.jsp'%>

<core:set var='price' value='${ product.productDetails.get(0).price }' />
<core:set var='id' value='${ product.id }' />
<core:set var='favourite' value='icon_heart_alt' />

<core:if test="${ isFavourite }">
	<core:set var='favourite' value='icon_heart' />
</core:if>

<core:import url='/common/web/breadcrumb.jsp'></core:import>

<!-- Shop Details Section Begin -->
<section class='product-details spad'>
	<div class='container'>
		<div class='row'>
			<div class='col-lg-6'>
				<div class='product__details__img'>
					<div class='product__details__big__img'>
						<img class='big_img'
							src='<core:url value='/uploads/${ product.image }'/>' alt=''>
					</div>
				</div>
			</div>
			<div class='col-lg-6'>
				<form class='product__details__text'
					action='<core:url value='/cart'/>' method="post">
					<input class='d-none' name='id' value='${ product.id }' />
					<div class='product__label'>${ product.category.name }</div>
					<h4>${ product.name }</h4>
					<h5 id='price'>
						Price:
						<fmt:formatNumber value='${ price }' type='currency' />
					</h5>
					<ul id='ul-size'>
						<li><span>Size</span></li>
						<core:forEach var='productDetail'
							items='${ product.productDetails }'>
							<li><input class='btn-check d-none'
								id='id-${ productDetail.size }' type='radio' name='size'
								value='${ productDetail.size }' /> <label
								class='btn btn-radio-size' for='id-${ productDetail.size }'>${ productDetail.size }
									cm</label></li>
						</core:forEach>
					</ul>
					<div class='product__details__option'>
						<div class='quantity'>
							<span>Quantity</span>
							<div class='pro-qty'>
								<input id='quantity' name='quantity' type='text' value='1'>
							</div>
						</div>
						<div class='option'>
							<button type="submit" class='primary-btn'>Add to cart</button>
							<a href="<core:url value='/wishlist/${ id }'/>"
								class='heart__btn'> <span
								class='${ favourite }'></span>
							</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class='product__details__tab'>
		<div class='col-lg-12'>
			<ul class='nav nav-tabs' role='tablist'>
				<li class='nav-item'><a class='nav-link active'
					data-toggle='tab' href='#tabs-1' role='tab'>Description</a></li>
				<li class='nav-item'><a class='nav-link' data-toggle='tab'
					href='#tabs-2' role='tab'>Additional information</a></li>
				<li class='nav-item'><a class='nav-link' data-toggle='tab'
					href='#tabs-3' role='tab'>Previews(1)</a></li>
			</ul>
			<div class='tab-content'>
				<div class='tab-pane active' id='tabs-1' role='tabpanel'>
					<div class='row d-flex justify-content-center'>
						<div class='col-lg-8'>
							<p>This delectable Strawberry Pie is an extraordinary treat
								filled with sweet and tasty chunks of delicious strawberries.
								Made with the freshest ingredients, one bite will send you to
								summertime. Each gift arrives in an elegant gift box and arrives
								with a greeting card of your choice that you can personalize
								online!</p>
						</div>
					</div>
				</div>
				<div class='tab-pane' id='tabs-2' role='tabpanel'>
					<div class='row d-flex justify-content-center'>
						<div class='col-lg-8'>
							<p>This delectable Strawberry Pie is an extraordinary treat
								filled with sweet and tasty chunks of delicious strawberries.
								Made with the freshest ingredients, one bite will send you to
								summertime. Each gift arrives in an elegant gift box and arrives
								with a greeting card of your choice that you can personalize
								online!2</p>
						</div>
					</div>
				</div>
				<div class='tab-pane' id='tabs-3' role='tabpanel'>
					<div class='row d-flex justify-content-center'>
						<div class='col-lg-8'>
							<p>This delectable Strawberry Pie is an extraordinary treat
								filled with sweet and tasty chunks of delicious strawberries.
								Made with the freshest ingredients, one bite will send you to
								summertime. Each gift arrives in an elegant gift box and arrives
								with a greeting card of your choice that you can personalize
								online!3</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Shop Details Section End -->

<!-- Related Products Section Begin -->
<section class='related-products spad'>
	<div class='container'>
		<div class='row'>
			<div class='col-lg-12 text-center'>
				<div class='section-title'>
					<h2>Related Products</h2>
				</div>
			</div>
		</div>
		<div class='row'>
			<div class='related__products__slider owl-carousel'>
				<div class='col-lg-3'>
					<div class='product__item'>
						<div class='product__item__pic set-bg'
							data-setbg='<core:url value='/template/web/img/shop/product-1.jpg'/>'>
							<div class='product__label'>
								<span>Cupcake</span>
							</div>
						</div>
						<div class='product__item__text'>
							<h6>
								<a href='#'>Dozen Cupcakes</a>
							</h6>
							<div class='product__item__price'>$32.00</div>
							<div class='cart_add'>
								<a href='#'>Add to cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class='col-lg-3'>
					<div class='product__item'>
						<div class='product__item__pic set-bg'
							data-setbg='<core:url value='/template/web/img/shop/product-2.jpg'/>'>
							<div class='product__label'>
								<span>Cupcake</span>
							</div>
						</div>
						<div class='product__item__text'>
							<h6>
								<a href='#'>Cookies and Cream</a>
							</h6>
							<div class='product__item__price'>$30.00</div>
							<div class='cart_add'>
								<a href='#'>Add to cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class='col-lg-3'>
					<div class='product__item'>
						<div class='product__item__pic set-bg'
							data-setbg='<core:url value='/template/web/img/shop/product-3.jpg'/>'>
							<div class='product__label'>
								<span>Cupcake</span>
							</div>
						</div>
						<div class='product__item__text'>
							<h6>
								<a href='#'>Gluten Free Mini Dozen</a>
							</h6>
							<div class='product__item__price'>$31.00</div>
							<div class='cart_add'>
								<a href='#'>Add to cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class='col-lg-3'>
					<div class='product__item'>
						<div class='product__item__pic set-bg'
							data-setbg='<core:url value='/template/web/img/shop/product-4.jpg'/>'>
							<div class='product__label'>
								<span>Cupcake</span>
							</div>
						</div>
						<div class='product__item__text'>
							<h6>
								<a href='#'>Cookie Dough</a>
							</h6>
							<div class='product__item__price'>$25.00</div>
							<div class='cart_add'>
								<a href='#'>Add to cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class='col-lg-3'>
					<div class='product__item'>
						<div class='product__item__pic set-bg'
							data-setbg='<core:url value='/template/web/img/shop/product-5.jpg'/>'>
							<div class='product__label'>
								<span>Cupcake</span>
							</div>
						</div>
						<div class='product__item__text'>
							<h6>
								<a href='#'>Vanilla Salted Caramel</a>
							</h6>
							<div class='product__item__price'>$05.00</div>
							<div class='cart_add'>
								<a href='#'>Add to cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class='col-lg-3'>
					<div class='product__item'>
						<div class='product__item__pic set-bg'
							data-setbg='<core:url value='/template/web/img/shop/product-6.jpg'/>'>
							<div class='product__label'>
								<span>Cupcake</span>
							</div>
						</div>
						<div class='product__item__text'>
							<h6>
								<a href='#'>German Chocolate</a>
							</h6>
							<div class='product__item__price'>$14.00</div>
							<div class='cart_add'>
								<a href='#'>Add to cart</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<script type='text/javascript'>
	var rad = document.getElementsByName('size');
	for (var i = 0; i < rad.length; i++) {
		rad[i].addEventListener('change', function() {
			var price = document.getElementById('price');
			<core:forEach var='productDetail' items='${ product.productDetails }'>
			if ('${productDetail.size}' == this.value) {
				var priceStr = new Intl.NumberFormat('vi-VN', {
					style : 'currency',
					currency : 'VND'
				}).format('${productDetail.price}')
				price.innerHTML = 'Giá: ' + priceStr;
				<core:set var='price' value='${ productDetail.price }'/>
			}
			</core:forEach>
		});
	}

	if (rad.length != 0)
		rad[0].checked = true;
</script>