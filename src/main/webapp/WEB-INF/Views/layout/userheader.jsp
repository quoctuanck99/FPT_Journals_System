<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="site-header">
	<div id="main-header" class="main-header header-sticky">
		<div class="inner-header container clearfix">
			<div class="logo">
				<a href="index.html"><img src="<c:out value="${pageContext.servletContext.contextPath}" />/assets/images/logo.png" alt=""></a>
			</div>
			<div class="header-right-toggle pull-right hidden-md hidden-lg">
				<a href="javascript:void(0)" class="side-menu-button"><i
					class="fa fa-bars"></i></a>
			</div>
			<div class="header-info hidden-sm hidden-xs">
				<ul>
					<li><i class="fa fa-phone"></i>+49 233 322 333</li>
					<li><i class="fa fa-envelope-o"></i>your@website.com</li>
					<li class="language">
						<p>
							<a href="#" id="example-show" class="showLink"
								onclick="showHide('example');return false;"><i
								class="fa fa-globe"></i>Tiếng Việt<i class="fa fa-angle-down"></i></a>
						</p>
						<div id="example" class="more">
							<p>
								<a href="#" id="example-hide" class="hideLink"
									onclick="showHide('example');return false;"><i
									class="fa fa-globe"></i>Tiếng Việt<i class="fa fa-angle-up"></i></a>
							</p>
							<form method="get" id="blog-search" class="blog-search">
								<ul>
									<li><a href="#">Tiếng Việt</a></li>
									<li><a href="#">English</a></li>
								</ul>
							</form>
						</div>
					</li>
					<li><a href="#">ĐĂNG NHẬP</a></li>
				</ul>
			</div>
			<nav class="main-navigation text-left hidden-xs hidden-sm">
				<ul>
					<li><a href="<c:out value="${pageContext.servletContext.contextPath}"/>/home">Trang chủ</a></li>
					<li><a href="<c:out value="${pageContext.servletContext.contextPath}" />/home/gioithieu" class="has-submenu">GIỚI THIỆU</a>
						<ul class="sub-menu">
							<li><a href="courses-grid.html">Courses Grids</a></li>
							<li><a href="courses-list.html">Courses List</a></li>
							<li><a href="single-course.html">Single Course</a></li>
						</ul></li>
					<li><a href="#" class="has-submenu">TẠP CHÍ</a>
						<ul class="sub-menu">
							<li><a href="classic-events.html">Classic Events</a></li>
							<li><a href="calendar-events.html">Calendar Events</a></li>
							<li><a href="single-event.html">Single Event</a></li>
						</ul></li>
					<li><a href="<c:out value="${pageContext.servletContext.contextPath}"/>/home/tintuc" class="has-submenu">TIN TỨC</a>
						<ul class="sub-menu">
							<li><a href="about.html">About Us</a></li>
							<li><a href="our-teachers.html">Our Teachers</a></li>
							<li><a href="single-teacher.html">Single Teacher</a></li>
							<li><a href="gallery-4.html">Gallery 4 Columns</a></li>
							<li><a href="gallery-3.html">Gallery 3 Columns</a></li>
						</ul></li>
					<li><a href="contact.html" class="has-submenu">DÀNH CHO
							TÁC GIẢ</a></li>
					<li><a href="#search"><i class="fa fa-search"></i></a></li>
				</ul>
			</nav>
		</div>
	</div>
</header>
