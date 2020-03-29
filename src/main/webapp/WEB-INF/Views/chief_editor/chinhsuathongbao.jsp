 <%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	
</head>
<body>
<h3>Chỉnh sửa thông báo</h3>
<div>
<div class="col-md-6">
		<b>COMMON PARAGRAPH:</b>
		<p class="p-2">For starters, lorem ipsum isn’t just some wacky
			text-thingy with no meaning whatsoever. These words have been derived
			from the Latin phrase ‘dolorem ipsum’ which translates to ‘pain
			itself’. Lorem Ipsum is a placeholder text used to illustrate graphic
			features by publishers and graphic designers. It is a pseudo-Latin
			text used instead of English in web design, typography, layout and
			printing to emphasize elements of design over content. It is also
			called the text (or filler) of the placeholder. It’s a handy tool for
			mock-ups. This helps define a text or presentation’s visual elements,
			such as typography, font, or format.</p>
	<button style="font-size: 20px">

					<a href="" style="color:black;"
						data-toggle="modal" data-target="#myModal"><button type="button" class="btn btn-primary">Sửa</button></a>

				</button>
				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel">

					<div class="modal-dialog modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">
									<center>Chỉnh sửa thông báo </center>
								</h4>
							</div>
							<div class="modal-body">
								<div class="row">

									<div class="col-md-12">
										<table id="table" class="display table-striped table-bordered"
											style="width: 100%; line-height: 30px;">
											<input class="search-input" type="text" id="" name="s"
						placeholder="Nhap bai viet" value="">

										</table>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Huỷ</button>
								<button type="button" class="btn btn-primary">Xác nhận</button>
							</div>
						</div>
					</div>

				</div>
</div>
 </div>
</body>
</html>