<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="item course-item">
	<div class="up-content">
		<h4>QUẢN TRỊ TRANG</h4>
	</div>
</div>
<div class="col-md-12">
	<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
		<li class="nav-item active"><a class="nav-link white-text"
			id="dashboard-tab" data-toggle="tab" href="#dashboard" role="tab"
			aria-controls="dashboard" aria-selected="true" aria-expanded="true">Dashboard</a></li>
		<li class="nav-item"><a class="nav-link white-text"
			id="account-tab" data-toggle="tab" href="#account" role="tab"
			aria-controls="account" aria-selected="false">Quản lí tài khoản</a></li>
		<li class="nav-item"><a class="nav-link white-text" id="web-tab"
			data-toggle="tab" href="#web" role="tab" aria-controls="web"
			aria-selected="false">Cài đặt trang web</a></li>
	</ul>
	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade active in" id="dashboard" role="tabpanel"
			aria-labelledby="dashboard-tab">
			<div class="col-md-12">
				<p>
					Thống kê ngày <input type="date">
				</p>
				<hr>
				<div class="col-md-4" align="center">
					<i class="fa fa-user rs"></i>
					<p>
						<em class="numbercount">5000</em>lượt truy cập
					</p>
				</div>
				<div class="col-md-4" align="center">
					<i class="fa fa-file-text-o rs"></i>
					<p>
						<em class="numbercount">100</em>bài viết mới
					</p>
				</div>
				<div class="col-md-4" align="center">
					<i class="fa fa-check-square-o rs"></i>
					<p>
						<em class="numbercount">56</em>bài viết được phê duyệt
					</p>
				</div>
				<div class="col-md-12">
					<div class="canvas-hd">
						<canvas id="Piechart"></canvas>
					</div>
					<hr>
				</div>
				<div class="col-md-12" style="margin-top: 0px">
					<div class="canvas-hd">
						<canvas id="Linechart"
							style="width: 100% !important; height: 400px !important;"></canvas>
					</div>
				</div>
			</div>
		</div>

		<div class="tab-pane fade" id="account" role="tabpanel"
			aria-labelledby="account-tab">
				<div class="row" style="margin-top: 10px">
					<div class="col-md-12">
						<div class="col-md-3">
							<input type="text" id="name" placeholder="Name" value="">
						</div>
						<div class="col-md-3">
							<select>
								<option>Chức vụ</option>
								<option>Tác giả</option>
								<option>Phản biện viên</option>
								<option>Biên tập viên</option>
								<option>Tổng biên tập</option>
								<option>Tổng biên tập chuyên San</option>
							</select>
						</div>
						<div class="col-md-3">
							<select>
								<option>Trạng thái</option>
								<option>Hoạt động</option>
								<option>Ngừng hoạt động</option>
							</select>
						</div>
						<div class="col-md-3">
							<button type="button" class="btn-orange">Tìm</button>
						</div>
					</div>
					<div class="col-md-4 col-md-offset-8 mar-top" align="center">
						<button type="button" class="btn-orange" data-toggle="modal" data-target="#new-account">Thêm tài khoản</button>
					</div>
					<div class="col-md-12 mar-top">
						<table id="table" class="display table-striped table-bordered"
							style="width: 100%; line-height: 30px;">
							<thead>
								<tr>
									<th>Tên tài khoản</th>
									<th>Quyển truy cập</th>
									<th>Trạng thái</th>
									<th colspan="2">Tác vụ</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>duongpl</td>
									<td>Tác giả</td>
									<td>Hoạt động</td>
									<td><a href="#edit-account" class="btn" data-toggle="modal"
				data-target="#edit-account">Chỉnh sửa</a></td>
									<td><a href="#delete-account" class="btn" data-toggle="modal"
				data-target="#delete-account">Xóa</a></td>
								</tr>
								<tr>
									<td>duongpl</td>
									<td>Tác giả</td>
									<td>Hoạt động</td>
									<td><a href="#edit-account" class="btn" data-toggle="modal"
				data-target="#edit-account">Chỉnh sửa</a></td>
									<td><a href="#delete-account" class="btn" data-toggle="modal"
				data-target="#delete-account">Xóa</a></td>
								</tr>
								<tr>
									<td>duongpl</td>
									<td>Tác giả</td>
									<td>Hoạt động</td>
									<td><a href="#edit-account" class="btn" data-toggle="modal"
				data-target="#edit-account">Chỉnh sửa</a></td>
									<td><a href="#delete-account" class="btn" data-toggle="modal"
				data-target="#delete-account">Xóa</a></td>
								</tr>
								<tr>
									<td>duongpl</td>
									<td>Tác giả</td>
									<td>Hoạt động</td>
									<td><a href="#edit-account" class="btn" data-toggle="modal"
				data-target="#edit-account">Chỉnh sửa</a></td>
									<td><a href="#delete-account" class="btn" data-toggle="modal"
				data-target="#delete-account">Xóa</a></td>
								</tr>
								<tr>
									<td>duongpl</td>
									<td>Tác giả</td>
									<td>Hoạt động</td>
									<td><a href="#edit-account" class="btn" data-toggle="modal"
				data-target="#edit-account">Chỉnh sửa</a></td>
									<td><a href="#delete-account" class="btn" data-toggle="modal"
				data-target="#delete-account">Xóa</a></td>
								</tr>
							</tbody>
				
						</table>
					</div>
				</div>
			
		</div>

		<div class="tab-pane fade" id="web" role="tabpanel"
			aria-labelledby="web-tab">
			<div class="col-md-12" style="margin-top: 10px">
				<div class="col-md-3" style="text-align: center">
					<ul class="nav nav-tabs nav-justified" id="myTab2" role="tablist">
						<div class="float-left">
							<li class="nav-item active white-color">
								<div class="fjs-btn orange">
									<a class="nav-link white-text" id="system-tab"
										data-toggle="tab" href="#system" role="tab"
										aria-controls="system" aria-selected="true"
										aria-expanded="true">Cài đặt hệ thống</a>
								</div>
							</li>
						</div>
						<div class="float-margin">
							<li class="nav-item white-color">
								<div class="fjs-btn orange">
									<a class="nav-link white-text" id="front-tab" data-toggle="tab"
										href="#front" role="tab" aria-controls="front"
										aria-selected="false">Cài đặt giao diện</a>
								</div>
							</li>
						</div>
					</ul>
				</div>
				<div class="col-md-9 border-left-ad">
					<div class="tab-content" id="myTabContent2">
						<div class="tab-pane fade active in" id="system" role="tabpanel"
							aria-labelledby="system-tab">
							<div class="col-md-4">
								<span class="big-text">Ngôn ngữ mặc định</span>
							</div>
							<div class="col-md-5">
								<select style="float: left">
									<option>Tiếng Việt</option>
									<option>Tiếng Anh</option>
									<option>中国語（簡体字）</option>
									<option>日本語</option>
								</select>
							</div>
							<div class="col-md-3 col-md-offset-2 pad">
								<button type="button" class="button-tab-admin">Lưu</button>
							</div>
						</div>
						<div class="tab-pane fade" id="front" role="tabpanel"
							aria-labelledby="front-tab">
							<ul class="nav nav-tabs nav-justified" id="myTab3" role="tablist">
								<li class="nav-item active"><a class="nav-link white-text"
									id="logo-tab" data-toggle="tab" href="#logo" role="tab"
									aria-controls="logo" aria-selected="true" aria-expanded="true">Logo</a></li>
								<li class="nav-item"><a class="nav-link white-text"
									id="banner-tab" data-toggle="tab" href="#banner" role="tab"
									aria-controls="banner" aria-selected="false">Banner</a></li>
								<li class="nav-item"><a class="nav-link white-text"
									id="footer-tab" data-toggle="tab" href="#footer" role="tab"
									aria-controls="footer" aria-selected="false">Footer</a></li>
							</ul>
							<div class="tab-content" id="myTabContent3">
								<div class="tab-pane fade active in" id="logo" role="tabpanel"
									aria-labelledby="logo-tab">
									<div class="row">
										<div class="gallery col-md-12"
											style="padding-right: 0px; padding-left: 0px">
											<div
												class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 border-img">
												<img src="<c:url value='/assets/images/logo.png'/>"
													class="img-responsive">
												<div align="center">
													<button type="button" class="btn-img">Chọn</button>
													<button type="button" class="btn-img">Xóa</button>
												</div>
											</div>

											<div
												class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 border-img">
												<img src="<c:url value='/assets/images/logo.png'/>"
													class="img-responsive">
												<div align="center">
													<button type="button" class="btn-img">Chọn</button>
													<button type="button" class="btn-img">Xóa</button>
												</div>
											</div>

											<div
												class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 border-img">
												<img src="<c:url value='/assets/images/logo.png'/>"
													class="img-responsive">
												<div align="center">
													<button type="button" class="btn-img">Chọn</button>
													<button type="button" class="btn-img">Xóa</button>
												</div>
											</div>
											<div
												class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 border-img">
									                <div align="center">
									                	<p style="font-size: 16px;color: #2c2538;">Thêm logo</p>
									                	<input type="file" accept="image/*" value="Thêm logo"/>
									                </div>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="banner" role="tabpanel"
									aria-labelledby="banner-tab">
									<div class="row">
										<div class="gallery col-md-12"
											style="padding-right: 0px; padding-left: 0px">
											<div
												class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 border-img">
												<img src="<c:url value='/assets/images/logo.png'/>"
													class="img-responsive">
												<div align="center">
													<button type="button" class="btn-img">Chọn</button>
													<button type="button" class="btn-img">Xóa</button>
												</div>
											</div>

											<div
												class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 border-img">
												<img src="<c:url value='/assets/images/logo.png'/>"
													class="img-responsive">
												<div align="center">
													<button type="button" class="btn-img">Chọn</button>
													<button type="button" class="btn-img">Xóa</button>
												</div>
											</div>

											<div
												class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 border-img">
												<img src="<c:url value='/assets/images/logo.png'/>"
													class="img-responsive">
												<div align="center">
													<button type="button" class="btn-img">Chọn</button>
													<button type="button" class="btn-img">Xóa</button>
												</div>
											</div>
											<div
												class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 border-img">
									                <div align="center">
									                	<p style="font-size: 16px;color: #2c2538;">Thêm banner</p>
									                	<input type="file" accept="image/*" value="Thêm banner"/>
									                </div>
											</div>
										</div>
									</div>
									</div>
								<div class="tab-pane fade" id="footer" role="tabpanel"
									aria-labelledby="footer-tab">
									<div class="row">
										<div class="gallery col-md-12"
											style="padding-right: 0px; padding-left: 0px">
											<div
												class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 border-img">
												<img src="<c:url value='/assets/images/logo.png'/>"
													class="img-responsive">
												<div align="center">
													<button type="button" class="btn-img">Chọn</button>
													<button type="button" class="btn-img">Xóa</button>
												</div>
											</div>

											<div
												class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 border-img">
												<img src="<c:url value='/assets/images/logo.png'/>"
													class="img-responsive">
												<div align="center">
													<button type="button" class="btn-img">Chọn</button>
													<button type="button" class="btn-img">Xóa</button>
												</div>
											</div>

											<div
												class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 border-img">
												<img src="<c:url value='/assets/images/logo.png'/>"
													class="img-responsive">
												<div align="center">
													<button type="button" class="btn-img">Chọn</button>
													<button type="button" class="btn-img">Xóa</button>
												</div>
											</div>
											<div
												class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 border-img">
									                <div align="center">
									                	<p style="font-size: 16px;color: #2c2538;">Thêm footer</p>
									                	<input type="file" accept="image/*" value="Thêm footer"/>
									                </div>
											</div>
										</div>
									</div>
									</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>
