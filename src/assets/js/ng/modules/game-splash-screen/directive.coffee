app = angular.module('nupdown')
app.directive('splashScreen',
  [
    'gameNavAPI',
    (gameNavAPI) ->
      {
        restrict: 'A',
        link: () ->
          openGameMenu = () ->
            TweenMax.to('body', 2, {
              backgroundColor: '#FFB44F'
            })
            TweenMax.to('.game-menu .game-title', 0.3, { opacity: 1 })
            TweenMax.fromTo('.game-menu .game-title', 0.75,
            {
              y: -370
            },
            {
              y: 0,
              ease: Bounce.easeOut
            })
            TweenMax.staggerFromTo('.game-menu .button', 0.5,
            {
              y: 80,
              opacity: 0
            },
            {
              y: 0,
              opacity: 1,
              ease: Back.easeOut
            }, 0.25)


          splashRun = () ->
            TweenMax.fromTo('.logo-x', 1,
            {
              rotation: 720,
              scale: 0.1,
              opacity: 0
            },
            {
              rotation: 0,
              ease: Power3.easeIn,
              scale: 1,
              opacity: 1
            })
            TweenMax.fromTo('.logo-gt', 1,
            {
              x: 500,
              opacity: 0
            },
            {
              x: 0,
              ease: Power3.easeIn,
              opacity: 1
            })
            TweenMax.fromTo('.logo-lt', 1,
            {
              x: -500,
              opacity: 0
            },
            {
              x: 0,
              ease: Power3.easeIn,
              opacity: 1
            })
            TweenMax.to('.logo-x', 2, {
              rotation: -720,
              delay: 1
            })
            TweenMax.to('.logo-gt', 2, {
              rotation: 1350,
              transformOrigin: "-30px 60px",
              delay: 1
            })
            TweenMax.to('.logo-lt', 2, {
              rotation: 1350,
              transformOrigin: "150px 60px",
              delay: 1
            })
            TweenMax.to('.logo-x', 2, {
              rotation: 720,
              opacity: 0,
              scale: 0.2,
              delay: 3
            })
            TweenMax.to('.logo-lt', 1, {
              y: 720,
              ease: Power3.easeIn,
              opacity: 0,
              delay: 3,
            })
            TweenMax.to('.logo-gt', 1, {
              y: -720,
              ease: Power3.easeIn,
              opacity: 0,
              delay: 3,
              onComplete: () ->
                gameNavAPI.changeGameScene('menu');
            })
            true
          setTimeout splashRun, 100
          true
      }
  ]
)
