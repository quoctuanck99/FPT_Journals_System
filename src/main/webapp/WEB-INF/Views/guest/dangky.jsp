<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/guest/dangky.css'/>" />
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


</head>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
	<div class="row">
        <div class="col-md-6">
 	<div class="edit-form">
<form action="" method="post" id="fileForm" role="form">
            <fieldset><legend class="text-center">Cần nhập thông tin chính xác khi đăng ký <span class="require-field"><small> (*) bắt buộc</small></span></legend>
		<div class="row">
			<div class="col-md-12 title-box">Thông tin chủ tài khoản</div>
		</div>
			<div class="row">
				<div class="col-md-12">
					<div class="sub-title">Tên đầy đủ <span class="require-field">(*)</span></div>
				</div>
				<div class="col-md-12">
					<input type="text" name="fname" class="form-control"
						aria-required="true" id="issue">
				</div>
			</div>

			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<div class="sub-title">Ngày sinh <span class="require-field">(*)</span></div>
				</div>
				<div class="col-md-12">
					<input type="date" name="dob" class="form-control"
						aria-required="true" id="issue">
				</div>
			</div>
            
           	<div class="row">
				<div class="col-md-10 col-md-push-1">
					<div class="sub-title">Chức vụ <span class="require-field">(*)</span></div>
				</div>
				<div class="col-md-12">
					<input type="text" name="role" class="form-control"
						aria-required="true" id="issue">
				</div>
			</div>
            
           	<div class="row">
				<div class="col-md-10 col-md-push-1">
					<div class="sub-title">Nơi làm việc</div>
				</div>
				<div class="col-md-12">
					<input type="text" name="placework" class="form-control"
						aria-required="true" id="issue">
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<div class="sub-title">Giới tính<span class="require-field">(*)</span></div>
				</div>
				<div class="col-md-12">
				    <input id="c1" type="checkbox">
				    <label for="c1">Nam</label>
				    <input id="c2" type="checkbox" checked>
				    <label for="c2">Nữ</label>
				</div>
			</div>
            

           	<div class="row">
				<div class="col-md-10 col-md-push-1">
					<div class="sub-title">Địa chỉ email<span class="require-field">(*)</span></div>
				</div>
				<div class="col-md-12">
					<input type="text" name="email" class="form-control"
						aria-required="true" id="issue">
				</div>
			</div>
            
           <div class="row">
				<div class="col-md-10 col-md-push-1">
					<div class="sub-title">Số điện thoại</div>
				</div>
				<div class="col-md-12">
					<input type="text" name="phonenum" class="form-control"
						aria-required="true" id="issue">
				</div>
			</div>
			<br>
            
            <div class="col-md-12 title-box">Thông tin chủ tài khoản</div>

            <div class="row">
				<div class="col-md-10 col-md-push-1">
					<div class="sub-title">Tên đăng nhập<span class="require-field">(*)</span></div>
				</div>
				<div class="col-md-12">
					<input type="text" name="username" class="form-control"
						aria-required="true" id="issue">
				</div>
			</div>

            <div class="row">
				<div class="col-md-10 col-md-push-1">
					<div class="sub-title">Mật khẩu<span class="require-field">(*)</span></div>>
				</div>
				<div class="col-md-12">
					<input type="text" name="password" class="form-control"
						aria-required="true" id="issue">
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<div class="sub-title">Nhập lại mật khẩu<span class="require-field">(*)</span></div>>
				</div>
				<div class="col-md-12">
					<input type="text" name="repassword" class="form-control"
						aria-required="true" id="issue">
				</div>
			</div>

            <div class="form-group">
            
                <?php //$date_entered = date('m/d/Y H:i:s'); ?>
                <input type="hidden" value="<?php //echo $date_entered; ?>" name="dateregistered">
                <input type="hidden" value="0" name="activate" />
                <hr>

                <input type="checkbox" required name="terms" onchange="" id="field_terms">   <label for="terms">Tôi đã đọc và đồng ý với <a href="terms.php" title="You may read our terms and conditions by clicking on this link">các điều khoản</a> trước khi đăng ký</label><span class="req">* </span>
            </div>

            <div class="form-group">
                <input class="btn btn-success" type="submit" name="submit_reg" value="Register">
            </div>
                      <h5>Bạn sẽ nhận được email yêu cầu xác nhận kích hoạt tài khoản sau khi đăng ký </h5>
 

            </fieldset>
            </form><!-- ends register form -->
	</div>

        </div><!-- ends col-6 -->
   
            <div class="col-md-6">
                <h1 class="page-header">Google Maps</h1>
                <p>Social media buttons<br></p>
                
            </div>

	</div>
</div>