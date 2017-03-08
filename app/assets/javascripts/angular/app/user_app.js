(function(){
  angular.module('userApp', ['ui.bootstrap', 'commonLib'])
    .config(['$httpProvider', '$locationProvider', defaultConfig])
})();
