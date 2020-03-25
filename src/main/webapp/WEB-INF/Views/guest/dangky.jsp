<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/guest/dangky.css'/>" />
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


</head>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="edit-form">
				<form class="form-horizontal" role="form">
					<div class="title-box">Đăng ký</div>
					<div class="form-group">
						<label for="firstName" class="col-sm-4 sub-title">Tên Đăng
							Nhập <span class="require-field">(*)</span>
						</label>
						<div class="col-sm-8">
							<input type="text" id="username" placeholder="Tên Đăng Nhập"
								class="form-control" autofocus> <span class="help-block">Đây
								sẽ là tên đăng nhập bạn sử dụng</span>
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-4 sub-title">Mật Khẩu<span
							class="require-field">(*)</span>
						</label>
						<div class="col-sm-8">
							<input type="text" id="password" placeholder="Mật Khẩu"
								class="form-control" autofocus>
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-4 sub-title">Nhập Lại
							Mật Khẩu<span class="require-field">(*)</span>
						</label>
						<div class="col-sm-8">
							<input type="text" id="repassword"
								placeholder="Nhập lại mật khẩu" class="form-control" autofocus>
						</div>
					</div>

					<div class="title-box">Thông tin chủ tài khoản</div>
					<div class="form-group">
						<label for="fullname" class="col-sm-4 sub-title">Tên đầy
							đủ<span class="require-field">(*)</span>
						</label>
						<div class="col-sm-8">
							<input type="text" id="fullname" placeholder="Tên đầy đủ"
								class="form-control" autofocus>
						</div>
					</div>
					<div class="form-group">
						<label for="birthDate" class="col-sm-4 sub-title">Ngày
							sinh</label>
						<div class="col-sm-8">
							<input type="date" id="birthDate" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label for="gender" class="col-6 col-md-4 sub-title">Giới
							tính</label>
						<div class="col-6 col-md-4">
							<input id="Male" type="radio" name="radio" value="1" checked>
							<label for="male">Nam</label>
						</div>
						<div class="col-6 col-md-4">
							<input id="Female" type="radio" name="radio" value="1"> <label
								for="female">Nữ</label>
						</div>
					</div>

					<div class="form-group">
						<label for="roles" class="col-sm-4 sub-title">Chức vụ<span
							class="require-field">(*)</span>
						</label>
						<div class="col-sm-8">
							<input type="text" id="roles" placeholder="Chức vụ"
								class="form-control" autofocus>
						</div>
					</div>

					<div class="form-group">
						<label for="placework" class="col-sm-4 sub-title">Nơi công
							tác<span class="require-field">(*)</span>
						</label>
						<div class="col-sm-8">
							<input type="text" id="placework" placeholder="Nơi công tác"
								class="form-control" autofocus>
						</div>
					</div>
					<!-- /.form-group -->
					<div class="form-group">
						<div>
							<div class="checkbox">
								<input id="check" type="radio" value="1">
								<label class="sub-title" for="check">Tôi đã đọc và đồng ý với <a href="#">Các điều khoản hoạt động</a> khi đăng ký</label>
							</div>
						</div>
					</div>
					<!-- /.form-group -->
					<div class="form-group">
						<div>
							<button type="submit" class="btn btn-primary btn-block">Đăng
								ký</button>
						</div>
					</div>
				</form>
				<!-- /form -->
			</div>

		</div>
		<!-- ends col-6 -->

		<div class="col-md-6">
			<h1 class="page-header">Google Maps</h1>
			<p>
				Social media buttons<br>
			</p>

		</div>

	</div>
</div>