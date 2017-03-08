'use-strict';

angular.module('userApp').factory('userservice', ['common', userservice]);

function userservice(common){
  return {
    getUserList: getUserList,
  };
  function getUserList(params) {
    return common.ajaxCall('GET', '/users', params);
  }
};

