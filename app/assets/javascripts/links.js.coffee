$ ->
  $('#colors').on 'click', (e)->
    e.preventDefault()
    stuff = ''
    $.get('/colors.json', (data)->
      stuff = data
      $("#colorList").text(stuff)
    )

