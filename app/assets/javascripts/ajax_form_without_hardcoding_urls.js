$(document).ready(function() {
  $('form').on('submit', function(event) {
    event.preventDefault();
    var form = $(this);
    $.ajax(form.attr('action'), { //Request url is not hardcoded, but based on form.
      type: form.attr('method'), //Request method is not hardcoded, but based on form.
      data: $('form').serialize(),
      dataType: 'json',
      success: function(response) {
        $('.tour').html('<p></p>')
                  .find('p')
                  .append('Trip to ' + response.description)
                  .append(' at $' + response.price)
                  .append(' for ' + response.nights + ' nights')
                  .append('. Confirmation: ' + response.confirmation);
      }
    });
  });
});
