<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/guest/thaydoithongtin.css'/>" />
</head>



<div class="description">
	<div class="row">
		<div class="col-md-12 title-box">Chỉnh sửa thông tin</div>
	</div>
</div>
<div class="edit-form">
	<form method="" action="">
		<div class="row">
			<div class="col-md-12 sub-title">Thông tin tài khoản</div>
		</div>

		<div class="row">
			<div class="col-md-10 col-md-push-2">
				<b>Email <span class="require-field">(*)</span></b>
			</div>
			<div class="col-md-8 col-md-push-2">
				<input type="email" name="email" class="form-control"
					aria-required="true" placeholder="Email">
			</div>
		</div>


		<div class="row">
			<div class="col-md-12 sub-title">Thông tin cá nhân</div>
		</div>
		<div class="row">
			<div class="col-md-10 col-md-push-2">
				<b>Tên chủ tài khoản <span class="require-field">(*)</span></b>
			</div>
			<div class="col-md-8 col-md-push-2">
				<input type="text" name="full-name" class="form-control"
					aria-required="true" placeholder="Nhập họ và tên">
			</div>
		</div>
		<div class="row">
			<div class="col-md-10 col-md-push-2">
				<b>Ngày sinh <span class="require-field">(*)</span></b>
			</div>
			<div class="col-md-8 col-md-push-2">
				<input type="text" name="full-name" class="form-control"
					aria-required="true">
			</div>
		</div>
		<div class="row">
			<div class="col-md-10 col-md-push-2">
				<b>Số điện thoại</b>
			</div>
			<div class="col-md-8 col-md-push-2">
				<input type="text" name="phone" class="form-control"
					aria-required="true" placeholder="Nhập số điện thoại">
			</div>
		</div>
		<div class="row">
			<div class="col-md-10 col-md-push-2">
				<b>Chức vụ <span class="require-field">(*)</span></b>
			</div>

			<div class="col-md-8 col-md-push-2">
				<select class="form-control" id="title" name="title">
					<option>Dr.</option>
					<option>Mrs.</option>
					<option>Mr.</option>
				</select>
			</div>
		</div>
		<div class="row">
			<div class="col-md-10 col-md-push-2">
				<b>Nơi công tác <span class="require-field">(*)</span></b>
			</div>
			<div class="col-md-8 col-md-push-2">
				<input type="text" name="organization" class="form-control"
					aria-required="true" placeholder="Nhập tên tổ chức">
			</div>
		</div>
		
		<div class="row margin-20">
			<div class="col-md-10 col-md-push-2">
				<b><span class="require-field">(*)</span> Những thông tin bắt buộc</b>
			</div>
		</div>
		
		
		<div class="row">
			<div class="col-md-4 col-md-push-4">
				<div class="fjs-btn green">
					<button type="submit" class="btn btn-block">Lưu</button>
				</div>
			</div>
		</div>
	</form>
</div>