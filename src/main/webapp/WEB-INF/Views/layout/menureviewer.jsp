<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/reviewer/reviewer.css'/>" />
</head>
<c:set var="currentPage" value="${requestScope['javax.servlet.forward.request_uri']}"/>
<div class="categories">
	<div class="widget-heading">
		<h4>Quản lý bài viết</h4>
	</div>
	<div class="widget-body">
		<hr>
		<div class="article">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/phan-bien-vien/quan-ly-bai-viet-duoc-chi-dinh" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/phan-bien-vien/quan-ly-bai-viet-duoc-chi-dinh'}">active</c:if> ">
			Quản lý bài viết được chỉ định</a>
		</div>
		<hr>
		<div class="article">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/phan-bien-vien/danh-gia-bai-viet-duoc-chi-dinh" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/phan-bien-vien/danh-gia-bai-viet-duoc-chi-dinh'}">active</c:if> ">
			Đánh giá bài viết được chỉ định</a>
		</div>
	</div>
</div>




