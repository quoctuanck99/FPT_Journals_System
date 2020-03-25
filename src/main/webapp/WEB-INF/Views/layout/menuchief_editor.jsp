<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/chief_editor/chief_editor.css'/>" />
</head>


<div class="categories">
	<div class="widget-heading">
		<h4>Quản lý trang web</h4>
	</div>
	<div class="widget-body">
		<div class="article-reviewer">
			<a  href="<c:out value="${pageContext.servletContext.contextPath}"/>/tong-bien-tap/quan-ly-noi-dung" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/tong-bien-tap/quan-ly-noi-dung'}">active</c:if> class="title-reviewer">Chỉnh sửa thông báo</a>
		</div>
		<hr>
		<div class="article-reviewer">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tong-bien-tap/chinh-sua-tin-tuc" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/tong-bien-tap/chinh-sua-tin-tuc'}">active</c:if> class="title-reviewer" >chỉnh sửa tin tức</a>
		</div>
		<div class="article-reviewer">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tong-bien-tap/chinh-sua-huong-dan" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/tong-bien-tap/chinh-sua-huong-dan'}">active</c:if> class="title-reviewer" >chỉnh sửa Giới thiệu</a>
		</div>
		<div class="article-reviewer">
			<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tong-bien-tap/chinh-sua-gioi-thieu" 
			class="title <c:if test="${currentPage=='/sap-lab-fpt/tong-bien-tap/chinh-sua-gioi-thieu'}">active</c:if> class="title-reviewer" >chỉnh sửa Hướng dẫn</a>
		</div>
	</div>
</div>




