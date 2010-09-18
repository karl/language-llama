(function(){
  $(function() {
    var generate_total, randomise_numbers;
    randomise_numbers = function() {
      $('#large-numbers .number').each(function() {
        var number, numbers;
        $(this).remove();
        numbers = $('#large-numbers .number');
        number = numbers.get(Math.floor(Math.random() * numbers.length));
        return $(this).insertBefore(number);
      });
      return $('#small-numbers .number').each(function() {
        var number, numbers;
        $(this).remove();
        numbers = $('#small-numbers .number');
        number = numbers.get(Math.floor(Math.random() * numbers.length));
        return $(this).insertBefore(number);
      });
    };
    generate_total = function() {
      return Math.floor(Math.random() * 900 + 100);
    };
    $('#new-total').click(function() {
      return $('#total').text(generate_total());
    });
    $('#shelf, #large-numbers, #small-numbers').sortable({
      revert: true,
      connectWith: '#shelf, #large-numbers, #small-numbers'
    });
    $('#shelf').bind('sortreceive sortstop', function(event, ui) {
      return $('.cover', ui.item).fadeOut();
    });
    $('#shelf').bind('sortstart', function(event, ui) {
      return $('.cover', ui.item).fadeIn();
    });
    return randomise_numbers();
  });
})();
