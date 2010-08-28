jQuery(function($) {
  var countdown = $('#countdown');
  var allowed = parseInt(countdown.text());
  $('#text').keydown(function() {
    var length = $(this).val().length;
    countdown.text(allowed - length);
    
    if (length == 0) {
      $('#in_reply_to_status_id').val('');
      var label = $('label[for=text]')
      label.text(label.data('original_text'));
    }
  });

$(document).ready(function(){
    $("#new_tweet").validate();
  });
