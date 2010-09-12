$(document).ready(function() {
  $('#text').focus();
});

$(document).ready(function(){
    $("#text").validate();
});

jQuery.extend(String.prototype, {
  databaseId: function() { return $.trim(this.split('_').last()); }
});

jQuery.extend(Array.prototype, {
  last: function() { return this[this.length-1]; }
});

jQuery.authenticity_token = function() {
  return $('#authenticity_token').attr('content');
};

function log() {
  if (window && window.console && window.console.log)
    for(var i=0, len=arguments.length; i<len; i++)
      console.log(arguments[i]);
};

jQuery(function($) {
  var countdown = $('#countdown');
  var allowed = parseInt(countdown.text());
  $('#text').keydown(function() {
    var length = $(this).val().length;
    countdown.text(allowed - length);
    
    if (length == 0) {
      var label = $('label[for=text]')
      label.text(label.data('original_text'));
    }
  });
});
