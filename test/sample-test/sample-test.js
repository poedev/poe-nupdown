describe('central Controller', function() {
  var $rootScope,
      $scope,
      controller;

  beforeEach(module('nupdown'));
  beforeEach(inject(function ($rootScope, $controller) {
    $scope = $rootScope.$new();
    controller = $controller('game-central', {$scope: $scope});
  }));
  describe('initialization', function(){
    it('should instantiate slices to 8', function() {
      expect($scope.test).toEqual(8);
    });
  });
});
