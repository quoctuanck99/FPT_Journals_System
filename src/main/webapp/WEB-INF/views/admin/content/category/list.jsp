<%@ page isELIgnored="false" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script
	src="<%=request.getContextPath()%>/assets/adminAssets/admin/content/category/list.js"></script>

<section id="content" ng-app="sansimso" ng-controller="newsListCtrl">
	<section class="vbox">
		<section class="scrollable padder" style="background: white">
			<ul
				class="breadcrumb breadcrumb no-border no-radius b-b b-light pull-in">
				<li><a href="javascript:void(0)">Quản lý danh mục </a></li>
			</ul>
			<section class="panel panel-default">
				<header class="panel-heading">

					<a href="javascript:void(0)"
						class="btn btn-primary" ng-click="modalAdd()">Thêm mới</a>

				</header>
				<div class="panel-body" ng-show="!flagOpenAdvanceSearch"
					id="collapseAdvanceSearch" class="panel-collapse collapse in">



					<div class="row" style="padding-top: 1%; padding-bottom: 1%">
						<div class="col-md-12">
							<div class="col-sm-2" style="margin-top: 5px;">
								<label>Tên danh mục</label>
							</div>
							<div class="col-sm-3">

								<input ng-model="search.name" my-enter="loadPage(1)"
									name="startDate" class="input-sm form-control" />

								
									
							
							</div>
							<div class="col-md-3 text-center">
								<button ng-click="loadPage(1)" my-enter="loadPage(1)"
									class="btn btn-info btn-sm">
									<i class="fa fa-search"></i>&nbsp;Tìm kiếm
								</button>


							</div>


							<div class="col-sm-1"></div>


						</div>
					</div>


					<!-- <div class="row" style="padding-top: 1%; padding-bottom: 1%">
						<div class="col-md-12 text-center">
							<button ng-click="loadPage(1)" my-enter="loadPage(1)"
								class="btn btn-info btn-sm">
								<i class="fa fa-search"></i>&nbsp;Tìm kiếm
							</button>


						</div>

					</div> -->

				</div>
			</section>
			<div class="table-responsive table-overflow-x-fix">

				<table id="tblGroup" class="table table-striped m-b-none">
					<thead>
						<tr>
							<th style="width: 2%">STT</th>
							<th>Tên danh mục</th>
							<th>Danh mục cha</th>
							<th style="text-align: center">Hoạt động</th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="item in page.items track by $index">
							<td class="align-center" style="width: 20px;">{{(page.pageNumber-1)*page.numberPerPage
								+ $index+1}}</td>
							<td>{{item.name}}</td>
							<td>{{item.categoryName==null?'Không':item.categoryName}}</td>
							<td class="align-center">
								<div class="btn-group">
									<button class="btn btn-default btn-xs dropdown-toggle"
										data-toggle="dropdown">
										<i class="fa fa-th-list"></i>
									</button>
									<ul class="dropdown-menu pull-right">

										<li ng-click="openEdit(item)">Sửa</li>
										<div class="line line-dashed m-b-none m-t-none"></div>
										<li ng-click="openDel(item)">Xóa</li>
										<div class="line line-dashed m-b-none m-t-none"></div>

									</ul>
								</div>
							</td>

						</tr>

					</tbody>
				</table>
			</div>
			<footer class="panel-footer">
				<div class="row">
					<div class="col-sm-12 text-right text-center-xs">
						<div class="col-sm-6 text-left">
							<span>Tổng số <code>{{page.rowCount}}</code>dữ liệu
							</span>
						</div>
						<div class="col-sm-6">
							<ul class="pagination pagination-sm m-t-none m-b-none">
								<li ng-if="page.pageNumber>1"><a href="javascript:void(0)"
									ng-click="loadPage(1)">«</a></li>
								<li ng-repeat="item in page.pageList"><a
									href="javascript:void(0)" ng-if="item==page.pageNumber"
									style="color: mediumvioletred;"> {{item}}</a> <a
									href="javascript:void(0)" ng-if="item!=page.pageNumber"
									ng-click="loadPage(item)"> {{item}}</a></li>
								<li ng-if="page.pageNumber<page.pageCount"><a
									href="javascript:void(0)" ng-click="loadPage(page.pageCount)">»</a>
								</li>
							</ul>
						</div>

					</div>
				</div>
			</footer>


		</section>
		<div class="modal fade" id="modalAdd" role="dialog"
			aria-labelledby="myModalLabel1" aria-hidden="true"
			data-keyboard="false" data-backdrop="static">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header"
						style="padding: 7px; background-color: #027DB4;; border-radius: 4px 4px 0 0;">
						<button type="button" style="color: red;" class="close"
							data-dismiss="modal" aria-hidden="true">&times;</button>

						<h6 class="modal-title font-weight-bold" id="myModalLable1"
							style="background-color: #027DB4; border-radius: 4px 4px 0 0; color: white;"
							ng-if="labelAdd=='ADD'">Thêm</h6>

					</div>



					<div
						style="text-align: center; text-align: center; padding-top: 10px; padding-bottom: 10px; font-size: 19px; color: #027DB4;"
						ng-if="labelAdd=='ADD'">Thêm</div>
					<div
						style="text-align: center; text-align: center; padding-top: 10px; padding-bottom: 10px; font-size: 19px; color: #027DB4;"
						ng-if="labelAdd=='EDIT'">Sửa</div>
					<form id="form-save">
						<div class="modal-body" style="padding: 10px;">
							<section class="panel panel-default">

								<div class="row" style="padding-top: 1%; padding-bottom: 1%">
									<div class="col-md-12">
										<div class="col-sm-2">
											<label>Tên danh mục </label>
										</div>
										<div class="col-sm-10">
											<input ng-model="category.name" maxlength="100"
												class="input-sm form-control" required="required"
												data-parsley-trigger="change" data-parsley-required="true" />
										</div>

									</div>
								</div>
								<div class="row" style="padding-top: 1%; padding-bottom: 1%">
									<div class="col-md-12">


										<div class="col-sm-2" ng-if="labelAdd!='EDIT'">
											<label>Danh mục cha</label>
										</div>
										<div class="col-sm-10">
											<select class="form-control" ng-model="category.root"
												ng-if="labelAdd!='EDIT'">
												<option value="">Chọn danh mục cha</option>
												<option ng-repeat="item in ltsCategory track by $index"
													value="{{item.id}}">{{item.name}}</option>

											</select>



										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-5"></div>
									<div class="col-sm-6">
										<button data-toggle="modal" ng-click="modalLuu()"
											ng-if="labelAdd=='ADD'" class="btn btn-primary">
											<i class="fa fa-save"></i>Lưu
										</button>
										<button data-toggle="modal" ng-click="modalLuuEdit()"
											ng-if="labelAdd=='EDIT'" class="btn btn-primary">
											<i class="fa fa-save"></i>Lưu
										</button>
										<button type="button" class="btn btn-danger"
											data-dismiss="modal">
											<i class="fa fa-times"></i>Hủy
										</button>



									</div>
								</div>

							</section>

						</div>
					</form>
					<div class="modal fade" id="modalXacNhan" tabindex="-1"
						role="dialog" aria-labelledby="unconfirmVerify" aria-hidden="true"
						aria-label="Close">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header alert-danger"
									style="border-radius: 4px 4px 0 0;">
									<button type="button" class="close" class="btn btn-default"
										ng-click="closeXN()" aria-hidden="true">&times;</button>
									<h4 class="modal-title">Thông báo</h4>
								</div>
								<div class="modal-body">
									<label>Bạn có đồng </label>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary"
										ng-click="xacNhanEdit()" ng-if="labelAdd=='EDIT'"
										style="text-transform: none;">
										<i class="fa fa-check"></i>Lưu
									</button>
									<button type="button" class="btn btn-primary"
										ng-click="xacNhan()" ng-if="labelAdd=='ADD'"
										style="text-transform: none;">
										<i class="fa fa-check"></i>Lưu
									</button>
									<button type="button" class="btn btn-danger"
										ng-click="closeXN()">
										<i class="fa fa-times"></i>
									</button>
								</div>
							</div>
						</div>
					</div>




				</div>
			</div>
		</div>
		<div class="modal fade" id="deleteItem" role="dialog"
			aria-labelledby="myModalLabel1" aria-hidden="true">
			<div class="modal-dialog" style="max-width: 500px;">
				<div class="modal-content" style="max-width: 500px;">
					<div class="modal-header" style="padding: 7px;">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h5 class="modal-title" id="myModalLable">Xóa</h5>
					</div>
					<div class="modal-body" style="padding: 10px;">
						<div class="form-group">
							<label class="control-label">Có chắc chắn xóa</label> <input
								name="id" type="hidden" class="form-control info_id" />
						</div>

					</div>
					<div class="modal-footer" style="padding: 10px;">
						<button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
						<button type="submit" class="btn btn-danger" ng-click="delete()">Xóa</button>
					</div>
				</div>
			</div>
		</div>
	</section>

</section>
<script>
	$(document).ready(function() {
		$('#startgendate2').datetimepicker({
			format : 'DD/MM/YYYY'
		});

	});

	$(document).ready(function() {

		$('#endgendate2').datetimepicker({
			format : 'DD/MM/YYYY'
		});

	});
	$(document).ready(function() {
		$('#laststart2').datetimepicker({
			format : 'DD/MM/YYYY'
		});

	});

	$(document).ready(function() {

		$('#lastend2').datetimepicker({
			format : 'DD/MM/YYYY'
		});

	});
</script>
