 <%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<form action="" method="post">
		<div class="form-group col-md-12">
			<label id="messageLabel" for="message">Chỉnh sửa tin tức </label>
			<textarea class="form-control input-sm" id="message" placeholder=""
				rows="20"></textarea>
		</div>
		<br style="clear: both">
		<div class="form-group col-md-2">
			<a href="" data-toggle="modal" data-target="#myModal"><button class="form-control input-sm btn btn-success "
				id="btnSubmit" name="btnSubmit" type="submit" >Lưu</button></a>
		</div>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" >

					<div class="modal-dialog modal-ms" role="document" style="width: 20%">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h5 class="modal-title" id="myModalLabel">
									<center>Xác nhận thay đổi thông tin</center>
								</h5>
							</div>
							<div class="modal-footer"  >
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Huỷ</button>
								<button type="button" class="btn btn-success">Xác nhận</button>
							</div>
						</div>
					</div>

				</div>
	</form>
</div>
</body>
</html>