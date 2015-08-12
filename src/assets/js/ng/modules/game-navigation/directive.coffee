#@module Game navigation
#@role Directive.
app = angular.module('nupdown')
app.directive('gameNav', [
  'gameNavAPI',
  (gameNavAPI) ->
    {
      restrict: 'A',
      link: (scope, elem, attrs) ->
        $elm = $(elem)
        playBtn = $elm.find('.play')
        howBtn = $elm.find('.how')
        title = $elm.find('.game-title')

        hideNav = () ->
          TweenMax.staggerTo([playBtn, howBtn], 0.75, {
            y: 100,
            opacity: 0,
            onComplete: () ->
              @target.hide()
          })
          TweenMax.to(title, 1, {
            y: -200,
            opacity: 0,
            ease: Back.easeIn
            onComplete: () ->
              true
          })
        scope.nav = gameNavAPI
        scope.$watch('nav.gameScene', checkGameState, true)

        setInterval(
          () ->
            console.log scope.nav.gameScene
          , 500
        )

        checkGameState = () ->
          console.log "IN"
          console.log arguments
          true

        playBtn.on('click', () ->
          hideNav()
        )
        howBtn.find('.how').on('click', () ->
          alert("HEAVEN");
        )
    }
])
