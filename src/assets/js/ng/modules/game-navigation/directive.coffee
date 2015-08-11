app = angular.module('nupdown')
app.directive('gameNav', [
  () ->
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

        playBtn.on('click', () ->
          hideNav()
        )
        howBtn.find('.how').on('click', () ->
          alert("HEAVEN");
        )
    }
])
