//= require jquery
//= require jquery_ujs
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
  function readURL(input){
    if(input.files && input.files[0]){
      reader = new FileReader();
      reader.onload = function(e) {
        $(input).parent().parent().find('img')[0].src = e.target.result;
      };
      reader.readAsDataURL(input.files[0]);
    }
  };

  $('.auto-fill-file input[type="file"]').change(function() {
    readURL(this);
  });
})
