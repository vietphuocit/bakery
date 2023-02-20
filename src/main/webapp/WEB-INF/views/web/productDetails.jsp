<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ include file='/common/taglib.jsp'%>

<core:set var='price' value='${ product.productDetails.get(0).price }' />

<!-- Breadcrumb Begin -->
<div class='breadcrumb-option'>
	<div class='container'>
		<div class='row'>
			<div class='pl-3'>
				<div class='breadcrumb__links'>
					<a href='<core:url value='/'/>'>Home</a> <a
						href='<core:url value='/product'/>'>Shop</a> <span>${ product.name }</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb End -->

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
				<div class='product__details__text'>
					<div class='product__label'>${ product.category.name }</div>
					<h4>${ product.name }</h4>
					<h5 id='price'>${ price }</h5>
					<ul id='ul-size'>
						<li><span>Size</span></li>
						<core:forEach var='productDetail'
							items='${ product.productDetails }'>
							<li><input class='btn-check' id='id-${ productDetail.size }'
								type='radio' name='size' value='${ productDetail.size }' /> <label
								class='btn btn-radio-size' for='id-${ productDetail.size }'>${ productDetail.size }
									cm</label></li>
						</core:forEach>
					</ul>
					<div class='product__details__option'>
						<div class='quantity'>
							<div class='pro-qty'>
								<input id='quantity' type='text' value='1'>
							</div>
						</div>
						<button onClick='addToCart()' class='primary-btn'>Add to
							cart</button>
						<button class='heart__btn'>
							<span class='icon_heart_alt'></span>
						</button>
					</div>
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
									summertime. Each gift arrives in an elegant gift box and
									arrives with a greeting card of your choice that you can
									personalize online!</p>
							</div>
						</div>
					</div>
					<div class='tab-pane' id='tabs-2' role='tabpanel'>
						<div class='row d-flex justify-content-center'>
							<div class='col-lg-8'>
								<p>This delectable Strawberry Pie is an extraordinary treat
									filled with sweet and tasty chunks of delicious strawberries.
									Made with the freshest ingredients, one bite will send you to
									summertime. Each gift arrives in an elegant gift box and
									arrives with a greeting card of your choice that you can
									personalize online!2</p>
							</div>
						</div>
					</div>
					<div class='tab-pane' id='tabs-3' role='tabpanel'>
						<div class='row d-flex justify-content-center'>
							<div class='col-lg-8'>
								<p>This delectable Strawberry Pie is an extraordinary treat
									filled with sweet and tasty chunks of delicious strawberries.
									Made with the freshest ingredients, one bite will send you to
									summertime. Each gift arrives in an elegant gift box and
									arrives with a greeting card of your choice that you can
									personalize online!3</p>
							</div>
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
							data-setbg='<core:url value='/template/assets/img/shop/product-1.jpg'/>'>
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
							data-setbg='<core:url value='/template/assets/img/shop/product-2.jpg'/>'>
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
							data-setbg='<core:url value='/template/assets/img/shop/product-3.jpg'/>'>
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
							data-setbg='<core:url value='/template/assets/img/shop/product-4.jpg'/>'>
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
							data-setbg='<core:url value='/template/assets/img/shop/product-5.jpg'/>'>
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
							data-setbg='<core:url value='/template/assets/img/shop/product-6.jpg'/>'>
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
				price.innerText = '${productDetail.price}';
				<core:set var='price' value='${ productDetail.price }' />
			}
			</core:forEach>
		});
	}

	function addToCart() {
		var quantity = document.getElementById("quantity").value;
		var size = document.querySelector('input[name="size"]:checked').value;
		
		var productDetail = {
			idProduct: '${ product.id }',
			name: '${ product.name }',
			image: '${ product.image }',
			price: '${ price }',
			size,
			quantity,
		}
		
		var cart = getCart();
		
		cart.push(productDetail);
	    localStorage.setItem('cart', JSON.stringify(cart));
	    console.log(cart);
	}
</script>