$(document).ready(
  () ->
    console.log 'hello'
  splashRun = () ->
    TweenMax.from('.logo-x', 1, {
      rotation: 720,
      scale: 0.1,
      opacity: 0
    })
    TweenMax.from('.logo-gt', 1, {
      x: 720,
      opacity: 0
    })
    TweenMax.from('.logo-lt', 1, {
      x: -720,
      opacity: 0
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
    })
    true
  setTimeout splashRun, 20
)
