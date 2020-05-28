app.controller('homeController', ['$scope', '$http', function ($scope, $http) {
    $scope.listCategory=[];
    $http.get(preUrl + "/danhmuc/list", {

    })
        .then(function (response) {
            $scope.listCategory=response.data;
        }, function (response) {
            /*call back*/
            toastr.error("Có lỗi trong quá trinh xử lý");
        });


}]);