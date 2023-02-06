<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href='<core:url value="/template/sneat/assets/img/favicon/favicon.ico" />' />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet"
	href='<core:url value="/template/sneat/assets/vendor/fonts/boxicons.css" />' />

<!-- Core CSS -->
<link rel="stylesheet"
	href='<core:url value="/template/sneat/assets/vendor/css/core.css" />'
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href='<core:url value="/template/sneat/assets/vendor/css/theme-default.css" />'
	class="template-customizer-theme-css" />
<link rel="stylesheet"
	href='<core:url value="/template/sneat/assets/css/demo.css"  />' />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href='<core:url value="/template/sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />' />

<!-- Page CSS -->
<!-- Page -->
<link rel="stylesheet"
	href='<core:url value="/template/sneat/assets/vendor/css/pages/page-auth.css" />' />
<!-- Helpers -->
<script
	src='<core:url value="/template/sneat/assets/vendor/js/helpers.js"/>'></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src='<core:url value="/template/sneat/assets/js/config.js"/>'></script>
</head>
<body>
	<%@ include file="/common/admin/header.jsp"%>
	<dec:body />

	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script
		src='<core:url value="/template/sneat/assets/vendor/libs/jquery/jquery.js"/>'></script>
	<script
		src='<core:url value="/template/sneat/assets/vendor/libs/popper/popper.js"/>'></script>
	<script
		src='<core:url value="/template/sneat/assets/vendor/js/bootstrap.js"/>'></script>
	<script
		src='<core:url value="/template/sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"/>'></script>

	<script
		src='<core:url value="/template/sneat/assets/vendor/js/menu.js"/>'></script>
	<!-- endbuild -->

	<!-- Vendors JS -->

	<!-- Main JS -->
	<script src='<core:url value="/template/sneat/assets/js/main.js"/>'></script>

	<!-- Page JS -->

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>