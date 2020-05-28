
app.controller('newsListCtrl',['$scope','$http'
    ,function ($scope,$http) {

    var pageNumber = 1;
    var pageCurrent = pageNumber;
    var pageNumber = 1;
   $scope.ltsCategory=[];
   $scope.labelAdd='ADD';
        $scope.category={};
    $scope.search={};
    $http.get(preUrl + "/system/category/search", {
        params: {
            p: pageNumber

        }
    })
        .then(function (response) {
            updatePage($scope, response);
        }, function (response) {
            /*call back*/
            toastr.error("Có lỗi trong quá trinh xử lý");
        });
        $http.get(preUrl + "/system/category/listCategory"
       )
            .then(function (response) {
                $scope.ltsCategory=response.data;
            }, function (response) {
                /*call back*/
                toastr.error("Có lỗi trong quá trinh xử lý");
            });
    $scope.loadPage=function (pageNumber) {
        $http.get(preUrl + "/system/category/search", {
            params: {
                p: pageNumber
                ,name:$scope.search.name
            }
        })
            .then(function (response) {
                updatePage($scope, response);
            }, function (response) {
                /*call back*/
                toastr.error("Có lỗi trong quá trinh xử lý");
            });
    }
    function updatePage($scope, response) {

        if (response != null && response != 'undefined' && response.status == 200) {
            $scope.page = response.data;
            $scope.page.pageList = getPageList($scope.page);
            $scope.page.pageCount = getPageCount($scope.page);
        }
    }

        $scope.modalAdd=function () {
            $scope.category={};
            $scope.labelAdd='ADD';
            $("#modalAdd").modal();
        }
        $scope.openEdit=function(item){
            $scope.labelAdd='EDIT';
            $scope.category=angular.copy(item);
            $("#modalAdd").modal();

        }
        $scope.xacNhanEdit=function () {
            var auctioneerJson = JSON.parse(JSON.stringify($scope.category));
            $http.post(preUrl + "/system/category/edit", auctioneerJson, {headers: {'Content-Type': 'application/json'}})
                .then(function (response) {
                    if(response.data==true){
                        updatePage($scope, response);
                        $scope.loadPage(1);
                        toastr.success("Thành công!");

                        $("#modalXacNhan").modal('hide');
                        $("#modalAdd").modal('hide');


                    }else {
                        toastr.error("Có lỗi xảy ra!");

                    }
                })
        }
        $scope.modalLuu=function () {

                $('#modalXacNhan').modal('show');

        }
        $scope.modalLuuEdit=function () {

                $('#modalXacNhan').modal('show');

        }
        $scope.openDel=function (item) {
            $scope.category=item;
            $("#deleteItem").modal();
        }
        $scope.delete=function () {
            var auctioneerJson = JSON.parse(JSON.stringify($scope.category));
            $http.post(preUrl + "/system/category/delete", auctioneerJson, {headers: {'Content-Type': 'application/json'}})
                .then(function (response) {
                    if(response.data==true){
                        updatePage($scope, response);
                        $scope.loadPage(1);
                        toastr.success("Thành công!");

                    }else {
                        toastr.error("Có lỗi xảy ra!");

                    }
                })
        }
        $scope.xacNhan=function () {
            var auctioneerJson = JSON.parse(JSON.stringify($scope.category));
            $http.post(preUrl + "/system/category/add", auctioneerJson, {headers: {'Content-Type': 'application/json'}})
                .then(function (response) {
                    if(response.data==true){
                        updatePage($scope, response);
                        $scope.loadPage(1);
                        toastr.success("Thành công!");
                        $scope.category={}
                        $("#modalXacNhan").modal('hide');
                        $("#modalAdd").modal('hide');

                    }else {
                        toastr.error("Có lỗi xảy ra!");

                    }
                })
        }
        $scope.closeXN=function () {
            $scope.spk={};
            $scope.spk.status=0;
            $("#modalXacNhan").modal('hide');
        }

}]);