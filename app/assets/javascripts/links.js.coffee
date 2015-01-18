$ ->
  $('#colors').on 'click', (e)->
    e.preventDefault()
    stuff = ''
    $.get('/colors', (data)->
      stuff = data
      $("#colorList").text(stuff)
    )

