<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="item course-item">
	<div class="up-content">
			<h4>QUẢN TRỊ TRANG</h4>
	</div>
</div>
<div class="col-md-12">
	<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
	  <li class="nav-item active">
	    <a class="nav-link" id="dashboard-tab" data-toggle="tab" href="#dashboard" role="tab" aria-controls="dashboard" aria-selected="true" aria-expanded="true">Dashboard</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" id="account-tab" data-toggle="tab" href="#account" role="tab" aria-controls="account" aria-selected="false">Quản lí tài khoản</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" id="" data-toggle="tab" href="#web" role="tab" aria-controls="web" aria-selected="false">Cài đặt trang web</a>
	  </li>
	</ul>
	<div class="tab-content" id="myTabContent">
		  <div class="tab-pane fade active in" id="dashboard" role="tabpanel" aria-labelledby="dashboard-tab">
		  	<div class="col-md-12">
		  		<p>Thống kê ngày <input type="date"></p>
		  		<hr>
		  		<div class="col-md-4" align="center">
			  		<i class="fa fa-user rs"></i>
			  		<p><em class="numbercount">5000</em>lượt truy cập</p>
		  		</div>
		  		<div class="col-md-4" align="center">
			  		<i class="fa fa-file-text-o rs"></i>
			  		<p><em class="numbercount">100</em>bài viết mới</p>
		  		</div>
		  		<div class="col-md-4" align="center">
			  		<i class="fa fa-check-square-o rs"></i>
			  		<p><em class="numbercount">56</em>bài viết được xác nhận</p>
		  		</div>
		  	</div>
		  </div>
		  <div class="tab-pane fade" id="account" role="tabpanel" aria-labelledby="account-tab">
		  	<div class="col-md-12">
		  		account
		  	</div>
		  </div>
		  <div class="tab-pane fade" id="web" role="tabpanel" aria-labelledby="web-tab">
		  	<div class="col-md-12">
		  		web
		  	</div>
		  </div>

	</div>
</div>
