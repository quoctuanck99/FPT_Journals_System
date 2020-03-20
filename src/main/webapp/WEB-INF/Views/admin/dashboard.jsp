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
	    <a class="nav-link" id="dashboard-tab" data-toggle="tab" href="#dashboard" role="tab" aria-controls="dashboard" aria-selected="true" aria-expanded="true" style="color:#ffffff !important">Dashboard</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" id="account-tab" data-toggle="tab" href="#account" role="tab" aria-controls="account" aria-selected="false" style="color:#ffffff !important">Quản lí tài khoản</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" id="" data-toggle="tab" href="#web" role="tab" aria-controls="web" aria-selected="false" style="color:#ffffff !important">Cài đặt trang web</a>
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
			  		<p><em class="numbercount">56</em>bài viết được phê duyệt</p>
		  		</div>
		  		<div class="col-md-12">
			  		<div class="canvas-hd">
			  			<canvas id="Piechart"></canvas>
			  		</div>
			  		<hr>
		  		</div>
		  		<div class="col-md-12" style="margin-top: 0px">
			  		<div class="canvas-hd">
			  			<canvas id="Linechart" style="width:100% !important ;height:400px !important;"></canvas>
			  		</div>
		  		</div>
		  	</div>
		  </div>
		  <div class="tab-pane fade" id="account" role="tabpanel" aria-labelledby="account-tab">
		  	<div class="col-md-12" style="margin-top: 10px">

		  	</div>
		  </div>
		  <div class="tab-pane fade" id="web" role="tabpanel" aria-labelledby="web-tab">
		  	<div class="col-md-12" style="margin-top: 10px">
		  		<div class="col-md-3">
					<div class="fjs-btn orange">
						<a href="#" style="color:#ffffff !important">Cài đặt hệ thống</a>
					</div>
		  		</div>
		  		<div class="col-md-9 border-left-ad">
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
		  	</div>
		  </div>

	</div>
</div>
<script>
var config = {
		type: 'pie',
		data: {
			datasets: [{
				data: [10,20,30],
				backgroundColor: [
					'rgb(255, 99, 132)',
					'rgb(255, 159, 64)',
					'rgb(255, 205, 86)'
				],
			}],
			labels: [
				'Lượt truy cập',
				'Bài viết mới',
				'Bài viết được phê duyệt'
			]
		},
	    options: {
			responsive: true,
			title: {
				display: true,
				text: 'Biểu đồ theo ngày',
				fontSize: 30
			},
			tooltips : {
				bodyFontSize: 28
			},
	        legend: {
	            display: true,
	            labels: {
	            	fontSize: 32,
	            	padding: 20
	            },
		        positon: 'left'
	        }
	    }

};
var configline = {
		labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July','August','September','October','November','December'],
		datasets: [{
			label: 'Lượt truy cập',
			borderColor: 'rgb(255, 99, 132)',
			backgroundColor: 'rgb(255, 99, 132)',
			fill: false,
			pointRadius: 5,
			pointHoverRadius: 10,
			data: [24,52,49,34,76,22,45,68,90,45,44,67],
			yAxisID: 'y-axis-1',
			}, {
				
			label: 'Số bài viết mới',
			borderColor: 'rgb(255, 159, 64)',
			backgroundColor: 'rgb(255, 159, 64)',
			fill: false,
			pointRadius: 5,
			pointHoverRadius: 10,
			data: [78,12,34,66,56,44,54,43,12,54,65,21],
			yAxisID: 'y-axis-2'				
			}, {
					
				label: 'Số bài viết được phê duyệt',
				borderColor: 'rgb(255, 205, 86)',
				backgroundColor: 'rgb(255, 205, 86)',
				fill: false,
				pointRadius: 5,
				pointHoverRadius: 10,
				data: [13,12,9,7,10,14,6,5,7,9,11,14],
				yAxisID: 'y-axis-2'
			}]
};
window.onload = function() {
	var ctx = document.getElementById('Piechart').getContext('2d');
	window.myPie = new Chart(ctx, config);
	
	var ctx2 = document.getElementById('Linechart').getContext('2d');
	window.myLine = Chart.Line(ctx2, {
		data: configline,
		options: {
			responsive: true,
			hoverMode: 'index',
			stacked: false,
			title: {
				display: true,
				text: 'Biểu đồ theo tháng',
				fontSize: 18
			},
			scales: {
				yAxes: [{
					type: 'linear', // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
					display: true,
					position: 'left',
					id: 'y-axis-1',
				}, {
					type: 'linear', // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
					display: true,
					position: 'right',
					id: 'y-axis-2',

					// grid line settings
					gridLines: {
						drawOnChartArea: false, // only want the grid lines for one axis to show up
					},
				}],
			},
	        legend: {
		        display: true,
	            labels: {
	                // This more specific font property overrides the global property
	                fontSize: 18,
	            }
	        },
			tooltips : {
				bodyFontSize: 16,
			},
		}
	});
};
</script>
