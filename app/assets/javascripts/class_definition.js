// Note the tour is outside of document.ready
function Tour(destination){
  console.log(destination);
}

$(document).ready(function(){
    var stPetersCathedralTour = new Tour("St. Peter's Cathedral");
  }
);