<div class="modal fade" id="delete-account">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">Xóa người dùng này</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger">Xóa</button>
				<button type="button" class="btn btn-info" data-dismiss="modal">Đóng</button>
			</div>

		</div>
	</div>
</div>
<div class="modal fade" id="edit-account" style="">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				Cập nhật thông tin
			</div>
				<div class="col-md-12 mar-top">
					<div class="col-md-4">
						<span>Tên tài khoản</span>
					</div>
					<div class="col-md-8">
						<input type="text" id="name" placeholder="Full Name" value="">
					</div>
				</div>
				<div class="col-md-12 mar-top">
					<div class="col-md-4">
						<span>Quyền truy cập</span>
					</div>
					<div class="col-md-8">
							<select>
								<option>Quyền truy cập</option>
								<option>Tác giả</option>
								<option>Phản biện viên</option>
								<option>Biên tập viên</option>
								<option>Tổng biên tập</option>
								<option>Tổng biên tập chuyên San</option>
							</select>
					</div>
				</div>
				<div class="col-md-12 mar-top">
					<div class="col-md-4">
						<span>Trạng thái</span>
					</div>
					<div class="col-md-8">
							<select>
								<option>Hoạt động</option>
								<option>Ngừng hoạt động</option>
							</select>
					</div>
				</div>
			<div class="modal-footer">
				<div class="col-md-12  mar-top">
					<button type="button" class="btn btn-info" data-dismiss="modal">Hủy</button>
					<button type="button" class="btn btn-warning">Cập nhật</button>
				</div>
			</div>

		</div>
	</div>
