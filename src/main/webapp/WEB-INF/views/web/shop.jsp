<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ include file='/common/taglib.jsp'%>

<core:set var="products" value="${ products }" />

<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
	<div class="container">
		<div class="row">
			<div class="pl-3">
				<div class="breadcrumb__links">
					<a href="./index.html">Home</a> <span>Shop</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb End -->

<!-- Shop Section Begin -->
<section class='shop spad'>
	<div class='container'>
		<div class='shop__option'>
			<div class='row'>
				<div class='col-lg-7 col-md-7'>
					<div class='shop__option__search'>
						<form action='#'>
							<select>
								<option value=''>Categories</option>
								<core:forEach items="${ categories }" var="category">
									<option value='${ category.id }'>${ category.name }</option>
								</core:forEach>
							</select> <input type='text' placeholder='Search'>
							<button type='submit'>
								<i class='fa fa-search'></i>
							</button>
						</form>
					</div>
				</div>
				<div class='col-lg-5 col-md-5'>
					<div class='shop__option__right'>
						<select>
							<option value=''>Default sorting</option>
							<option value=''>A to Z</option>
							<option value=''>1 - 8</option>
							<option value=''>Name</option>
						</select>
					</div>
				</div>
			</div>
		</div>
		<div class='row'>
			<core:forEach items="${ products }" var="product">
				<div class='col-lg-3 col-md-6 col-sm-6'>
					<div class='product__item'>
						<div class='product__item__pic set-bg'
							data-setbg='<core:url value="/uploads/${ product.image }"/>'>
							<div class='product__label'>
								<span>Cupcake</span>
							</div>
						</div>
						<div class='product__item__text'>
							<h6>
								<a href='#'>${ product.name }</a>
							</h6>
							<div class='product__item__price'>${ product.price }</div>
							<div class='cart_add'>
								<a href='#'>Add to cart</a>
							</div>
						</div>
					</div>
				</div>
			</core:forEach>
		</div>
		<div class='shop__last__option'>
			<div class='row'>
				<div class='col-lg-6 col-md-6 col-sm-6'>
					<div class='shop__pagination'>
						<a href='#'>1</a> <a href='#'>2</a> <a href='#'>3</a> <a href='#'><span
							class='arrow_carrot-right'></span></a>
					</div>
				</div>
				<div class='col-lg-6 col-md-6 col-sm-6'>
					<div class='shop__last__text'>
						<p>Showing 1-9 of 10 results</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Shop Section End -->