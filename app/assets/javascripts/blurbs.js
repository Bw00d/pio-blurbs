$( document ).on('turbolinks:load', function() {
	$(".author").hover(function() {
		$(this).text("test");
	});
	
});
