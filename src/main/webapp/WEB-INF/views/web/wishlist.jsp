<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ include file='/common/taglib.jsp'%>

<core:import url='/common/web/breadcrumb.jsp'></core:import>

<!-- Wishlist Section Begin -->
<section class='wishlist spad'>
	<div class='container'>
		<div class='row'>
			<div class='col-lg-12'>
				<div class='wishlist__cart__table'>
					<table>
						<thead>
							<tr>
								<th>Product</th>
								<th>Unit Price</th>
								<th>Stock</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<core:forEach items="${ wishlist }" var="productDetails">
								<tr>
									<td class='product__cart__item'>
										<div class='product__cart__item__pic'>
											<img
												src='<core:url value='/uploads/${ productDetails.product.image }'/>'
												alt=''>
										</div>
										<div class='product__cart__item__text'>
											<h6>${ productDetails.product.name }</h6>
										</div>
									</td>
									<td class='cart__price'><fmt:formatNumber
											value='${ productDetails.product.price }' type='currency' /></td>
									<td class='cart__stock'>In stock</td>
									<td class='cart__btn'><a href='#' class='primary-btn'>Add
											to cart</a></td>
									<td class='cart__close'><span class='icon_close'></span></td>
								</tr>
							</core:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Wishlist Section End -->