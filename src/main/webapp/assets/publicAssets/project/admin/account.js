
var app = angular.module("FrameworkBase", []);
app.controller('frameworkCtrl', ['$scope', '$http', function ($scope, $http) {

    var pageNumber = 1;
    var pageCurrent = pageNumber;
    var pageNumber = 1;
    $scope.search={name:null,status:null,roles:null};


    $scope.loadPage=function (pageNumber) {
        console.log($scope.search)
        $http.get(preUrl + "/quan-tri-nguoi-dung", {
            params: {
                p: pageNumber
            }
        })
            .then(function (response) {
                updatePage($scope, response);
            }, function (response) {
                /*call back*/
            });
    }
    $scope.searchUser=function (pageNumber) {
        console.log($scope.search)
        $http.get(preUrl + "/search-nguoi-dung", {
            params: {
                p: pageNumber
                ,name: $scope.search.name
                ,status: $scope.search.status
                ,role: $scope.search.roles
            }
        })
            .then(function (response) {
                updatePage($scope, response);
            }, function (response) {
                /*call back*/
            });
    }
$scope.addUser=function () {
    $http.post(preUrl + "/addUser",$scope.account, {headers: {'Content-Type': 'application/json'}})
        .then(function (response) {
            $scope.loadPage(1);
            alert("Thêm mới thành công!");
            $("#new-account").modal('hide');
            updatePage($scope, response);
        });
}

}]);