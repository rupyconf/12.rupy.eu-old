//= require jquery
//= require jquery_ujs
//= require jquery.tweet
//= require googleMaps
//= require google_analytics
//= require bootstrap.min
//= require dispatcher
//= require_directory ./application

var initLatLng = $('meta[name=latlong]').attr('content');

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
