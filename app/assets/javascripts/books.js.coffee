$ ->
  $('.new-book-btn').on 'click', (e) ->
    e.preventDefault()
    $('.new_book').slideDown()