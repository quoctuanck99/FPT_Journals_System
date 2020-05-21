function clearDiv(selector){
	$(selector).remove();
}

$( document ).ready(function() {
	var i = 1;
	
    $("#addauthor").on("click",function(){
    	i = i+1;
    	var html = "<div class='panel-group' id='panel"+i+"'>"+
		"<div class='panel panel-default'>"+
			"<div class='panel-heading'>"+
				"<h4 class='author-title'>"+
					"<a data-toggle='collapse' href='#author"+i+"' >Tác giả "+i+"</a>"+
				"</h4>"+
				"<div class='btn-close'>"+
					"<i class='fa fa-times fa-2x' onclick='clearDiv(panel"+i+")'></i>"+
				"</div>"+
			"</div>"+
			"<div id='author"+i+"' class='panel-collapse collapse'>"+
				"<div class='edit-form'>"+
					"<form method='' action=''>"+
						"<div class='row'>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<b>Email <span class='require-field'>(*)</span></b>"+
							"</div>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<input type='email' name='email' class='form-control' aria-required='true' placeholder='Email'>"+
							"</div>"+
						"</div>"+
						"<div class='row'>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<b>Tên tác giả <span class='require-field'>(*)</span></b>"+
							"</div>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<input type='text' name='full-name' class='form-control' aria-required='true' placeholder='Nhập họ và tên'>"+
							"</div>"+
						"</div>"+
						"<div class='row'>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<b>Chức vụ <span class='require-field'>(*)</span></b>"+
							"</div>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<select class='form-control' name='title'>"+
									"<option>Dr.</option>"+
									"<option>Mrs.</option>"+
									"<option>Mr.</option>"+
								"</select>"+
							"</div>"+
						"</div>"+
						"<div class='row'>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<b>Quốc gia <span class='require-field'>(*)</span></b>"+
							"</div>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<input type='text' name='country' class='form-control' aria-required='true' placeholder='Nhập quốc tịch'>"+
							"</div>"+
						"</div>"+
						"<div class='row'>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<b>Địa chỉ <span class='require-field'>(*)</span></b>"+
							"</div>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<input type='text' name='address' class='form-control' aria-required='true' placeholder='Nhập địa chỉ'>"+
							"</div>"+
						"</div>"+
						"<div class='row'>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<b>Tổ chức <span class='require-field'>(*)</span></b>"+
							"</div>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<input type='text' name='organization' class='form-control' aria-required='true' placeholder='Nhập tổ chức'>"+
							"</div>"+
						"</div>"+
						"<div class='row'>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<b>Trang cá nhân</b>"+
							"</div>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<input type='text' name='profile' class='form-control' aria-required='false' placeholder='Facebook ....'>"+
							"</div>"+
						"</div>"+
						"<div class='row'>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<b>Điện thoại <span class='require-field'>(*)</span></b>"+
							"</div>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<input type='text' name='phone' class='form-control' aria-required='true'>"+
							"</div>"+
						"</div>"+
						"<div class='row'>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<b>Giới tính <span class='require-field'>(*)</span></b>"+
							"</div>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<input type='radio' name='gender' value='1'>"+
								"<label for='male'>Male</label> "+
								"<input type='radio' name='gender' value='0'> <label for='female'>Female</label>"+
							"</div>"+
						"</div>"+
						"<div class='row margin-20'>"+
							"<div class='col-md-10 col-md-push-1'>"+
								"<b><span class='require-field'>(*)</span> Những thông tin bắt buộc</b>"+
							"</div>"+
						"</div>"+
						"<div class='row'>"+
							"<div class='col-md-4 col-md-push-4'>"+
								"<div class='fjs-btn green'>"+
									"<button type='submit' class='btn btn-block'><i class='fa fa-save'></i>&nbsp;Lưu</button>"+
								"</div>"+
							"</div>"+
						"</div>"+
					"</form>"+
				"</div>"+
			"</div>"+
		"</div>"+
	"</div>";
    	$("#authorgroup").append(html);
    });
});