</div>
<div class="modal fade" id="new-account" style="">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				Thêm tài khoản mới
			</div>
				<div class="col-md-12 mar-top">
					<div class="col-md-4">
						<span>Tên tài khoản</span>
					</div>
					<div class="col-md-8">
						<input type="text" id="name" placeholder="Full Name" value="">
					</div>
				</div>
				<div class="col-md-12 mar-top">
					<div class="col-md-4">
						<span>Quyền truy cập</span>
					</div>
					<div class="col-md-8">
							<select>
								<option>Quyền truy cập</option>
								<option>Tác giả</option>
								<option>Phản biện viên</option>
								<option>Biên tập viên</option>
								<option>Tổng biên tập</option>
								<option>Tổng biên tập chuyên San</option>
							</select>
					</div>
				</div>
				<div class="col-md-12 mar-top">
					<div class="col-md-4">
						<span>Trạng thái</span>
					</div>
					<div class="col-md-8">
							<select>
								<option>Hoạt động</option>
								<option>Ngừng hoạt động</option>
							</select>
					</div>
				</div>
			<div class="modal-footer">
				<div class="col-md-12  mar-top">
					<button type="button" class="btn btn-info" data-dismiss="modal">Hủy</button>
					<button type="button" class="btn btn-warning">Lưu</button>
				</div>
			</div>

		</div>
	</div>
