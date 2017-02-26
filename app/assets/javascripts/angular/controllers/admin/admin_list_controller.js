'use-strict'

angular.module("adminApp")
  .controller("AdminListController", ['$scope', '$location', 'adminservice', AdminListController]);

function AdminListController($scope, $location, adminservice){
  $scope.params = {
    limit: parseInt($location.search().limit),
    page: $location.search().page
  }

  $scope.refreshAdminList = function(resetPage){
    if (resetPage){
      $scope.params.page = 1;
    }
    var params = angular.extend({}, $scope.params)
    adminservice.getAdminList(params).then(function(res){
      angular.extend($scope, res);

      $scope.params = params;
      if (isNaN($scope.params.limit)) {
        $scope.params.limit = res.pagination_limit;
      }

      $scope.total_items = res.total_items;

      $location.search($scope.params)
    })
  }
}
