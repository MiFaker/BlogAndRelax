(function(){
  angular.module('adminApp', ['ui.bootstrap', 'commonLib'])
    .config(['$httpProvider', '$locationProvider', defaultConfig])
})();
