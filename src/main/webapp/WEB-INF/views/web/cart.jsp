<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ include file='/common/taglib.jsp'%>

<core:set var='cart' value='${ getCart }' />

<core:out value="${ cart }"></core:out>

<!-- Shopping Cart Section Begin -->
<section class='shopping-cart spad'>
	<div class='container'>
		<div class='row'>
			<div class='col-lg-8'>
				<div class='shopping__cart__table'>
					<table>
						<thead>
							<tr>
								<th>Product</th>
								<th>Quantity</th>
								<th>Total</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<core:forEach items='${ cart }' var='product'>
								<tr>
									<td class='product__cart__item'>
										<div class='product__cart__item__pic'>
											<img src='<core:url value='/uploads/${ product.image }' />'
												alt=''>
										</div>
										<div class='product__cart__item__text'>
											<h6>${ product.name }</h6>
											<h5>${ product.price }</h5>
										</div>
									</td>
									<td class='quantity__item'>
										<div class='quantity'>
											<div class='pro-qty'>
												<input type='text' value='${ product.quantity }'>
											</div>
										</div>
									</td>
									<td class='cart__price'>${ product.price * product.quantity }</td>
									<td class='cart__close'><span class='icon_close'></span></td>
								</tr>
							</core:forEach>
						</tbody>
					</table>
				</div>
				<div class='row'>
					<div class='col-lg-6 col-md-6 col-sm-6'>
						<div class='continue__btn'>
							<button onClick='click()'>Continue Shopping</button>
						</div>
					</div>
					<div class='col-lg-6 col-md-6 col-sm-6'>
						<div class='continue__btn update__btn'>
							<a href='#'><i class='fa fa-spinner'></i> Update cart</a>
						</div>
					</div>
				</div>
			</div>
			<div class='col-lg-4'>
				<div class='cart__discount'>
					<h6>Discount codes</h6>
					<form action='#'>
						<input type='text' placeholder='Coupon code'>
						<button type='submit'>Apply</button>
					</form>
				</div>
				<div class='cart__total'>
					<h6>Cart total</h6>
					<ul>
						<li>Subtotal <span>$ 169.50</span></li>
						<li>Total <span>$ 169.50</span></li>
					</ul>
					<a href='#' class='primary-btn'>Proceed to checkout</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Shopping Cart Section End -->

<script type="text/javascript">
	
</script>