<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8' %>
	<%@ include file='/common/taglib.jsp' %>

		<core:set var='categories' value='${ categories }'/>

		<div class='container-xxl flex-grow-1 container-p-y'>
			<h4 class='fw-bold py-3 mb-4'>
				<span class='text-muted fw-light'>Quản Lý /</span> Danh Mục
			</h4>
			<!-- Basic Bootstrap Table -->
			<div class='card'>
				<div class='card-header d-flex justify-content-between my-table-header align-items-center'>
					<h3 class='my-table-title'>Danh mục</h3>
					<button type='button' class='btn btn-primary float-right' data-bs-toggle='modal'
						data-bs-target='#addCategory'>Thêm
						mới</button>
				</div>

				<div class='table-responsive text-nowrap'>
					<table class='table'>
						<thead>
							<tr>
								<th class='col-md-1 text-center'>ID</th>
								<th class='col-md-10 text-center'>Name</th>
								<th class='col-md-1 text-center'>Actions</th>
							</tr>
						</thead>
						<tbody class='table-border-bottom-0'>
							<core:forEach var='category' items='${ categories }'>
								<tr>
									<td class='text-center'>${ category.id }</td>
									<td class='text-center'>${ category.name }</td>
									<td class='text-center'>
										<div class='dropdown'>
											<button type='button' class='btn p-0 dropdown-toggle hide-arrow'
												data-bs-toggle='dropdown'>
												<i class='bx bx-dots-vertical-rounded'></i>
											</button>
											<div class='dropdown-menu'>
												<button class='dropdown-item' data-bs-toggle='modal'
													data-bs-target='#editCategory${ category.id }' type='button'>
													<i class='bx bx-edit-alt me-1'></i> Edit
												</button>
												<a class='dropdown-item' href='<core:url value='/admin/category/${
													category.id }'/>'><i class='bx bx-trash me-1'></i> Delete</a>
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
		<div class='modal fade' id='addCategory' tabindex='-1' aria-hidden='true'>
			<div class='modal-dialog' role='document'>
				<div class='modal-content'>
					<div class='modal-header'>
						<h5 class='modal-title' id='btnAddCategory'>Thêm mới danh mục</h5>
						<button type='button' class='btn-close' data-bs-dismiss='modal' aria-label='Close'></button>
					</div>
					<form class='modal-body' action='<core:url value='/admin/category'/>' method='POST'>
					<div class='row'>
						<div class='col mb-3'>
							<label for='nameBasic' class='form-label'>Tên danh mục</label> <input type='text' id='name'
								name='name' class='form-control' placeholder='Nhập tên'/>
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

		<!-- Generate Modal Edit -->
		<core:forEach var='category' items='${ categories }'>
			<div class='modal fade' id='editCategory${ category.id }' tabindex='-1' aria-hidden='true'>
				<div class='modal-dialog' role='document'>
					<div class='modal-content'>
						<div class='modal-header'>
							<h5 class='modal-title' id='exampleModalLabel1'>Sửa danh mục</h5>
							<button type='button' class='btn-close' data-bs-dismiss='modal' aria-label='Close'></button>
						</div>
						<form class='modal-body' action='<core:url value='/admin/category/${ category.id }'/>'
						method='POST'>
						<div class='row'>
							<div class='col mb-3'>
								<label for='nameBasic' class='form-label'>Tên danh mục</label> <input type='text'
									id='name' name='name' class='form-control' placeholder='Nhập tên'
									value='${ category.name }'/>
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
		</core:forEach>