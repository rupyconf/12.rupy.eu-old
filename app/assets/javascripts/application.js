//= require jquery
//= require jquery.tweet
//= require jquery.zrssfeed.min
//= require bootstrap-modal
//= require bootstrap-scrollspy
//= require googleMaps

$(function(){
  $('.tweet').tweet({
    username:     'rupy',
    loading_text: 'Loading tweets…',
    count:        1,
    template:     '{text} <br>&mdash; {time}'
  });

  $('.rss-feed').rssfeed('http://blog.rupy.eu/rss', {
    limit:      1,
    header:     false,
    date:       false,
    titletag:   null,
    linktarget: null
  });
});