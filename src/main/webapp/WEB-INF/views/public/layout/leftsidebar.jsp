<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<script src="<%=request.getContextPath()%>/assets/publicAssets/home.js"></script>
	
<ul ng-app="sansimso" ng-controller="homeController">

	<li class="menu-item"><a href="#">TRANG CHỦ</a>
	<li class="menu-item-has-children"><a href="#">GIỚI THIỆU</a></li>
	<!-- <li class="menu-item-has-children"><a href="#">Events</a>
								<ul class="sub-menu">
									<li><a href="classic-events.html">Classic Events</a></li>
									<li><a href="calendar-events.html">Calendar Events</a></li>
									<li><a href="single-event.html">Single Event</a></li>
								</ul></li> -->
	<li ng-repeat="item in listCategory track by $index" class="menu-item-has-children"><a href="#">{{item.category.name}}</a>
		<ul class="sub-menu">
			<li ng-repeat="sub in item.lts"><a href="about.html">{{sub.name}}</a></li>
			<!-- <li><a href="our-teachers.html">Our Teachers</a></li>
			<li><a href="single-teacher.html">Single Teacher</a></li>
			<li><a href="gallery-4.html">Gallery 4 Columns</a></li>
			<li><a href="gallery-3.html">Gallery 3 Columns</a></li> -->
		</ul></li>
	<li class="menu-item-has-children"><a href="#">DÀNH CHO TÁC
			GIẢ</a>
		<ul class="sub-menu">
			<li><a href="classic-news.html">Classic News</a></li>
			<li><a href="grid-news.html">Grid News</a></li>
			<li><a href="single-post.html">Single Post</a></li>
		</ul></li>
	<li><a href="contact.html">LIÊN HỆ</a></li>
</ul>