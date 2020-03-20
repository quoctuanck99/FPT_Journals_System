<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<head>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/author/guibai.css'/>" />
</head>

<div class="author-container">
	<div class="description">
		<tiles:insertAttribute name="authorstep" />
		<div class="row">
			<div class="col-md-12 title-box">Thêm tệp đính kèm</div>
		</div>
		<div class="row margin-20">
			<small class="suggestion">Vui lòng chọn tệp tin
				(doc,docx,pdf) và tên các tệp tin không dấu</small>
		</div>
		<div class="row">
			<div class="edit-form">
				<div class="row">
					<div class="col-md-10 col-md-push-1">
						<b>Tệp đính kèm <span class="require-field">(*)</span></b>
					</div>

					<div class="col-xs-6 col-xs-push-1">
						<input type="file" id="real-file" hidden="hidden" /> <span
						id="custom-text">Chưa có file nào được chọn</span>
					</div>
					<div class="col-xs-4 col-xs-push-1">
						<div class="fjs-btn green add-to-list">
							<button type="button" id="custom-button">Chọn file</button>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-10 col-md-push-1">
						<b>Mô tả <span class="require-field">(*)</span></b>
					</div>

					<div class="col-md-6 col-md-push-1">
						<select class="form-control" name="type">
							<option>Nội dung bài báo</option>
							<option>Nội dung tham khảo</option>
						</select>
					</div>
					<div class="col-md-4 col-md-push-1 col-xs-12">
						<div class="fjs-btn green add-to-list">
							<button type="submit">Thêm vào danh sách</button>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<b>Danh sách tệp đính kèm</b>
						<table id="table" class="display table-striped table-bordered"
							style="width: 100%; line-height: 30px;">
							<thead>
								<tr>
									<th>Stt</th>
									<th>Tên tệp tin</th>
									<th>Mô tả</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>noidung.docx</td>
									<td>Nội dung bài báo</td>
									<td><a href="#">Xóa</a></td>
								</tr>
								<tr>
									<td>2</td>
									<td>dinhkem.docx</td>
									<td>Nội dung tham khảo</td>
									<td><a href="#">Xóa</a></td>
								</tr>
								<tr>
									<td>3</td>
									<td>tailieu.pdf</td>
									<td>Nội dung tham khảo</td>
									<td><a href="#">Xóa</a></td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<th>Stt</th>
									<th>Tên tệp tin</th>
									<th>Mô tả</th>
									<th></th>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="row clear-padding" style="text-align: center;">
			<div class="col-xs-3 col-sm-push-1">
				<div class="fjs-btn blue">
					<a href="#" class="">Quay về</a>
				</div>
			</div>
			<div class="col-xs-7 col-xs-push-2">
				<div class="fjs-btn orange">
					<a href="#" class="">Xác nhận và tiếp tục</a>
				</div>
			</div>
		</div>
	</div>

</div>
<c:forEach var="script" items="${javascripts}">
	<script src="<c:url value="${script}"/>"></script>
</c:forEach>
