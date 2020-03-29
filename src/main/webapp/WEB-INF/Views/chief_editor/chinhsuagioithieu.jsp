 <%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	
</head>
<body>
<h3>Chỉnh sửa giới thiệu</h3>
<div>
<h5>London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.</h5>
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
									<center>Chỉnh sửa giới thiệu</center>
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

			</h5>
 </div>
</body>
</html>