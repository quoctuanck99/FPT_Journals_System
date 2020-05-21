<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/chief-editor-by-journals/chief-editor-by-journals.css'/>" />
</head>
<c:set var="currentPage"
	value="${requestScope['javax.servlet.forward.request_uri']}" />
<div class="categories">
	<div class="widget-heading">
		<h4>Quản lý bài viết đã được xuất bản</h4>
	</div>
	<div class="widget-body">
		<div class="article">
			<a
				href="<c:out value="${pageContext.servletContext.contextPath}"/>/tong-bien-tap-theo-chuyen-san/quan-ly-bai-viet-da-duoc-xuat-ban"
				class="title <c:if test="${currentPage=='/sap-lab-fpt/tong-bien-tap-theo-chuyen-san/quan-ly-bai-viet-da-duoc-xuat-ban'}">active</c:if> ">
				Quản lý bài viết được chỉ định</a>
		</div>
		<hr>
		<div class="article">
			<a
				href="<c:out value="${pageContext.servletContext.contextPath}"/>/tong-bien-tap-theo-chuyen-san/xem-bai-viet-da-duoc-xuat-ban"
				class="title <c:if test="${currentPage=='/sap-lab-fpt/tong-bien-tap-theo-chuyen-san/xem-bai-viet-da-duoc-xuat-ban'}">active</c:if> ">
				Xem bài viết đã được chỉ định</a>
		</div>
	</div>
</div>




