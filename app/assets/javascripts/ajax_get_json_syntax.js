$('button').on('click', function() {

  $.getJSON('/cities/deals', function(response){ //we assume the "response" is JSON
    $.each(response, function(index, dealItem) { //the response object is passed into $.each
      var dealElement = $('.deal-' + index);
      dealElement.find('.name').html(dealItem.name);
      dealElement.find('.price').html(dealItem.price);
    });
  })

});
