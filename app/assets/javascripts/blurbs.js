$( document ).on('turbolinks:load', function() {


	
  $('.author-box').mouseover(function() {
    $(this).children('.author').hide();
    $(this).children(".author-name").show();
 
  });
  $('.author-box').mouseleave(function() {
    $(this).children('.author').show();
    $(this).children(".author-name").hide();
 
  });
	
});
