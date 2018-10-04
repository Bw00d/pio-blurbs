$( document ).on('turbolinks:load', function() {
	
	$("div.pio-status:contains('Available')").addClass('available');
	$("div.pio-status:contains('Unavailable')").addClass('unavailable');
	$("div.pio-status:contains('On Assignment')").addClass('onassignment');

	$('div.card').click(function(){
    	$(this).find( "div.details-container" ).slideToggle(200);
  });

	//  temporary avatar
  function readURL(input) {

    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#avatar-image').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
  }

  $("#avatar-file").change(function(){
    readURL(this);
  });

  // activate file upload
  $('.face-avatar').click(function() {
    $('#avatar-file').trigger('click');
  });
  $('#edit-avatar-link').click(function() {
    $('#avatar-file').trigger('click');
  });
  $(document).on("click", ".submit-button", function() {
    $('#new-face-form').submit()
  });
});
