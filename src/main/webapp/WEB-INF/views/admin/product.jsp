<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ include file='/common/taglib.jsp'%>
<core:set var='categories' value='${ categories }' />
<core:set var='products' value='${ products }' />
<div class='container-xxl flex-grow-1 container-p-y'>
	<h4 class='fw-bold py-3 mb-4'>
		<span class='text-muted fw-light'>Quản Lý /</span> Sản Phẩm
	</h4>
	<!-- Basic Bootstrap Table -->
	<div class='card'>
		<div
			class='card-header d-flex justify-content-between my-table-header align-items-center'>
			<h3 class='my-table-title'>Danh mục</h3>
			<button type='button' class='btn btn-primary h-25 float-right'
				data-bs-toggle='modal' data-bs-target='#addProduct'>Thêm
				mới</button>
		</div>
		<div class='table-responsive text-nowrap'>
			<table class='table'>
				<thead>
					<tr>
						<th class='col-md-1 text-center'>ID</th>
						<th class='col-md-5 text-center'>Tên sản phẩm</th>
						<th class='col-md-2 text-center'>Ảnh</th>
						<th class='col-md-1 text-center'>Kích thước</th>
						<th class='col-md-1 text-center'>Giá</th>
						<th class='col-md-1 text-center'>Số lượng</th>
						<th class='col-md-1 text-center'>Actions</th>
					</tr>
				</thead>
				<tbody class='table-border-bottom-0'>
					<core:forEach var='product' items='${ products }'>
						<tr>
							<td class='text-center'>${ product.primaryKeyProduct.id }</td>
							<td class='text-center'>${ product.name }</td>
							<td class='text-center'><img class="img-thumbnail"
								src='<core:url value="/uploads/${ product.image }" />' /></td>
							<td class='text-center'>${ product.primaryKeyProduct.size }</td>
							<td class='text-center'>${ product.price }</td>
							<td class='text-center'>${ product.quantity }</td>
							<td class='text-center'>
								<div class='dropdown'>
									<button type='button'
										class='btn p-0 dropdown-toggle hide-arrow'
										data-bs-toggle='dropdown'>
										<i class='bx bx-dots-vertical-rounded'></i>
									</button>
									<div class='dropdown-menu'>
										<a class='dropdown-item' href='javascript:void(0);'><i
											class='bx bx-edit-alt me-1'></i> Edit</a> <a
											class='dropdown-item' href='javascript:void(0);'><i
											class='bx bx-trash me-1'></i> Delete</a>
									</div>
								</div>
							</td>
						</tr>
					</core:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<!--/ Basic Bootstrap Table -->
</div>

<!-- Modal Add -->
<div class='modal fade' id='addProduct' tabindex='-1' aria-hidden='true'>
	<div class='modal-dialog' role='document'>
		<div class='modal-content'>
			<div class='modal-header'>
				<h5 class='modal-title' id='btnAddCategory'>Thêm mới sản phẩm</h5>
				<button type='button' class='btn-close' data-bs-dismiss='modal'
					aria-label='Close'></button>
			</div>
			<form id='formProduct' class='modal-body'
				action='<core:url value='/admin/product' />' method='POST'
				enctype='multipart/form-data'>
				<div class='row'>
					<div class='col mb-3'>
						<label for='name' class='form-label'>Tên sản phẩm</label> <input
							type='text' id='name' name='name' class='form-control'
							placeholder='Nhập tên sản phẩm' />
					</div>
				</div>
				<div class='row'>
					<div class='col mb-3'>
						<label for='image' class='form-label'>Ảnh</label> <input
							type='file' id='image' name='image' class='form-control'
							accept="image/png, image/jpeg" />
					</div>
				</div>
				<div class='row'>
					<div class='col mb-3'>
						<label for='selectCategory' class='form-label'>Danh mục</label> <select
							class='form-select form-select-lg my-input' id='categoryId'
							name='categoryId'>
							<option selected>--- Chọn danh mục ---</option>
							<core:forEach var='category' items='${ categories }'>
								<option value='${ category.id }'>${ category.name }</option>
							</core:forEach>
						</select>
					</div>
				</div>
				<div class='row'>
					<div class='col mb-3'>
						<label for='size' class='form-label'>Kích thước (cm)</label> <input
							type='number' id='size' name='size' class='form-control'
							placeholder='Nhập kích thước' />
					</div>
					<div class='col mb-3'>
						<label for='price' class='form-label'>Giá</label> <input
							type='text' id='price' name='price' class='form-control'
							placeholder='Nhập giá' />
					</div>
				</div>
				<div class='row'>
					<div class='col mb-3'>
						<label for='quantity' class='form-label'>Số lượng</label> <input
							type='number' id='quantity' name='quantity' class='form-control'
							placeholder='Nhập số lượng' />
					</div>
					<div class='col mb-3'>
						<label for='discount' class='form-label'>Giảm giá</label> <input
							type='number' id='discount' name='discount' class='form-control'
							placeholder='Nhập số lượng' />
					</div>
				</div>
				<div class='row'>
					<div class='col mb-3'>
						<label for='description' class='form-label'>Mô tả</label>
						<textarea form='formProduct' id='description' name='description'
							class='form-control' placeholder='Mô tả về sản phẩm'></textarea>
					</div>
				</div>
				<div class='d-flex justify-content-end'>
					<button type='button' class='btn btn-outline-secondary mx-2'
						data-bs-dismiss='modal'>Thoát</button>
					<button type='submit' class='btn btn-primary'>Lưu</button>
				</div>
			</form>
		</div>
	</div>
</div>