</div>
<script>
	var config = {
		type : 'pie',
		data : {
			datasets : [ {
				data : [ 10, 20, 30 ],
				backgroundColor : [ 'rgb(255, 99, 132)', 'rgb(255, 159, 64)',
						'rgb(255, 205, 86)' ],
			} ],
			labels : [ 'Lượt truy cập', 'Bài viết mới',
					'Bài viết được phê duyệt' ]
		},
		options : {
			responsive : true,
			title : {
				display : true,
				text : 'Biểu đồ theo ngày',
				fontSize : 30
			},
			tooltips : {
				bodyFontSize : 28
			},
			legend : {
				display : true,
				labels : {
					fontSize : 32,
					padding : 20
				},
				positon : 'left'
			}
		}

	};
	var configline = {
		labels : [ 'January', 'February', 'March', 'April', 'May', 'June',
				'July', 'August', 'September', 'October', 'November',
				'December' ],
		datasets : [ {
			label : 'Lượt truy cập',
			borderColor : 'rgb(255, 99, 132)',
			backgroundColor : 'rgb(255, 99, 132)',
			fill : false,
			pointRadius : 5,
			pointHoverRadius : 10,
			data : [ 24, 52, 49, 34, 76, 22, 45, 68, 90, 45, 44, 67 ],
			yAxisID : 'y-axis-1',
		}, {

			label : 'Số bài viết mới',
			borderColor : 'rgb(255, 159, 64)',
			backgroundColor : 'rgb(255, 159, 64)',
			fill : false,
			pointRadius : 5,
			pointHoverRadius : 10,
			data : [ 78, 12, 34, 66, 56, 44, 54, 43, 12, 54, 65, 21 ],
			yAxisID : 'y-axis-2'
		}, {

			label : 'Số bài viết được phê duyệt',
			borderColor : 'rgb(255, 205, 86)',
			backgroundColor : 'rgb(255, 205, 86)',
			fill : false,
			pointRadius : 5,
			pointHoverRadius : 10,
			data : [ 13, 12, 9, 7, 10, 14, 6, 5, 7, 9, 11, 14 ],
			yAxisID : 'y-axis-2'
		} ]
	};
	window.onload = function() {
		var ctx = document.getElementById('Piechart').getContext('2d');
		window.myPie = new Chart(ctx, config);

		var ctx2 = document.getElementById('Linechart').getContext('2d');
		window.myLine = Chart.Line(ctx2, {
			data : configline,
			options : {
				responsive : true,
				hoverMode : 'index',
				stacked : false,
				title : {
					display : true,
					text : 'Biểu đồ theo tháng',
					fontSize : 18
				},
				scales : {
					yAxes : [ {
						type : 'linear', // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
						display : true,
						position : 'left',
						id : 'y-axis-1',
					}, {
						type : 'linear', // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
						display : true,
						position : 'right',
						id : 'y-axis-2',

						// grid line settings
						gridLines : {
							drawOnChartArea : false, // only want the grid lines for one axis to show up
						},
					} ],
				},
				legend : {
					display : true,
					labels : {
						// This more specific font property overrides the global property
						fontSize : 18,
					}
				},
				tooltips : {
					bodyFontSize : 16,
				},
			}
		});
	};
</script>
