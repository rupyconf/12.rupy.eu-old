//= require jquery
//= require jquery.tweet
//= require bootstrap-modal
//= require bootstrap-scrollspy
//= require googleMaps

$(function(){
  $(".tweet").tweet({
    join_text: "auto",
    username: "rupy",
    avatar_size: 32,
    count: 5
  });
});