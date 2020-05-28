<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	href="<c:url value='/assets/publicAssets/rs-plugin/css/settings.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/layout.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/datatables.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/modaal.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/elements.css'/>" />
<script src="<%=request.getContextPath()%>/assets/publicAssets/home.js"></script>


	<div id="main-header" class="main-header header-sticky" style="border-bottom: 1px solid lightgray;" ng-app="sansimso" ng-controller="homeController">
		<div class="inner-header container clearfix">
		
			<nav class="main-navigation text-left hidden-xs hidden-sm">
				<ul>
					<li><a href="<c:out value="${pageContext.servletContext.contextPath}"/>/">Trang chủ</a></li>
					<li><a href="<c:out value="${pageContext.servletContext.contextPath}" />/trang-chu/gioi-thieu">GIỚI THIỆU</a>

					<li ng-repeat="item in listCategory track by $index"><a href="#" class="has-submenu">{{item.category.name}}</a>
						<ul class="sub-menu">
							<li ng-repeat="sub in item.lts"><a href="classic-events.html">{{sub.name}}</a></li>

						</ul></li>

					<li><a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tac-gia/trang-thai-bai-dang" class="has-submenu">DÀNH CHO
							TÁC GIẢ</a></li>
				<li><a href="#search"></a></li>
				</ul>
			</nav>
		</div>
	</div>

