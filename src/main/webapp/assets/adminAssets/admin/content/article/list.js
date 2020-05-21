/**
 * Created by Admin on 12/22/2017.
 */
app.controller('newsListCtrl',['$scope','$http'
    ,function ($scope,$http) {
        $scope.name="";
        $scope.page=page;
        $scope.listCate="";

        $scope.searchCondition={name:$scope.name, categoryId:$scope.categoryId}

        $http.get(preUrl+"/admin/content/article/list/search", {params: {name:$scope.name}})
            .then(function (response) {
                if(response!=null && response!='undefined' && response.status==200){
                    $scope.page=response.data;
                    $scope.page.pageCount=getPageCount($scope.page);
                    $scope.page.pageList=getPageList($scope.page);
                }
            });

        $scope.search=function () {
            $scope.page.pageNumber=1;
            $http.get(preUrl+"/admin/content/article/list/search", {params: {name:$scope.searchCondition.name,categoryId:$scope.searchCondition.categoryId}})
                .then(function (response) {
                    if(response!=null && response!='undefined' && response.status==200){
                        $scope.page=response.data;
                        $scope.page.pageCount=getPageCount($scope.page);
                        $scope.page.pageList=getPageList($scope.page);
                    }
                });
        };

        $scope.loadPage=function (pageNumber) {
            if(pageNumber>=1){
                $http.get(preUrl+"/admin/content/article/list/search", {params: {p:pageNumber,name:$scope.searchCondition.name,categoryId:$scope.searchCondition.categoryId}})
                    .then(function (response) {
                        $scope.page=response.data;
                        $scope.page.pageList=getPageList($scope.page);
                        $scope.page.pageCount=getPageCount($scope.page);
                    });
            }

        };
        var idDelete=0;
       $scope.xoa=function (idxoa) {
           idDelete=idxoa;
              $("#modalxoa").modal();


       }
       $scope.comfimXoa=function () {
           $http.get(preUrl+"/admin/content/article/delete", {params: {id:idDelete}})
               .then(function (response) {
                   $scope.loadPage(1);
                   $scope.page.pageCount=getPageCount($scope.page);
                   $("#modalxoa").modal("hide");
                   toastr.success("Xóa thành công!");
               });
       }



    }]);