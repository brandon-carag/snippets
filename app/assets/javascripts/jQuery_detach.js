// Why might we use jQuery detach?  If you want to retain an event binding for an element even after removing it and replacing it with something else.  Code School also mentions this is more efficient.

// //HTML--You won't understand .detach() without understanding this HTML context
//================================================================================
// <button class="update-available-flights">Get Times</button>
// <div class="flights">
//   <ul class="flight-times">

//   </ul>
// </div>

//JAVASCRIPT
//================================================================================

$('.update-available-flights').on('click', function() {

  $.getJSON('/flights/late', function(result) {
    var flightElements = $.map(result, function(flightItem, index){
      var flightEl = $('<li>'+flightItem.flightNumber+'-'+flightItem.time+'</li>');
      return flightEl;
    });

    $('.flight-times').detach().html(flightElements).appendTo($('.flights'))
    //Note that the entire ul is being detached from the DOM
    //Several li's are then added to the the ul
    //The ul is reattached to the parent element.

  });
});
