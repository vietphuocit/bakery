<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ include file='/common/taglib.jsp'%>

<form:form action='cart/${ cart[0].order.id }' method='post'
	modelAttribute='list'>
	<core:forEach items='${ list.detailRequests }' var='orderDetail'
		varStatus='loop'>
		<form:input path='list[${ loop.index }].detailRequests.id'
			value='${ orderDetail.id }' />
		<form:input path='list[${ loop.index }].detailRequests.size'
			value='${ orderDetail.size }' />
		<form:input path='list[${ loop.index }].detailRequests.quantity'
			value='${ orderDetail.quantity }' />
		<br />
		<br />
	</core:forEach>
	<input type='submit' value='submit' />
</form:form>

<!-- Shopping Cart Section Begin -->
<section class='shopping-cart spad'>
	<div class='container'>
		<div class='row'>
			<div class='col-lg-8'>
				<form:form action='cart/${ cart[0].order.id }' method='post'
					modelAttribute='list' class='shopping__cart__table'>
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
							<core:forEach items='${ cart }' var='orderDetail'
								varStatus='loop'>
								<core:set var='product' value='${ orderDetail.product }' />
								<tr>
									<td class='product__cart__item'>
										<div class='product__cart__item__pic'>
											<img src='<core:url value='/uploads/${ product.image }' />'
												alt=''>
										</div>
										<div class='product__cart__item__text'>
											<h6>${ product.name }</h6>
											<h5>
												Giá:
												<fmt:formatNumber value='${ product.price }' type='currency' />
											</h5>
											<h5>Size: ${ product.primaryKeyProduct.size } cm</h5>
										</div>
									</td>
									<td class='quantity__item'>
										<div class='quantity'>
											<div class='pro-qty'>
												<form:input path='detailRequests[${ loop.index }].quantity'
													value='${ orderDetail.quantity }' />
											</div>
										</div>
									</td>
									<td class='cart__price'><fmt:formatNumber
											value='${ product.price * orderDetail.quantity }'
											type='currency' /></td>
									<td class='cart__close'><span class='icon_close'></span></td>
								</tr>
							</core:forEach>
						</tbody>
					</table>
					<div class='row pt-3'>
						<div class='col-lg-6 col-md-6 col-sm-6'>
							<div class='continue__btn'>
								<a href='<core:url value='/product'/>'>Continue Shopping</a>
							</div>
						</div>
						<div class='col-lg-6 col-md-6 col-sm-6'>
							<div class='continue__btn update__btn'>
								<button type='submit'>Update cart</button>
							</div>
						</div>
					</div>
				</form:form>
			</div>
			<div class='col-lg-4'>
				<!-- <div class='cart__discount'>
					<h6>Discount codes</h6>
					<form action='#'>
						<input type='text' placeholder='Coupon code'>
						<button type='submit'>Apply</button>
					</form>
				</div> -->
				<div class='cart__total mt-5'>
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

<script type='text/javascript'>
	
</script>