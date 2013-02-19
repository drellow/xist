$(document).ready(function(){
  $('.favorite-form').bind('ajax:success', function() {
    $(this).closest('.button-container').toggleClass('favorited');
  });
  $('.unfavorite-form').bind('ajax:success', function() {
    $(this).closest('.button-container').toggleClass('favorited');
  });
  $('.kill-me').click(function() {
    $(this).closest('.xist-file-form').toggleClass('hide');
  });
  $('.add-me').click(function() {
    var fileForm = $($('.xist-file-form')[0]).clone()
    var XXXX = new Date().getTime()
    var fileFormHTML = fileForm.html().replace(/_0_/g, "_"+XXXX+"_");
    fileFormHTML = fileFormHTML.replace(/\[0\]/g, "["+XXXX+"]");
    $('.xist-files').append(fileForm.html(fileFormHTML));
  });
});


