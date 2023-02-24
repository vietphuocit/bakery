<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ include file='/common/taglib.jsp'%>

<core:import url='/common/web/breadcrumb.jsp'></core:import>
<section class='about spad'>
	<div class='container'>
		<div class='row'>
			<div class='col-lg-12'>
				<div class='about__video set-bg'
					data-setbg='<core:url value='/template/web/img/about-video.jpg'/>'>
					<a
						href='https://www.youtube.com/watch?v=8PJ3_p7VqHw&list=RD8PJ3_p7VqHw&start_radio=1'
						class='play-btn video-popup'><i class='fa fa-play'></i></a>
				</div>
			</div>
		</div>
	</div>
</section>
<core:import url='/common/web/about.jsp'></core:import>
<core:import url='/common/web/testimonial.jsp'></core:import>
<core:import url='/common/web/team.jsp'></core:import>