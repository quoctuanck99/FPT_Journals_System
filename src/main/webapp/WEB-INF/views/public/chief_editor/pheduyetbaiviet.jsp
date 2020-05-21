<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="item course-item">
	<div class="col-md-12 title-box">Phê duyệt bài viết</div>
</div>

<div class="row">
	<div class="col-md-12">
		<table id="tablepheduyet" class="display table-striped table-bordered"
			style="width: 100%; line-height: 30px;">
			<tbody>
				<tr>
					<td>Mã bản thảo</td>
					<td>Bài viết 1</td>
				</tr>
				<tr>
					<td>Trạng thái</td>
					<td>Chờ phê duyệt</td>
				</tr>
				<tr>
					<td>Tác giả</td>
					<td>Tác giả 3</td>
				</tr>
				<tr>
					<td>Loại bài báo</td>
					<td>Bài báo khoa học</td>
				</tr>
				<tr>
					<td>Tiêu đề</td>
					<td>Công nghệ đã thay đổi cuộc sống con người như thế nào?</td>
				</tr>
				<tr>
					<td>Tạp chí</td>
					<td>Ung dụng khoa học</td>
				</tr>
				<tr>
					<td>Mục</td>
					<td>Máy tính và trí tuệ nhân tạo</td>
				</tr>
				<tr>
					<td>Tóm tắt</td>
					<td>Việt Nam nghiên cứu vũ khí nguyên tử</td>
				</tr>
				<tr>
					<td>Từ khóa</td>
					<td>IoT,Technology</td>
				</tr>
				<tr>
					<td>Phản biện viên</td>
					<td>Ricardo</td>
				</tr>
				<tr>
					<td>File bản thảo</td>
					<td><a>script.docx</a></td>
				</tr>
				<tr>
					<td>File pdf</td>
					<td><a>script.pdf</a></td>
				</tr>
				<tr>
					<td colspan="2"><a href="#danhgia" data-toggle="modal"
						data-target="#danhgia">Đánh giá của người phản biện</a></td>
				</tr>
			</tbody>
		</table>

		<br>
		<div class="aprroval">
			<div class="col-md-6 margin-10">
				<b>Xác nhận phê duyệt bài viết</b>
			</div>
			<div class="col-md-3">
				<div class="fjs-btn blue " id="btn-send">
					<a id="approve" href="#pheduyet" class="btn btn-primary width"
						data-toggle="modal" data-target="#pheduyet"
						data-title="Xác nhận xuất bản bài viết bài viết">Xuất bản</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="fjs-btn red" id="btn-send">
					<a id="reject" href="#pheduyet" class="btn btn-primary width"
						data-toggle="modal" data-target="#pheduyet"
						data-title="Xác nhận reject bài viết">Reject</a>
				</div>
			</div>
		</div>

	</div>
</div>


<!-- modal pheduyet -->

<div class="modal fade" id="pheduyet">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title" id="text-title"></h4>
			</div>

			<div class="modal-body">
				<div class="row">
					<div class="col-md-12">
						<label id="messageLabel" for="message"><b>Ghi chú</b></label>
						<textarea class="form-control input-sm" id="message"
							placeholder="" rows="10"></textarea>
					</div>
				</div>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
				<button type="button" class="btn btn-danger">Đồng ý</button>
			</div>

		</div>
	</div>
</div>

<!-- modal danhgia -->
<div class="modal fade" id="danhgia">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Đánh giá của người phản biện</h4>
			</div>

			<div class="modal-body">
				<div class="row">
					<div class="col-md-12">
						<div class="comments-container">
							<ul>
								<li>
									<div class="comment-main-level">

										<div class="comment-box">
											<div class="comment-head">
												<h6 class="comment-name">
													<a href="#">Bài viết rất hay</a>
												</h6>
												<h6 class="comment-name">
													<a href="#"> - 13/03/2020</a>
												</h6>
											</div>
											<div class="comment-content">Lorem ipsum dolor sit
												amet, consectetur adipisicing elit. Velit omnis animi et
												iure laudantium vitae, praesentium optio, sapiente
												distinctio illo?</div>
										</div>
									</div>
								</li>
								<li>
									<div class="comment-main-level">
										<div class="comment-box">
											<div class="comment-head">
												<h6 class="comment-name">
													<a href="#">Bài viết rất hay</a>
												</h6>
												<h6 class="comment-name">
													<a href="#"> - 13/03/2020</a>
												</h6>
											</div>
											<div class="comment-content">Lorem ipsum dolor sit
												amet, consectetur adipisicing elit. Velit omnis animi et
												iure laudantium vitae, praesentium optio, sapiente
												distinctio illo?</div>
										</div>
									</div>
								</li>
							</ul>
						</div>

					</div>
				</div>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
			</div>

		</div>
	</div>
</div>







