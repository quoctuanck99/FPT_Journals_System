<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
					<td colspan="2"><a>Đánh giá của người phản biện</a></td>
				</tr>
			</tbody>
		</table>

		<br>
		<div class="aprroval">
			<div class="col-md-6">
				<b>Xác nhận xuất bản bài viết</b>
			</div>
			<div class="col-md-3">
				<div class="fjs-btn blue " id="btn-send">
					<a href="#pheduyet" class="btn btn-primary" data-toggle="modal"
						data-target="#guitongbientap">Đồng ý</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="fjs-btn red" id="btn-send">
					<a href="#pheduyet" class="btn btn-primary" data-toggle="modal"
						data-target="#guitongbientap">Reject</a>
				</div>
			</div>
		</div>

	</div>
</div>

<!-- modal pheduyet -->
<div class="modal fade" id="pheduyet">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">Gửi bài viết cho tổng biên tập</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
				<button type="button" class="btn btn-danger">Đồng ý</button>
			</div>

		</div>
	</div>
</div>








