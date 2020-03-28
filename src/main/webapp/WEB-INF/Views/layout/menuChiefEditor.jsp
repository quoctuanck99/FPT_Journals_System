<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/author/menuauthor.css'/>" />
</head>

<div class="categories">
	<div class="widget-heading">
		<h4>Quản lý cá nhân</h4>
	</div>
	<div class="widget-body" style="padding: 0px 15px">
		<div class="article">
			<a
				href="<c:out value="${pageContext.servletContext.contextPath}"/>/trang-chu/chinh-sua-profile"
				class="title">Chỉnh sửa thông tin</a>
		</div>
		<hr>
		<div class="article">
			<a
				href="<c:out value="${pageContext.servletContext.contextPath}"/>/trang-chu/doi-mat-khau"
				class="title">Thay đổi mật khẩu</a>
		</div>
	</div>
</div>
<div class="categories">
	<div class="widget-heading">
		<h4>Quản lý bài viết</h4>
	</div>
	<div class="widget-body" style="padding: 0px 15px">
		<div class="article">
			<a class="title" alt="">Danh sách bài chờ phê duyệt</a>
		</div>
		<hr>
		<div class="article">
			<a class="title" alt="">Danh sách bài đã phê duyệt</a>
		</div>
	</div>
</div>
<div class="categories">
	<div class="widget-heading">
		<h4>Quản lý trang web</h4>
	</div>
	<div class="widget-body" style="padding: 0px 15px">
		<div class="article">
			<a  href="<c:out value="${pageContext.servletContext.contextPath}"/>/tong-bien-tap/chinh-sua-thong-bao" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/tong-bien-tap/chinh-sua-thong-bao'}">active</c:if> ">Chỉnh sửa thông báo</a>
		</div>
		<hr>
		<div class="article">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tong-bien-tap/chinh-sua-tin-tuc" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/tong-bien-tap/chinh-sua-tin-tuc'}">active</c:if> " >Chỉnh sửa tin tức</a>
		</div>
		<div class="article">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tong-bien-tap/chinh-sua-huong-dan" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/tong-bien-tap/chinh-sua-huong-dan'}">active</c:if> " >Chỉnh sửa giới thiệu</a>
		</div>
		<div class="article">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tong-bien-tap/chinh-sua-gioi-thieu" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/tong-bien-tap/chinh-sua-gioi-thieu'}">active</c:if> " >Chỉnh sửa hướng dẫn</a>
		</div>
	</div>
</div>




