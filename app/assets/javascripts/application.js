//= require jquery
//= require jquery_ujs
//= require jquery.tweet
//= require application/modal 
//= require application/scroll 
//= require googleMaps


$(function(){
  $(".tweet").tweet({
    join_text: "auto",
    username: "rupy",
    avatar_size: 32,
    count: 5
  });
});

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
