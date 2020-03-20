<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="currentPage" value="${requestScope['javax.servlet.forward.request_uri']}"/>
<div class="row">
	<table class="breadcrumb">
		<tbody>
			<tr>
				<td class="<c:if test="${currentPage=='/sap-lab-fpt/tac-gia/gui-bai-buoc-1'}">active</c:if>">
					<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tac-gia/gui-bai-buoc-1">
						Bước 1 <br>
						Bản thảo
					</a>
				</td>
				<td class="<c:if test="${currentPage=='/sap-lab-fpt/tac-gia/gui-bai-buoc-2'}">active</c:if>">
					<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tac-gia/gui-bai-buoc-2">
						Bước 2 <br>
						Thông tin tác giả
					</a>
				</td>
				<td class="<c:if test="${currentPage=='/sap-lab-fpt/tac-gia/gui-bai-buoc-3'}">active</c:if>">
					<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tac-gia/gui-bai-buoc-3">
						Bước 3 <br>
						Đính kèm bản thảo
					</a>
				</td>
				<td class="<c:if test="${currentPage=='/sap-lab-fpt/tac-gia/gui-bai-buoc-4'}">active</c:if>">
					<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tac-gia/gui-bai-buoc-4">
						Bước 4 <br>
						Xác nhận và gửi đi
					</a>
				</td>
			</tr>
		</tbody>
	</table>
</div>