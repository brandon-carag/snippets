$(document).ready(function() {

  $('form').on('submit', function(event) {
    event.preventDefault();
    $.ajax({
      url: "/book",
      type: "POST",
      data: $('form').serialize() //Automatically serializes form data.
    });
  });

});
