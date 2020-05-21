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
		<div class="col-md-12 title-box">Nhập chi tiết thông tin tác giả
			...</div>
	</div>
	<div class="row" id="authorgroup">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="author-title">
						<a data-toggle="collapse" href="#author1">Tác giả 1</a>
					</h4>
				</div>
				<div id="author1" class="panel-collapse collapse in">
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
									<select class="form-control" name="title">
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
									<input type="radio" name="gender" value="1"> <label
										for="male">Male</label> <input type="radio" name="gender"
										value="0"> <label for="female">Female</label>
								</div>
							</div>


							<div class="row margin-20">
								<div class="col-md-10 col-md-push-1">
									<b><span class="require-field">(*)</span> Những thông tin
										bắt buộc</b>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4 col-md-push-4">
									<div class="fjs-btn green">
										<button type="submit" class="btn btn-block"><i class="fa fa-save"></i>&nbsp;Lưu</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row clear-padding margin-20">
		<div class="fjs-btn green">
			<a href="#" id="addauthor">Thêm tác giả</a>
		</div>
	</div>
	<div class="row clear-padding" style="text-align: center;">
		<div class="col-xs-3 col-sm-push-1">
			<div class="fjs-btn blue">
				<a href="#" class="">Quay về</a>
			</div>
		</div>
		<div class="col-xs-7 col-xs-push-2">
			<div class="fjs-btn orange">
				<a href="#" class="">Xác nhận và tiếp tục</a>
			</div>
		</div>
	</div>

</div>
<c:forEach var="script" items="${javascripts}">
	<script src="<c:url value="${script}"/>"></script>
</c:forEach>