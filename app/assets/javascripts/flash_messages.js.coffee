$ ->
  $('.flash').fadeIn ->
    fadeOut = ->
      $('.flash').fadeOut()
    setTimeout(fadeOut, 3000)
