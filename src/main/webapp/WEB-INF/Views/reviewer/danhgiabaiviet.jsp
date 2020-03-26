<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="article">
	<div class="title-box">Bài viết</div>
	<h4 class="review-title">Công nghệ đã thay đổi cuộc sống của con
		người như thế nào?</h4>
	<p>
		Tác giả: <a href="#">Tác giả 1</a>
	</p>
	<p>
		Tạp chí: <a href="#">Khoa học - công nghệ</a>
	</p>
	<p>
		Ngày nhận bài: <a href="#">13/03/2020</a>
	</p>
</div>

<div class="row">
	<div class="col-md-12">
		<div class="pdf">
			<iframe id="fred"
				src="https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf"
				frameborder="1" scrolling="auto" height="800px" width="100%"></iframe>
			<span class="help-block">PDF Online xem thử</span>
		</div>
	</div>

	
</div>

<div class="comments-container">
	<h4>Đánh giá của người phản biện</h4>
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
					<div class="comment-content">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit. Velit omnis animi et iure laudantium
						vitae, praesentium optio, sapiente distinctio illo?</div>
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
					<div class="comment-content">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit. Velit omnis animi et iure laudantium
						vitae, praesentium optio, sapiente distinctio illo?</div>
				</div>
			</div>
		</li>
	</ul>
</div>

<div class="row">
	<div class="col-md-2" id="btn-comment">
		<div class="">
			<a href="#themphanbien" class="modaal">Thêm phản biện</a>
		</div>
	</div>
	<div class="col-md-10">
		<div class="fjs-btn blue " id="btn-send">

			<a href="#guitongbientap" class="btn btn-primary" data-toggle="modal"
				data-target="#guitongbientap">Gửi tổng biên tập</a>
		</div>
	</div>

</div>

<div id="themphanbien" hidden>
	<form action="" method="post">
		<div class="form-group col-md-12">
			<label id="messageLabel" for="message">Nội dung phản biện </label>
			<textarea class="form-control input-sm" id="message" placeholder=""
				rows="20"></textarea>
		</div>
		<br style="clear: both">
		<div class="form-group col-md-2" id="sendComment">
			<button class="form-control input-sm btn btn-success disabled"
				id="btnSubmit" name="btnSubmit" type="submit">Gửi</button>
		</div>

	</form>
</div>

<div class="modal fade" id="guitongbientap">
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



