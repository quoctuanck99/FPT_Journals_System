
<!DOCTYPE html>
<%@page language="java"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/guest/dangnhap.css'/>" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

</head>
<body>
<div class="login-form">
    <form action="/examples/actions/confirmation.php" method="post">	
            <div class="form-group">
        	<div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" name="username" placeholder="Tên đăng nhập" required="required">
            </div>
        </div>
		<div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="password" class="form-control" name="password" placeholder="Mật khẩu" required="required">
            </div>
        </div>        
                <div class="form-group">
            <button type="submit" class="btn btn-success btn-block login-btn">Đăng Nhập</button>
        </div>
        <div class="clearfix">
            <a href="#" class="pull-right text-success">Quên mật khẩu?</a>
        </div>  

		<div class="or-seperator"><i>or</i></div>
		 <div class="text-center social-btn">
            <a href="#" class="btn btn-info btn-block"><i class="fa fa-facebook"></i> Đăng nhập với <b>Facebook</b></a>
			<a href="#" class="btn btn-danger btn-block"><i class="fa fa-google"></i> Đăng nhập với <b>Google</b></a>
        </div>
        
    </form>
    <div class="hint-text small">Bạn chưa có tài khoản? <a href="#" class="text-success">Đăng ký ngay!</a></div>
</div>
</body>
</html>                            