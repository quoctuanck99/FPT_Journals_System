<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/guest/thaydoithongtin.css'/>" />
</head>


<div class="description">
	<div class="row">

		<div class="col-md-12 title-box">Thay đổi mất khẩu</div>
	</div>
</div>
<div class="edit-form">
	<form method="" action="">
		<div class="row">
			<div class="col-md-12 sub-title"></div>
		</div>

		<div class="row">
			<div class="col-md-10 col-md-push-2">
				<b>Mật khẩu hiện tại <span class="require-field">(*)</span></b>
			</div>
			<div class="col-md-8 col-md-push-2">
				<input type="password" name="current" class="form-control"
					aria-required="true">
			</div>
		</div>

		<div class="row">
			<div class="col-md-10 col-md-push-2">
				<b>Mật khẩu mới <span class="require-field">(*)</span></b>
			</div>
			<div class="col-md-8 col-md-push-2">
				<input type="password" name="new-password" class="form-control"
					aria-required="true"></div>
		</div>
		
		<div class="row">
			<div class="col-md-10 col-md-push-2">
				<b>Nhập lại mật khẩu mới <span class="require-field">(*)</span></b>
			</div>
			<div class="col-md-8 col-md-push-2">
				<input type="password" name="confirm-password" class="form-control"
					aria-required="true" >
			</div>
		</div>
			
		<div class="row margin-20">
			<div class="col-md-10 col-md-push-2">
				<small class="suggestion">Bạn nên sử dụng mật khẩu mạnh mà mình chưa sử dụng ở đâu khác</small>
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