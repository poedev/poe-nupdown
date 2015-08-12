# beforeEach( ()->
#   module 'nupdown'

#   inject () ->
#     $rootScope = $injector.get '$rootScope'
#     $scope = $rootScope.$new()
#     controller = $injector.get('$controller')('game-central', {$scope: $scope})
# )

describe(() ->
  it('it should be true', () ->
    expect(true).toBeTruthy()
  )
)
