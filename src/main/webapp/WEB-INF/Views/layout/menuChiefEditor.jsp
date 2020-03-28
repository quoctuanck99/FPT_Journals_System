<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/author/menuauthor.css'/>" />
</head>

<c:set var="currentPage" value="${requestScope['javax.servlet.forward.request_uri']}"/>
<div class="categories">
	<div class="widget-heading">
		<h4>Quản lý cá nhân</h4>
	</div>
	<div class="widget-body" style="padding: 0px 15px">
		<div class="article">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/chinh-sua-profile" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/chinh-sua-profile'}">active</c:if> ">
			Chỉnh sửa thông tin</a>
		</div>
		<hr>
		<div class="article">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/doi-mat-khau" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/doi-mat-khau'}">active</c:if>">
			Thay đổi mật khẩu</a>
		</div>
	</div>
</div>
<div class="categories">
	<div class="widget-heading">
		<h4>Quản lý bài viết</h4>
	</div>
	<div class="widget-body" style="padding: 0px 15px">
		<div class="article">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tong-bien-tap/quan-ly-bai-viet" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/tong-bien-tap/quan-ly-bai-viet'}">active</c:if> ">
			Danh sách bài chờ phê duyệt</a>
		</div>
		<hr>
		<div class="article">
			<a class="title" alt="">Danh sách bài đã phê duyệt</a>
		</div>
	</div>
</div>




