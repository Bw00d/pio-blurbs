$( document ).on('turbolinks:load', function() {
	$("div.pio-status:contains('Available')").addClass('available');
	$("div.pio-status:contains('Unavailable')").addClass('unavailable');
	$("div.pio-status:contains('On Assignment')").addClass('onassignment');

	$('div.card').click(function(){

			$(this).find( "div.pio-details" ).toggle(function(){
	    $(this).find( "div.pio-details" ).slideDown();
	  },function(){
	    $(this).find( "div.pio-details" ).slideUp();
		});
  });
})