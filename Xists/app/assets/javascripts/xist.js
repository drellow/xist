$(document).ready(function(){
  $('.favorite-form').bind('ajax:success', function() {
    $('.button-container').toggleClass('favorited')
  });
  $('.unfavorite-form').bind('ajax:success', function() {
    $('.button-container').toggleClass('favorited')
  });
});


