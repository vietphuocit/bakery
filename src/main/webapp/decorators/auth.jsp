<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8' %>
	<%@ include file='/common/taglib.jsp' %>


		<!DOCTYPE html>
		<html>

		<head>
			<meta charset='UTF-8'>

			<title>Auth</title>

			<link rel='icon' type='image/x-icon' href='<core:url value='/template/web/img/icon-tab.png'/>'/>
			<link href='https://cdn.lineicons.com/4.0/lineicons.css' rel='stylesheet'/>
			<link rel='stylesheet' href='<core:url value='/template/auth/css/style.css'/>'/>
			<link rel='stylesheet' href='<core:url value='/template/auth/css/toast.css'/>'/>
			<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css'
				integrity='sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=='
				crossorigin='anonymous'/>

		</head>

		<body>
			<core:if test='${type != null}'>
				<core:set var='title' value='${title}'/>
				<core:set var='message' value='${message}'/>
				<core:set var='type' value='${type}'/>
			</core:if>

			<dec:body />
			<div id='toast'></div>
			<script src='<core:url value = '/template/web/js/jquery-3.3.1.min.js'/>'></script>
			<script src='<core:url value='/template/auth/js/script.js'/>'></script>
			<script type='text/javascript'>
				var href = document.location.href;

				if (href.indexOf('register') != -1) {
					container.classList.add('right-panel-active');
					if ('${ type }' != '')
						toast({
							title: '${title}',
							message: '${message}',
							type: '${type}',
							duration: 2000
						});
				} else if (href.indexOf('login?failed') != -1) {
					toast({
						title: 'Login failed!',
						message: 'Incorrect account or password.',
						type: 'error',
						duration: 2000
					});
				}
			</script>
		</body>

		</html>