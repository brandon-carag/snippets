$(document).ready(function() {

  $('form').on('submit', function(event) {
    event.preventDefault();
    $.ajax('/book', {
      type: 'POST',
      data: $('form').serialize(),
      dataType: "json", // Process the response as JSON
      contentType: 'application/json', // Request a JSON response
      success: function(response) {
        var msg = $("<p>Your trip has been booked:</p>");  //Convert the string into a jQuery object
        msg.append("Description " + response.description);
        msg.append("Price " + response.price);
        msg.append("Nights " + response.nights);
        msg.append("Confirmation Number " + response.confirmation);
        $('.tour').html(msg);
      }
    });
  });

});
