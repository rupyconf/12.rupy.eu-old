//= require jquery
//= require jquery_ujs
//= require google_analytics
//= require bootstrap.min

// Bootstrap button auto loading
!function( $ ){

  $.fn.button.defaults = {
    loadingText: 'loading...'
  }

  $(function () {
    $('body').delegate('.btn.loading', 'click', function () {
      $(this).button('loading')
    })
  })

}( window.jQuery || window.ender );

$(function() {
  // Auto fill input file
  var reader = new FileReader();
  reader.onload = function(e) {
    $('.auto-fill-file img')[0].src  = e.target.result;
  };

  function readURL(input){
     if(input.files && input.files[0]){
        reader.readAsDataURL(input.files[0]);
     }
  };

  $('.auto-fill-file input[type="file"]').change(function() {
    readURL(this);
  });
})
