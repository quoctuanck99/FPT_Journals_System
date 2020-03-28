<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/reviewer/reviewer.css'/>" />
</head>
<c:set var="currentPage" value="${requestScope['javax.servlet.forward.request_uri']}"/>
<div class="categories">
	<div class="widget-heading">
		<h4>Biên tập viên</h4>
	</div>
	<div class="widget-body">
		<hr>
		<div class="article">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/bien-tap-vien/quan-ly-bai-viet-btv" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/bien-tap-vien/quan-ly-bai-viet-btv'}">active</c:if> ">
			Quản lý bài viết</a>
		</div>
		
		<div class="article">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/bien-tap-vien/kiem-tra-truoc-bai-viet-btv" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/bien-tap-vien/kiem-tra-truoc-bai-viet-btv'}">active</c:if> ">
			Kiểm tra bài viết</a>
		</div>
		<div class="article">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/bien-tap-vien/quan-ly-bai-viet-xuat-ban" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/bien-tap-vien/quan-ly-bai-viet-xuat-ban'}">active</c:if> ">
			Quản lý bài viết xuất bản</a>
		</div>
		<div class="article">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/bien-tap-vien/xuat-ban-bai-viet" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/bien-tap-vien/xuat-ban-bai-viet'}">active</c:if> ">
			Xuất bản bài viết</a>
		</div>
	</div>
</div>




