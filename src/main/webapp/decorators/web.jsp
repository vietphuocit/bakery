<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ include file='/common/taglib.jsp'%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Cutie Pies</title>

<!-- Favicon -->
<link rel='icon' type='image/x-icon'
	href='https://cdn-icons-png.flaticon.com/512/9480/9480880.png' />

<!-- Google Font -->
<link
	href='https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap'
	rel='stylesheet'>
<link
	href='https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap'
	rel='stylesheet'>

<!-- Css Styles -->
<link
	href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css'
	rel='stylesheet'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/flaticon.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/barfiller.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/magnific-popup.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/font-awesome.min.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/elegant-icons.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/nice-select.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/owl.carousel.min.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/slicknav.min.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/assets/css/web.css'/>'
	type='text/css'>
</head>
<body>

	<!-- Page Preloder -->
	<div id='preloder'>
		<div class='loader'></div>
	</div>

	<core:import url='/common/web/header.jsp' />
	<dec:body />
	<core:import url='/common/web/footer.jsp' />

	<!-- Js Plugins -->
	<script
		src='<core:url value = '/template/assets/js/jquery-3.3.1.min.js'/>'></script>
	<script
		src='<core:url value = '/template/assets/js/bootstrap.min.js'/>'></script>
	<script
		src='<core:url value = '/template/assets/js/jquery.nice-select.min.js'/>'></script>
	<script
		src='<core:url value = '/template/assets/js/jquery.barfiller.js'/>'></script>
	<script
		src='<core:url value = '/template/assets/js/jquery.magnific-popup.min.js'/>'></script>
	<script
		src='<core:url value = '/template/assets/js/jquery.slicknav.js'/>'></script>
	<script
		src='<core:url value = '/template/assets/js/owl.carousel.min.js'/>'></script>
	<script
		src='<core:url value = '/template/assets/js/jquery.nicescroll.min.js'/>'></script>

	<script src='<core:url value = '/template/assets/js/main.js'/>'></script>

	<script type='text/javascript'>
		/* Active navigation */
		var activeE = document.querySelectorAll('li.active');

		(activeE.length != 0) ? activeE[0].classList.remove('active') : '';

		var path = location.pathname;

		if (path.indexOf('about') != -1) {
			document.getElementById('about').classList.add('active');
		} else if (path.indexOf('blog') != -1) {
			document.getElementById('blog').classList.add('active');
		} else if (path.indexOf('contact') != -1) {
			document.getElementById('contact').classList.add('active');
		} else if (path.indexOf('product') != -1) {
			document.getElementById('shop').classList.add('active');
		} else if (path.indexOf('cart') != -1) {
		} else {
			document.getElementById('home').classList.add('active');
		}
	</script>
</body>
</html>