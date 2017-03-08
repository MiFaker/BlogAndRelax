'use-strict'

angular.module("userApp")
  .controller("UserListController", ['$scope', '$location', 'userservice', UserListController]);

function UserListController($scope, $location, userservice){
  $scope.params = {
    limit: parseInt($location.search().limit),
    page: $location.search().page
  }

  $scope.refreshUserList = function(resetPage){
    if (resetPage){
      $scope.params.page = 1;
    }
    var params = angular.extend({}, $scope.params)
    userservice.getUserList(params).then(function(res){
      debugger
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
