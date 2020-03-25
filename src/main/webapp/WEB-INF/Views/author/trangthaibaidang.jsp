<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<head>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/author/guibai.css'/>" />
</head>

<div class="author-container">
	<div class="row">
		<div class="col-md-12 title-box">Trạng thái bài đăng</div>
	</div>
	<div class="row">
		<div class="edit-form">
			<div class="row margin-20" style="text-align: center;">
				<div class="col-sm-3">
					<a href="#">Chưa hoàn thành (1)</a>
				</div>
				<div class="col-sm-3">
					<a href="#">Đang xử lý (2)</a>
				</div>
				<div class="col-sm-3">
					<a href="#">Trang web cá nhân (1)</a>
				</div>
				<div class="col-sm-3">
					<a href="#">Bị từ chối (0)</a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<b>Danh sách bài đăng</b>
					<table id="table" class="display table-striped table-bordered"
						style="width: 100%; line-height: 30px;">
						<thead>
							<tr>
								<th>Mã bản thảo</th>
								<th>Tạp chí</th>
								<th>Mục</th>
								<th>Vấn đề trọng tâm</th>
								<th>Tiêu đề</th>
								<th>Tình trạng</th>
								<th>Ngày đăng</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a
									href="<c:out value="${pageContext.servletContext.contextPath}"/>/tac-gia/theo-doi-phan-bien">[applsci-1234]</a></td>
								<td>Ứng dụng khoa học</td>
								<td></td>
								<td>Máy tính và trí tuệ nhân tạo</td>
								<td>Secure and Dynamic Access Controll for Internet of
									Things (IoT) base Traffic System</td>
								<td>Đang chờ chuyên gia đánh giá</td>
								<td>11-03-2020</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<th>Mã bản thảo</th>
								<th>Tạp chí</th>
								<th>Mục</th>
								<th>Vấn đề trọng tâm</th>
								<th>Tiêu đề</th>
								<th>Tình trạng</th>
								<th>Ngày đăng</th>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<c:forEach var="script" items="${javascripts}">
	<script src="<c:url value="${script}"/>"></script>
</c:forEach>
