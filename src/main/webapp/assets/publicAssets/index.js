/**
 * Created by Admin on 12/22/2017.
 */
app.controller('indexController', ['$scope', '$http'
    , function ($scope, $http) {
        $scope.customer = {};
        $scope.comfirmPassword = "";
        $scope.load={};
        $scope.dsKM=[];
       $scope.reset={};

        clearData();
        $scope.checkSD="YES";

        $(window).on('load', function () {
            console.log($("#modalCustomer").val());
            if (!isNullString($("#modalCustomer").val())) {
                $('#change-password').modal('show');
            }
        });
        $scope.addCustomer = function () {
            if (isNullString($scope.customer.username)) {
                toastr.error("Tài khoản đăng nhập không được bỏ trống");
            }
            else if (hasUnicode($scope.customer.username) || hasSpace($scope.customer.username)) {
                toastr.error("Tài khoản phải viết liền không dấu")
            }
            else if (isNullString($scope.customer.password)) {
                toastr.error("Mật khẩu không được bỏ trống")
            }
            else if ($scope.customer.password.length < 7) {
                toastr.error("Mật khẩu phải lớn hơn 8 ký tự");
            }
            else if (isNullString($scope.confirmPassword)) {
                toastr.error("Xác nhận mật khẩu không được bỏ trống");
            }
            else if ($scope.confirmPassword != $scope.customer.password) {
                toastr.error("Mật khẩu không khớp");
            }
            else if (isNullString($scope.customer.email)) {
                toastr.error("Email không được bỏ trống");
            }
            else if (emailIsValid($scope.customer.email) === false) {
                toastr.error("Email không hợp lệ");
            }
            else
            {
                $http.post(preUrl + "/register", $scope.customer, {headers: {'Content-Type': 'application/json'}})
                    .then(function (response) {
                        if (response.data === true) {
                            toastr.error("Tài khoản đã tồn tại")
                        } else {
                            clearData();
                            toastr.success("Đăng ký thành công");
                            $("#register").modal('hide');
                        }
                    });
            }
        }

        function emailIsValid(email) {
            return /\S+@\S+\.\S+/.test(email);
        }


        function hasUnicode(str) {
            for (var i = 0; i < str.length; i++) {
                if (str.charCodeAt(i) > 127) return true;
            }
            return false;
        }

//hàm check chuỗi có bao gồm bấy kỳ khoảng trắng nào k?
        function hasSpace(str) {
            if (/\s/.test(str)) {
                // It has any kind of whitespace
                return true;
            }
            return false;
        }

        $scope.resetPass = function (){
        if (isNullString($scope.customer.username)) {
            toastr.error("Tài khoản đăng nhập không được bỏ trống");
        }
        else if (isNullString($scope.customer.email)) {
            toastr.error("Email không được bỏ trống");
        }
        else if (emailIsValid($scope.customer.email) === false) {
            toastr.error("Email không hợp lệ");
        }else{
            $http.get(preUrl + "/reset", {params: {name: $scope.customer.username, email: $scope.customer.email}})
                .then(function (response) {
                    if (!isNullString(response.data)) {
                        console.log(response.data)
                        toastr.success("Vui lòng kiểm tra email của bạn!");

                        $("#reset-password").modal('hide');
                        clearData();
                    } else {
                        toastr.error("Tài khoản hoặc email không đúng");
                    }
                });
        }}

        $scope.changePassword=function () {
            var code=$("#modalCustomer").val();
            $scope.customer.code=code;
            if (isNullString($scope.customer.password)) {
                toastr.error("Mật khẩu không được bỏ trống")
            }
            else if ($scope.customer.password.length < 7) {
                toastr.error("Mật khẩu phải lớn hơn 8 ký tự");
            }
            else if (isNullString($scope.confirmPassword)) {
                toastr.error("Xác nhận mật khẩu không được bỏ trống");
            }
            else if ($scope.confirmPassword != $scope.customer.password) {
                toastr.error("Mật khẩu không khớp");
            }else {
            $http.post(preUrl + "/resetPassword", $scope.customer, {headers: {'Content-Type': 'application/json'}})
                .then(function (response) {
                    if (response.data === true) {
                        clearData();
                        toastr.success("Thay đổi mật khẩu thành công");
                        $("#change-password").modal('hide');
                    } else {
                        toastr.error("Đã có lỗi xảy ra! Vui Lòng thử lại");
                    }
                });}
        }
        $scope.login=function () {
            if (isNullString($scope.customer.username)) {
                toastr.error("Tài khoản đăng nhập không được bỏ trống");
            } else if (isNullString($scope.customer.password)) {
                toastr.error("Mật khẩu không được bỏ trống")
            }
            else {
            $http.post(preUrl + "/login", $scope.customer, {headers: {'Content-Type': 'application/json'}})
                .then(function (response) {
                    if (!isNullString(response.data)) {
                        $("#login").modal('hide');
                        window.location.href=preUrl+"/thongtintaikhoan.html";
                    } else {
                        toastr.error("Tài khoản hoặc mật khẩu không đúng");
                    }
                });}

        }
        $scope.napCard=function () {
            var v = grecaptcha.getResponse();
            if(v.length == 0)
            {
                alert("Bạn phải xác minh");
            }
            else
            {
                $scope.load.username=$("#userloadcard").val();
                if(isNullString($scope.load.cardType)){
                    toastr.error("Bạn chưa chọn nhà mạng");
                }else if(isNullString($scope.load.valuecard)) {
                    toastr.error("Bạn chọn giá trị thẻ");
                }else if(isNullString($scope.load.pin)){
                    toastr.error("Mã pin không được bỏ trống");
                }
                else if(isNullString($scope.load.seri)){
                    toastr.error("Seri không được bỏ trống");
                }else{
                    $http.post(preUrl + "/loadCard", $scope.load, {headers: {'Content-Type': 'application/json'}})
                        .then(function (response) {
                            if (!isNullString(response.data)) {
                                if(response.data=="200"){
                                    alert("Nạp thẻ thành công!");
                                    window.location.href=preUrl+"/thongtintaikhoan.html";
                                }
                                if(response.data=="404"){
                                    toastr.error("Nạp thẻ thất bại Vui lòng liên hệ với quản trị viên!");
                                }
                            }
                        });
                }
            }




            console.log($scope.load);
        }
        $scope.change=function () {
            if($scope.checkSD!='YES'){
            $http.get(preUrl + "/ltsKM",{params: {code:$scope.load.cardType}})
                .then(function (response) {
                    if (!isNullString(response.data)) {
                        $scope.dsKM=response.data;
                        console.log($scope.dsKM);
                    } else {
                    }
                });}
        }
        function clearData() {
            $scope.customer = {username:null,email:null,password:null};
            $scope.confirmPassword=null;
            $scope.reset={oldpassword:null,newpassword:null};
            $scope.load={cardType:null,code:null,pin:null,seri:null,valuecard:null}
            document.getElementById("disableCardType").disabled = false;
            document.getElementById("disableCode").disabled = false;
        }
        $scope.changPass=function () {
            if(isNullString($scope.reset.oldpassword)){
                toastr.error("Mật khẩu cũ không được bỏ trống");
            }else if(isNullString($scope.reset.newpassword)){
                toastr.error("Mật khẩu mới không được bỏ trống");
            } else if ($scope.reset.newpassword.length < 7) {
                toastr.error("Mật khẩu phải lớn hơn 8 ký tự");
            }
            else if (isNullString($scope.confirmPassword)) {
                toastr.error("Xác nhận mật khẩu không được bỏ trống");
            }
            else if ($scope.confirmPassword != $scope.reset.newpassword) {
                toastr.error("Mật khẩu không khớp");
            }else {
                $http.get(preUrl + "/changePassWord", {params: {oldpassword: $scope.reset.oldpassword, newpassword: $scope.reset.newpassword}})
                    .then(function (response) {
                        if (!isNullString(response.data)) {
                            if(response.data=="200"){
                            toastr.success("Đổi password thành công")
                                $("#chage").modal();
                            }else {
                                toastr.error("Thất bại vui lòng liên hệ với quản trị viên");
                            }
                        }

            });

        }}
        $scope.useItem=function (id) {

                $http.get(preUrl + "/useItem", {params: {Id:id}})
                    .then(function (response) {
                        if (!isNullString(response.data)) {
                            if(response.data=="200"){
                                alert("Nhận vật phẩm thành công! Truy cập vào game để lấy vật phẩm!");
                                window.location.href=preUrl+"/thongtintaikhoan.html";
                                $("#chage").modal();
                            }else if(response.data=="402") {
                                toastr.error("Không thể nhận vật phẩm này! vì có vật phẩm trong game chưa sử dụng");
                            }else if(response.data=="404"){
                                toastr.error("Vật phẩm không tồn tại");
                            }
                        }

                    });

            }
        $scope.openKM=function (item,cardType) {
            grecaptcha.reset();
            $scope.checkSD='YES';
            $scope.load.username=$("#userloadcard").val();
            clearData();
            $scope.load.code=item;
            if(cardType=='ALL'){
                $scope.load.cardType="";
            }else{
            $scope.load.cardType=cardType;
                document.getElementById("disableCardType").disabled = true;
            }

            $http.get(preUrl + "/ltsKM",{params: {code:cardType}})
                .then(function (response) {
                    if (!isNullString(response.data)) {
                        $scope.dsKM=response.data;
                        console.log($scope.dsKM);
                    } else {
                    }
                });
            document.getElementById("disableCode").disabled = true;
            $("#loadcard").modal();
        }
        $scope.openLogin = function () {
            clearData();
            $("#login").modal();
        }
        $scope.openLoad = function () {
            grecaptcha.reset();
            $scope.checkSD='NO';
            $scope.load.username=$("#userloadcard").val();
            if(isNullString($scope.load.username)){
                toastr.error("Vui lòng đăng nhập trước khi nạp thẻ!");
            }else {
                clearData();
            $("#loadcard").modal();}
        }
        $scope.openReset = function () {
            clearData();
            $("#reset-password").modal();
        }

        $scope.openChange=function () {
            clearData();
            $("#chage").modal();
        }
        $scope.openRegister = function () {
            clearData();
            $("#register").modal();
        }

    }]);