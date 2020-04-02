<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/guest/dangky.css'/>" />
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
							<input type="text" id="username" placeholder="Tên đăng nhập"
								value=""> <span class="help-block">Đây sẽ là tên
								đăng nhập bạn sử dụng</span>
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-4 sub-title">Mật Khẩu<span
							class="require-field">(*)</span>
						</label>
						<div class="col-sm-8">
							<input type="password" id="password" placeholder="Mật khẩu"
								value="">
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-4 sub-title">Nhập Lại
							Mật Khẩu<span class="require-field">(*)</span>
						</label>
						<div class="col-sm-8">
							<input type="password" id="password"
								placeholder="Nhập lại mật khẩu" value="">
						</div>
					</div>

					<div class="title-box">Thông tin chủ tài khoản</div>
					<div class="form-group">
						<label for="fullname" class="col-sm-4 sub-title">Tên đầy
							đủ<span class="require-field">(*)</span>
						</label>
						<div class="col-sm-8">
							<input type="text" id="Tên đầy đủ"
								placeholder="Tên đầy đủ của người đăng ký" value="">

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
						<div class="col-6 col-md-4 check-group">
							<input id="Male" type="radio" name="radio" value="1" checked><label for="male">Nam</label> 
						</div>
						<div class="col-6 col-md-4 check-group">
							<input id="Female" type="radio" name="radio" value="1"> <label
								for="female">Nữ</label>
						</div>
					</div>

					<div class="form-group">
						<label for="roles" class="col-sm-4 sub-title">Chức vụ<span
							class="require-field">(*)</span>
						</label>
						<div class="col-sm-8">
							<input type="text" id="roles" placeholder="Chức vụ">
						</div>
					</div>

					<div class="form-group">
						<label for="placework" class="col-sm-4 sub-title">Nơi công
							tác<span class="require-field">(*)</span>
						</label>
						<div class="col-sm-8">
							<input type="text" id="placework" placeholder="Nơi công tác">
						</div>
					</div>
					<!-- /.form-group -->
					<div class="form-group">
						<div>
							<div class="check-group">
								<input id="c1" type="checkbox"> <label class="sub-title"
									for="check">Tôi đã đọc và đồng ý với <a href="#">Các
										điều khoản hoạt động</a> khi đăng ký
								</label>
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
		
		
			<h1 class="page-header">Giới thiệu</h1>
			<div class="info">
			<p class="p-2" style="text-align:left">Chính thức thành lập ngày 8/9/2006 theo Quyết định của Thủ tướng Chính phủ, Trường Đại học FPT trở thành trường đại học đầu tiên của Việt Nam do một doanh nghiệp đứng ra thành lập với 100% vốn đầu tư từ Tập đoàn FPT.

Sự khác biệt của Trường Đại học FPT so với các trường đại học khác là đào tạo theo hình thức liên kết chặt chẽ với các doanh nghiệp, gắn đào tạo với thực tiễn, với nghiên cứu – triển khai và các công nghệ hiện đại nhất. Triết lý và phương pháp giáo dục hiện đại; Đào tạo con người toàn diện, hài hòa; Chương trình luôn được cập nhật và tuân thủ các chuẩn công nghệ quốc tế; Đặc biệt chú trọng kỹ năng ngoại ngữ; Tăng cường đào tạo quy trình tổ chức sản xuất, kỹ năng làm việc theo nhóm và các kỹ năng cá nhân khác là những điểm sẽ đảm bảo cho sinh viên tốt nghiệp có những cơ hội việc làm tốt nhất sau khi ra trường.

Trường hiện đang đào tạo các nhóm ngành CNTT, Kinh tế, Ngôn ngữ, Mỹ thuật ứng dụng.</p>
</div>
			<div class="googlemaps">
				<iframe
					src="https://maps.google.com/maps?q=manhatan&t=&z=13&ie=UTF8&iwloc=&output=embed"
					frameborder="0" style="border: 0" allowfullscreen width="400"
					height="400"></iframe>
			</div>
			<p>
				<a href="#" class="fa fa-facebook"></a>
			</p>

		</div>

	</div>
</div>