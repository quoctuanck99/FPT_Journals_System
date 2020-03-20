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
            <form action="" method="post" id="fileForm" role="form">
            <fieldset><legend class="text-center">Cần nhập thông tin chính xác khi đăng ký <span class="req"><small> (*) bắt buộc</small></span></legend>
			<div class="title-box"> Thông tin của chủ tài khoản</div>

            <div class="form-group"> 	 
                <div class="sub-title"><span class="req">* </span> Tên đầy đủ </div>
                    <input class="form-control" type="text" name="f" id = "txt" onkeyup = "Validate(this)" required /> 
                        <div id="errFirst"></div>    
            </div>

            <div class="form-group">
                <div class="sub-title"> Ngày sinh </div>
                    <input type="date" name="dob" id="dob" class="form-control">
                        <div id="errLast"></div>
            </div>
            
            <div class="form-group"> 	 
                <div class="sub-title"><span class="req">* </span> Chức vụ </div>
                    <input class="form-control" type="text" name="job" id = "txt" onkeyup = "Validate(this)" required /> 
                        <div id="errFirst"></div>    
            </div>
            
           	<div class="form-group"> 	 
                <div class="sub-title"> Nơi làm việc </div>
                    <input class="form-control" type="text" name="placework" id = "txt" onkeyup = "Validate(this)"/> 
                        <div id="errFirst"></div>    
            </div>
			<div class="form-group">
				<div class="sub-title">Giới tính</div>
					<select name="gender" id="gender" class="form-control">
						<option selected>Male</option>
						<option>Female</option>
						<option>Other</option>
					</select>
			</div>

            <div class="form-group">
                <div class="sub-title"><span class="req">* </span> Địa chỉ email </div> 
                    <input class="form-control" required type="text" name="email" id = "email"  onchange="email_validate(this.value);" />   
                        <div class="status" id="status"></div>
            </div>
            
            <div class="form-group">
            	<div class="sub-title"> Số điện thoại </div>
                    <input required type="text" name="phonenumber" id="phone" class="form-control phone" maxlength="28" onkeyup="validatephone(this);" placeholder="not used for marketing"/> 
            </div>
            
            <div class="title-box"> Thông tin tài khoản</div>

            <div class="form-group">
                <div class="sub-title"><span class="req">* </span> Tên đăng nhập </div>
                    <input class="form-control" type="text" name="username" id = "txt" onkeyup = "Validate(this)" placeholder="minimum 6 letters" required />  
                        <div id="errLast"></div>
            </div>

            <div class="form-group">
                <div class="sub-title"><span class="req">* </span> Mật khẩu </div>
                    <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16"  id="pass1" /> </p>

               	<div class="sub-title"><span class="req">* </span> Nhập lại mật khẩu </div>
                    <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16" placeholder="Enter again to validate"  id="pass2" onkeyup="checkPass(); return false;" />
                        <span id="confirmMessage" class="confirmMessage"></span>
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

<script type="text/javascript">
  document.getElementById("field_terms").setCustomValidity("Please indicate that you accept the Terms and Conditions");
</script>
        </div><!-- ends col-6 -->
   
            <div class="col-md-6">
                <h1 class="page-header">Google Maps</h1>
                <p>Social media buttons<br></p>
                
            </div>

	</div>
</div>