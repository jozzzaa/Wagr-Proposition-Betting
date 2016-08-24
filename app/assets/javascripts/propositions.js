

// width and height match for div's

var heightAndWidth = $('.prop').width();
$('.prop').css({'height':heightAndWidth+'px'});

$(window).resize(function() {
  var heightAndWidthView = $('.prop').width();
  $('.prop').css({'height':heightAndWidthView+'px'});
});
