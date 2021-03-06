<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<div class="col-md-12">
		<div>
			<a style="color: #d91655">Science</a>
			<p class="title1" style="font-size: 20px">Thermal Behavior of
				Green Cellulose-Filled Thermoplastic Elastomer Polymer Blends</p>
			<h6>
				Tác giả: <a class="author"> Thomas Edison</a>
			</h6>
			<h6>
				Tạp chí:<a class="a"> Khoa học</a>
			</h6>
			<h6>
				Thể loại: <a class="a"> Công nghệ</a>
			</h6>
			<h6>
				Ngày đăng:<a class="a"> 18/03/2020</a>
			</h6>

			<br> <a>Nội dung: </a> <br>
			<div class="row">
				<div class="col-md-12">
					<div class="pdf">
						<iframe id="fred"
							src="https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf"
							frameborder="1" scrolling="auto" height="800px" width="100%"></iframe>

					</div>
				</div>


			</div>
			<br>
		</div>
	</div>
	<div class="comments-container">
		<p>
		<h6>
			<button>
				<a herf="" class="fa fa-download"></a> Tải bản đầy đủ
			</button>
		</h6>
		</p>
		<hr>
		<br>
		<h5>
			Phân công người phản biện
			<button style="font-size: 20px">

				<a href="" class="fa fa-plus" style="color: green"
					data-toggle="modal" data-target="#myModal"></a>

			</button>
	</div>
<br>
<div class="row">
		<div class="group-button">
			<div class="col-md-3">
				<div class="fjs-btn green" id="btn-save">
					<a href="#">Lưu</a>
			  </div>
      </div> 
		<div class="col-md-4">
			<div class="fjs-btn red">
				<a href="#" data-toggle="modal" data-target="#myModal1">Reject</a>
			</div>
		</div>
   </div>
</div>
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">

		<div class="modal-dialog modal-md" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">
						<center>Phân công người phản biện</center>
					</h4>
				</div>
				<div class="modal-body">
					<div class="row">

						<div class="col-md-12">
							<table id="table" class="display table-striped table-bordered"
								style="width: 100%; line-height: 30px;">
								<thead>
									<tr>
										<th>Chọn</th>
										<th>STT</th>
										<th>Username</th>
										<th>Họ tên</th>
										<th>Đơn vị</th>
										<th>Chức vụ</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td><input id="ceditor" type="checkbox"></td>
										<td>1</td>
										<td>namlt</td>
										<td>Trung Nam</td>
										<td>ABC</td>
										<td>ABC</td>


									</tr>
								</tbody>
								<tbody>
									<tr>
										<td><input id="ceditor" type="checkbox"></td>
										<td>1</td>
										<td>namlt</td>
										<td>Trung Nam</td>
										<td>ABC</td>
										<td>ABC</td>


									</tr>
								</tbody>
								<tbody>
									<tr>
										<td><input id="ceditor" type="checkbox"></td>
										<td>1</td>
										<td>namlt</td>
										<td>Trung Nam</td>
										<td>ABC</td>
										<td>ABC</td>


									</tr>
								</tbody>
								<tbody>
									<tr>
										<td><input id="ceditor" type="checkbox"></td>
										<td>1</td>
										<td>namlt</td>
										<td>Trung Nam</td>
										<td>ABC</td>
										<td>ABC</td>


									</tr>
								</tbody>


							</table>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Huỷ</button>
					<button type="button" class="btn btn-primary">Xác nhận</button>
				</div>
			</div>
		</div>

	</div>
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">

		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h5 class="modal-title" id="myModalLabel">
						<center>Bài viết bị reject vì lý do:</center>
					</h5>

				</div>
				<div class="modal-body">
					<div class="modal_info" >
						
							<p>
								<input id="r1" type="radio" name="radio" value="1"> <label
									for="r1">Bài viết vi phạm bản quyền</label>
							</p>
							<p>
								<input id="r2" type="radio" name="radio" value="1"> <label
									for="r1">Bài viết bị trùng</label>
							</p>
							<p>
								<input id="r3" type="radio" name="radio" value="1"> <label
									for="r1">Bài viết sai chuyên đề</label>
							</p>
							<p>
								<input id="r4" type="radio" name="radio" value="1"> <label
									for="r1">Nội dung không phù hợp</label>
							</p>
							<p>
								<input id="r5" type="radio" name="radio" value="1"> <label
									for="r1">Lý do khác</label>
							</p>
						
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
					<button type="button" class="btn1 btn-primary" >Reject</button>
				</div>
			</div>
		</div>

	</div>