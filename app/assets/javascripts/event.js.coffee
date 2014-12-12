# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


Event = anuglar.module("myEvent", [])

Event.controller("EventController", ["$scope", "$http", ($scope, $http) ->
  $scope.showEvents = ->
    $http.get('/events.json')
      .success (data) ->
        $scope.stored_events = data
        if $scope.stored_events.length == 0
          $scope.events_show = true
        else
          $scope.events_show = false
      .error (data) ->
        console.log "Failed to get data."

  $scope.addEventToMyEvents = ->
    jsonObj =
      artist: $scope.artist,
      title: $scope.title,
      venue: $scope.name,
      address: $scope.address,
      website: $scope.website
      date: $scope.date
      time: $scope.time

  $scope.showEvents()
])