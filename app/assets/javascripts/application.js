// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require angular
//= require_tree .

var angularPractice = angular.module('angularPractice', []);

angularPractice.controller('angularPracticeController', ['$scope', '$http',
  function ($scope, $http) {
    $http.get('/events.json').success(function(data) {
      $scope.events = data;
    });

    $scope.orderProp = 'date';

    $scope.eventID = $(".app-container").data("eventid");

    $http.get('/events/' + $scope.eventID + '.json').success(function(data) {
      $scope.events = data;
      $scope.events.forEach(function(item) {
        item.checked = true;
      });
    }).
    error(function() {

    });

  }]);



