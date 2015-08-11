app = angular.module('nupdown')

app.factory('gameNavAPI', [
  () ->
    {
      # gameScene values:
      # - splashScreen
      # - menu
      # - gamePlay
      # - howToPlay
      # - gameResult
      gameScene: 'splashScreen'
      changeGameScene: (scene) ->
        @gameScene = scene
    }
])
