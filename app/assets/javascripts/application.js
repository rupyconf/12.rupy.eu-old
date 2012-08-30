//= require jquery
//= require jquery_ujs
//= require jquery.tweet
//= require googleMaps
//= require google_analytics
//= require bootstrap.min
//= require_tree .

var initLatLng = $('meta[name=latlong]').attr('content');

$(function(){
  $(".tweet").tweet({
    join_text: "auto",
    username: "rupy",
    avatar_size: 32,
    count: 5
  });
});
