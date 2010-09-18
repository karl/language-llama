$ ->
  
  randomise_numbers = ->
    $('#large-numbers .number').each ->
      $(this).remove()
      numbers = $('#large-numbers .number')
      number = numbers.get Math.floor Math.random() * numbers.length
      $(this).insertBefore number

    $('#small-numbers .number').each ->
      $(this).remove()
      numbers = $('#small-numbers .number')
      number = numbers.get Math.floor Math.random() * numbers.length
      $(this).insertBefore number
      
  
  generate_total = ->
    Math.floor Math.random() * 900 + 100
  
  $('#new-total').click ->
    $('#total').text generate_total()
  
  $('#shelf, #large-numbers, #small-numbers')
    .sortable({
      revert: true
      connectWith: '#shelf, #large-numbers, #small-numbers'
    })
  
  $('#shelf').bind 'sortreceive sortstop', (event, ui) ->
    $('.cover', ui.item).fadeOut()

  $('#shelf').bind 'sortstart', (event, ui) ->
    $('.cover', ui.item).fadeIn()


  randomise_numbers()