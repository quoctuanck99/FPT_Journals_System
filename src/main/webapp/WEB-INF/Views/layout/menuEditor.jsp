<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
		<h4>Quản lý bài đăng</h4>
	</div>
	<div class="widget-body" style="padding: 0px 15px">
		<div class="article">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tac-gia/gui-bai-buoc-1" 
			class="title <c:if test = "${fn:contains(currentPage, '/tac-gia/gui-bai-buoc')}">
					         active
					      </c:if>">
			Bài đăng đã phân công </a>
		</div>
		<hr>
		<div class="article">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tac-gia/trang-thai-bai-dang" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/tac-gia/trang-thai-bai-dang' || currentPage=='/sap-lab-fpt/tac-gia/theo-doi-phan-bien'}">active</c:if>">
			Danh sách bài đã đăng</a>
		</div>
	</div>
</div>




