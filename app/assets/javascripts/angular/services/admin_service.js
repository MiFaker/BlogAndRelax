'use-strict';

angular.module('adminApp').factory('adminservice', ['common', adminservice]);

function adminservice(common){
  return {
    getAdminList: getAdminList,
  };
  function getAdminList(params) {
    return common.ajaxCall('GET', '/admins', params);
  }
};

