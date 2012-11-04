//= require jquery
//= require jquery.tweet
//= require jquery.zrssfeed.min
//= require bootstrap-modal
//= require bootstrap-scrollspy
//= require googleMaps

$(function() {
  var hash_tag = location.href.slice(location.href.indexOf('#'));
  
  $('#speakers a[href$="' + hash_tag + '"][data-toggle="modal"]').trigger('click');

  $('.tweet').tweet({
    username:     'rupy',
    loading_text: 'Loading latest tweet…',
    count:        1,
    template:     '<span class="tweeted">Tweeted {time}</span> {text}'
  });

  $('.rss-feed').rssfeed('http://blog.rupy.eu/rss', {
    limit:      1,
    header:     false,
    date:       false,
    titletag:   null,
    linktarget: null
  });
});