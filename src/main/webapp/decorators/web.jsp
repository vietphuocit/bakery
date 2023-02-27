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
	href='<core:url value='/template/web/img/icon-tab.png'/>' />

<!-- Google Font -->
<link
	href='https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap'
	rel='stylesheet'>
<link
	href='https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap'
	rel='stylesheet'>

<!-- Css Styles -->
<link rel='stylesheet'
	href='<core:url value = '/template/web/css/barfiller.css'/>'
	type='text/css'>
<link href='<core:url value = '/template/web/css/bootstrap.min.css'/>'
	rel='stylesheet'>
<link rel='stylesheet'
	href='<core:url value = '/template/web/css/elegant-icons.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/web/css/flaticon.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/web/css/font-awesome.min.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/web/css/magnific-popup.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/web/css/nice-select.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/web/css/owl.carousel.min.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/web/css/slicknav.min.css'/>'
	type='text/css'>
<link rel='stylesheet'
	href='<core:url value = '/template/web/css/style.css'/>'
	type='text/css'>
</head>

<body>
	<fmt:setLocale value='vi_VN' />
	<!-- Page Preloder -->
	<div id='preloder'>
		<div class='loader'></div>
	</div>

	<core:import url='/common/web/header.jsp' />
	<dec:body />
	<core:import url='/common/web/footer.jsp' />

	<!-- Js Plugins -->
	<script
		src='<core:url value = '/template/web/js/jquery-3.3.1.min.js'/>'></script>
	<script
		src='<core:url value = '/template/web/js/jquery.nice-select.min.js'/>'></script>
	<script
		src='<core:url value = '/template/web/js/jquery.barfiller.js'/>'></script>
	<script
		src='<core:url value = '/template/web/js/jquery.magnific-popup.min.js'/>'></script>
	<script
		src='<core:url value = '/template/web/js/owl.carousel.min.js'/>'></script>
	<script
		src='<core:url value = '/template/web/js/jquery.nicescroll.min.js'/>'></script>
	<script src='<core:url value = '/template/web/js/jquery.slicknav.js'/>'></script>
	<script src='<core:url value = '/template/web/js/bootstrap.min.js'/>'></script>
	<script src='<core:url value = '/template/web/js/main.js'/>'></script>

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