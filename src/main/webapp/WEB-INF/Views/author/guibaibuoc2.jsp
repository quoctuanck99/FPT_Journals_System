<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/author/guibai.css'/>" />
</head>

<div class="author-container">

	<div class="description">
		<div class="row">
			<table class="breadcrumb">
				<tbody>
					<tr>
						<td>Bước 1</td>
						<td class="active">Bước 2</td>
						<td>Bước 3</td>
						<td>Bước 4</td>
					</tr>
					<tr>
						<td>Bản thảo</td>
						<td class="active">Thông tin tác giả</td>
						<td>Đính kèm bản thảo</td>
						<td>Xác nhận và gửi đi</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="row">
			<div class="col-md-12 title-box">Nhập chi tiết thông tin tác
				giả ...</div>
		</div>
		<div class="row">
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="">
							<a data-toggle="collapse" href="#author1">Thông tin tác giả
								thứ nhất</a>
						</h4>
					</div>
					<div id="author1" class="panel-collapse collapse">
						<div class="edit-form">
							<form method="" action="">
								<div class="row">
									<div class="col-md-10 col-md-push-1">
										<b>Email <span class="require-field">(*)</span></b>
									</div>
									<div class="col-md-10 col-md-push-1">
										<input type="email" name="email" class="form-control"
											aria-required="true" placeholder="Email">
									</div>
								</div>
								<div class="row">
									<div class="col-md-10 col-md-push-1">
										<b>Tên tác giả <span class="require-field">(*)</span></b>
									</div>
									<div class="col-md-10 col-md-push-1">
										<input type="text" name="full-name" class="form-control"
											aria-required="true" placeholder="Nhập họ và tên">
									</div>
								</div>

								<div class="row">
									<div class="col-md-10 col-md-push-1">
										<b>Chức vụ <span class="require-field">(*)</span></b>
									</div>

									<div class="col-md-10 col-md-push-1">
										<select class="form-control" id="title" name="title">
											<option>Dr.</option>
											<option>Mrs.</option>
											<option>Mr.</option>
										</select>
									</div>
								</div>

								<div class="row">
									<div class="col-md-10 col-md-push-1">
										<b>Quốc gia <span class="require-field">(*)</span></b>
									</div>
									<div class="col-md-10 col-md-push-1">
										<input type="text" name="country" class="form-control"
											aria-required="true" placeholder="Nhập quốc tịch">
									</div>
								</div>

								<div class="row">
									<div class="col-md-10 col-md-push-1">
										<b>Địa chỉ <span class="require-field">(*)</span></b>
									</div>
									<div class="col-md-10 col-md-push-1">
										<input type="text" name="address" class="form-control"
											aria-required="true" placeholder="Nhập địa chỉ">
									</div>
								</div>

								<div class="row">
									<div class="col-md-10 col-md-push-1">
										<b>Tổ chức <span class="require-field">(*)</span></b>
									</div>
									<div class="col-md-10 col-md-push-1">
										<input type="text" name="organization" class="form-control"
											aria-required="true" placeholder="Nhập tổ chức">
									</div>
								</div>

								<div class="row">
									<div class="col-md-10 col-md-push-1">
										<b>Trang cá nhân</b>
									</div>
									<div class="col-md-10 col-md-push-1">
										<input type="text" name="profile" class="form-control"
											aria-required="false" placeholder="Facebook ....">
									</div>
								</div>

								<div class="row">
									<div class="col-md-10 col-md-push-1">
										<b>Điện thoại <span class="require-field">(*)</span></b>
									</div>
									<div class="col-md-10 col-md-push-1">
										<input type="text" name="phone" class="form-control"
											aria-required="true">
									</div>
								</div>
								
								<div class="row">
									<div class="col-md-10 col-md-push-1">
										<b>Giới tính <span class="require-field">(*)</span></b>
									</div>
									<div class="col-md-10 col-md-push-1">
										<input id="male" type="radio" name="gender" value="1">
    									<label for="male">Male</label>
										<input id="female" type="radio" name="gender" value="0">
    									<label for="female">Female</label>
									</div>
								</div>


								<div class="row margin-20">
									<div class="col-md-10 col-md-push-1">
										<b><span class="require-field">(*)</span> Những thông tin
											bắt buộc</b>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>