<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<head>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/author/guibai.css'/>" />
</head>
<div class="author-container">
	<div class="description">
		<tiles:insertAttribute name="authorstep" />
		<div class="row">
			<div class="col-md-12 title-box">Xác nhận và gửi bài</div>
		</div>
	</div>
	<!-- end description -->
	<div class="row">
		<div class="col-md-12 sub-title">Thông tin bài báo</div>
	</div>
	<div class="row article-info">
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Ngôn ngữ </b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>Vietnamese</span>
			</div>
		</div>
		<!-- end row -->
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Tạp chí </b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>Ứng dụng khoa học</span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Mục</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span></span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Vấn đề trọng tâm</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>Computing and Artifical Intelligence</span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Loại bài báo</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>Bài báo khoa học</span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Tên bài báo</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>Secure and Dynamic Access Controll for Internet of
					Things (IoT) base Traffic System</span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Tóm tắt</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>This study focused on correlation analysis between
					welding quality and sound-signal features collected during
					microlaser welding </span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Từ khóa</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>Secure IoT\ Dynamic Access Control\ Attributed RBAC</span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Số trang</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>2</span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Số tác giả</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>2</span>
			</div>
		</div>
	</div>
	<!-- end article-info -->
	<div class="row">
		<div class="col-md-12 sub-title">Thông tin tác giả</div>
	</div>
	<div class="row article-info">
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Email </b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>peterjones@gmail.com</span>
			</div>
		</div>
		<!-- end row -->
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Họ tên </b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>Peter Jones</span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Chức vị</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>Dr.</span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Quốc gia</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>Việt Nam</span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Địa chỉ</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>Hà Nội</span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Tổ chức</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>FPT University</span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Trang cá nhân</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<a href="#">https://www.facebook.com/peterjones</a>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Giới tính</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>Nam</span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-push-1">
				<b>Điện thoại</b>
			</div>

			<div class="col-xs-7 col-xs-push-1">
				<span>0123456789</span>
			</div>
		</div>
		<div class="row">
			<b>Thông tin đồng tác giả</b>
			<div class="col-md-12 over-x">
				<table id="table" class="display table-striped table-bordered"
					style="width: 100%; line-height: 30px;">
					<thead>
						<tr>
							<th>Email</th>
							<th>Họ Tên</th>
							<th>Chức vụ</th>
							<th>Quốc gia</th>
							<th>Địa chỉ</th>
							<th>Tổ chức</th>
							<th>Trang cá nhân</th>
							<th>Giới tính</th>
							<th>Điện thoại</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Brad Howard</td>
							<td>Dr.</td>
							<td>England</td>
							<td>London</td>
							<td>Cambridge University</td>
							<td><a href="#">https://www.facebook.com/bradhoward</a></td>
							<td>Nam</td>
							<td>0987654321</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<th>Email</th>
							<th>Họ Tên</th>
							<th>Chức vụ</th>
							<th>Quốc gia</th>
							<th>Địa chỉ</th>
							<th>Tổ chức</th>
							<th>Trang cá nhân</th>
							<th>Giới tính</th>
							<th>Điện thoại</th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
	<!-- end article-info -->
	
	<div class="row">
		<div class="col-md-12 sub-title">Thông tin tệp đính kèm</div>
	</div>
	<div class="row article-info">
		<div class="row">
			<div class="col-md-12">
			<b>Danh sách tệp đính kèm</b>
				<table id="table" class="display table-striped table-bordered"
					style="width: 100%; line-height: 30px;">
					<thead>
						<tr>
							<th>Stt</th>
							<th>Tên tệp tin</th>
							<th>Mô tả</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>noidung.docx</td>
							<td>Nội dung bài báo</td>
							<td><a href="#">Xóa</a></td>	
						</tr>
						<tr>
							<td>2</td>
							<td>dinhkem.docx</td>
							<td>Nội dung tham khảo</td>
							<td><a href="#">Xóa</a></td>
						</tr>
						<tr>
							<td>3</td>
							<td>tailieu.pdf</td>
							<td>Nội dung tham khảo</td>
							<td><a href="#">Xóa</a></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<th>Stt</th>
							<th>Tên tệp tin</th>
							<th>Mô tả</th>
							<th></th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
	<div class="row" style="text-align: center;">
		<div class="col-xs-3 col-xs-push-1 col-sm-push-1">
			<div class="fjs-btn blue">
				<a href="#" class="">Quay về</a>
			</div>
		</div>
		<div class="col-xs-7 col-xs-push-2">
			<div class="fjs-btn orange">
				<a href="#" class="">Xác nhận và nộp bài</a>
			</div>
		</div>
	</div>
	<!-- end article-info -->
</div>