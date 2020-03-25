<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/author/guibai.css'/>" />
</head>


<div class="author-container">
	<tiles:insertAttribute name="authorstep" />
	<div class="row">
		<div class="col-md-12 title-box">Nhập thông tin bài viết</div>
	</div>
	<div class="edit-form">
		<form method="" action="">
			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<b>Ngôn ngữ <span class="require-field">(*)</span></b>
				</div>

				<div class="col-md-10 col-md-push-1">
					<select class="form-control" id="language" name="language">
						<option>Vietnamese</option>
						<option>English</option>
						<option>French</option>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<b>Tạp chí <span class="require-field">(*)</span></b>
				</div>

				<div class="col-md-10 col-md-push-1">
					<select class="form-control" id="journer" name="journer">
						<option>Lựa chọn</option>
						<option>Nghệ thuật</option>
						<option>Hóa học</option>
						<option>Công nghệ</option>
						<option>Văn hóa</option>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<b>Mục</b>
				</div>
				<div class="col-md-10 col-md-push-1">
					<input type="text" name="section" class="form-control"
						aria-required="false" id="section">
				</div>
			</div>

			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<b>Vấn đề trọng tâm <span class="require-field">(*)</span></b>
				</div>
				<div class="col-md-10 col-md-push-1">
					<input type="text" name="issue" class="form-control"
						aria-required="true" id="issue">
				</div>
			</div>

			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<b>Loại bài báo <span class="require-field">(*)</span></b>
				</div>

				<div class="col-md-10 col-md-push-1">
					<select class="form-control" id="types" name="types">
						<option>Lựa chọn</option>
						<option>Bài báo</option>
						<option>Tiểu luận</option>
						<option>Review sách</option>
						<option>Quan điểm cá nhân</option>
						<option>Hướng dẫn</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<b>Tên bài báo <span class="require-field">(*)</span></b>
				</div>
				<div class="col-md-10 col-md-push-1">
					<input type="text" name="name" class="form-control"
						aria-required="true" id="name">
				</div>
			</div>
			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<b>Tóm tắt <span class="require-field">(*)</span></b>
				</div>
				<div class="col-md-10 col-md-push-1">
					<textarea id="abstract" name="abstract" rows="4" cols="130"> 
				</textarea>
				</div>
			</div>

			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<b>Từ khóa</b>
				</div>
				<div class="col-md-10 col-md-push-1">
					<input type="text" name="key" class="form-control"
						aria-required="false" id="key">
				</div>
			</div>

			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<b>Số trang</b>
				</div>
				<div class="col-md-10 col-md-push-1">
					<input type="text" name="pages" class="form-control"
						aria-required="false" id="pages">
				</div>
			</div>

			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<b>Số tác giả <span class="require-field">(*)</span></b>
				</div>
				<div class="col-md-10 col-md-push-1">
					<input type="text" name="authors" class="form-control"
						aria-required="false" id="authors">
				</div>
			</div>


			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<div class="row">
						<div class="col-sm-2">
							<span class="require-field">(*)</span> <input id="confirm"
								type="checkbox" name="confirm">
						</div>
						<div class="col-sm-10">Tôi đã đọc và chuẩn bị bản thảo của
							mình theo hướng dẫn dành cho tác giả và tôi đồng ý rằng bài viết
							của tôi sẽ được xuất bản theo giấy phép truy cập mở</div>
					</div>
				</div>
			</div>

			<div class="row margin-20" style="margin-top: 25px">
				<div class="col-md-10 col-md-push-1">
					<b><span class="require-field">(*)</span> Những thông tin bắt
						buộc</b>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-md-push-4">
					<div class="fjs-btn orange">
						<a href="#" class="btn btn-block">Tiếp tục</a>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>