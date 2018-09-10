$( document ).on('turbolinks:load', function() {


	
  $('.author-box').mouseover(function() {
    $('.author').hide();
    $(".author-name").show();
 
  });
  $('.author-box').mouseleave(function() {
    $('.author').show();
    $(".author-name").hide();
 
  });
	
});
