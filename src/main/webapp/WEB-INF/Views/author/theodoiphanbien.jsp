<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<head>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/author/guibai.css'/>" />
</head>

<div class="author-container">
	<div class="row">
		<div class="col-md-12 title-box">Theo dõi phản biện</div>
	</div>
	<div class="row article-info">
		<div class="row">
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="author-title">
							<a data-toggle="collapse" href="#articleinfo">Thông tin bài
								báo</a>
						</h4>
					</div>
					<div id="articleinfo" class="panel-collapse collapse in">
						<div class="edit-form">
							<div class="row">
								<div class="col-xs-3 col-xs-push-1">
									<b>Tạp chí</b>
								</div>

								<div class="col-xs-7 col-xs-push-1">
									<span>Ứng dụng khoa học</span>
								</div>
							</div>
							<!-- end row -->
							<div class="row">
								<div class="col-xs-3 col-xs-push-1">
									<b>Mã bản thảo</b>
								</div>

								<div class="col-xs-7 col-xs-push-1">
									<span>applsci-739801</span>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-3 col-xs-push-1">
									<b>Vấn đề trọng tâm</b>
								</div>

								<div class="col-xs-7 col-xs-push-1">
									<span>Máy tính và trí tuệ nhân tạo</span>
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
										Things (IoT) base Traffic System </span>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-3 col-xs-push-1">
									<b>Tóm tắt</b>
								</div>

								<div class="col-xs-7 col-xs-push-1">
									<span>This study focused on correlation analysis between
										welding quality and sound-signal features collected during
										microlaser welding</span>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-3 col-xs-push-1">
									<b>Số trang</b>
								</div>

								<div class="col-xs-7 col-xs-push-1">
									<span>1</span>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-3 col-xs-push-1">
									<b>Tác giả</b>
								</div>

								<div class="col-xs-7 col-xs-push-1">
									<span>Peter Jones, Brad Howard</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End thong tin bai bao -->
		<div class="row">
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="author-title">
							<a data-toggle="collapse" href="#detailreport">Chi tiết đánh
								giá</a>
						</h4>
					</div>
					<div id="detailreport" class="panel-collapse collapse in">
						<div class="edit-form">
							<form method="" action="">
								<div class="row">
									=
									<div class="col-xs-3 col-xs-push-1">
										<b>Bình luận cho tác giả</b>
									</div>

									<div class="col-xs-7 col-xs-push-1">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit. Aenean commodo ligula eget dolor. Aenean massa. Cum
											sociis natoque penatibus et magnis dis parturient montes,
											nascetur ridiculus mus. Donec quam felis, ultricies nec,
											pellentesque eu, pretium quis, sem. Nulla consequat massa
											quis enim. Donec pede justo, fringilla vel, aliquet nec,
											vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a,
											venenatis vitae, justo. Nullam dictum felis eu pede mollis
											pretium. Integer tincidunt.</p>
										<p>Cras dapibus. Vivamus elementum semper nisi. Aenean
											vulputate eleifend tellus. Aenean leo ligula, porttitor eu,
											consequat vitae, eleifend ac, enim. Aliquam lorem ante,
											dapibus in, viverra quis, feugiat a, tellus. Phasellus
											viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean
											imperdiet. Etiam ultricies nisi vel augue. Curabitur
											ullamcorper ultricies nisi. Nam eget dui.</p>
										<p>Etiam rhoncus. Maecenas tempus, tellus eget condimentum
											rhoncus, sem quam semper libero, sit amet adipiscing sem
											neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar,
											hendrerit id, lorem. Maecenas nec odio et ante tincidunt
											tempus. Donec vitae sapien ut libero venenatis faucibus.
											Nullam quis ante. Etiam sit amet orci eget eros faucibus
											tincidunt. Duis leo. Sed fringilla mauris sit amet nibh.
											Donec sodales sagittis magna. Sed consequat, leo eget
											bibendum sodales, augue velit cursus nunc</p>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-3 col-xs-push-1">
										<b>Ngày gửi bài</b>
									</div>
									<div class="col-xs-7 col-xs-push-1">
										<span>11-03-2020</span>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-3 col-xs-push-1">
										<b>Ngày đánh giá</b>
									</div>
									<div class="col-xs-7 col-xs-push-1">
										<span>28-03-2020</span>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-3 col-xs-push-1">
										<b>Tệp tin phản biện</b>
									</div>
									<div class="col-xs-4 col-xs-push-1">
										<input type="file" id="real-file" hidden="hidden" /> <span
											id="custom-text">Chưa có file nào được chọn</span>
									</div>
									<div class="col-xs-4 col-xs-push-1">
										<div class="fjs-btn green add-to-list">
											<button type="button" id="custom-button"><i class="fa fa-upload"></i> &nbsp;Chọn file</button>
										</div>
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
		<!-- end chi tiet danh gia -->
		<div class="row">
			<div class="col-md-4 col-md-push-4">
				<div class="fjs-btn blue">
					<a href="<c:out value="${pageContext.servletContext.contextPath}"/>/tac-gia/trang-thai-bai-dang" class="btn btn-block">Quay về</a>
				</div>
			</div>
		</div>
	</div>
</div>
<c:forEach var="script" items="${javascripts}">
	<script src="<c:url value="${script}"/>"></script>
</c:forEach>
