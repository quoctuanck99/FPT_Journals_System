<!DOCTYPE html>
<!--[if IE 9]>
<html class="ie ie9" lang="en-US">
<![endif]-->
<html lang="en-US">
<%@page language="java"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<tiles:importAttribute name="javascripts"/>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<title>FPT Open Access Journals</title>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,700'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/bootstrap.css'/>" />

<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/animate.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/admin/dashboard.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/jquery-ui.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/simple-line-icons.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/font-awesome.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/icon-font.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/educa.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/rs-plugin/css/settings.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/layout.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/datatables.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/modaal.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/elements.css'/>" /> 
</head>

<body>
	<div class="sidebar-menu-container" id="sidebar-menu-container">

		<div class="sidebar-menu-push">

			<div class="sidebar-menu-overlay"></div>

			<div class="sidebar-menu-inner">

				<tiles:insertAttribute name="userheader" />

 				<section class="single-course" style="padding-bottom: 50px;">
					<div class="container">
						<div class="row" style="padding-bottom: 50px;">
							<div class="col-md-12">
								<div class="item course-item">
									<div class="up-content">
										<a href="single-course.html">
											<h4>
												<tiles:insertAttribute name="title" />
											</h4>
										</a>
									</div>
								</div>
								<tiles:insertAttribute name="body" />
							</div>

						</div>
					</div>
				</section>

				<tiles:insertAttribute name="footer" />


				<a href="#" class="go-top"><i class="fa fa-angle-up"></i></a>

			</div>
		</div>
	</div>
	
	
	<c:forEach var="script" items="${javascripts}">
		<script src="<c:url value="${script}"/>"></script>
	</c:forEach>

</body>

</html>