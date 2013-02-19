$(document).ready(function(){
  var serverTags = [];
  var chosenTags = [];
  $.getJSON("/tags.json", function(data){
    serverTags = data;
  });
  var fileForm = $($('.xist-file-form')[0]).clone();

  $('.favorite-form').bind('ajax:success', function() {
    $(this).closest('.button-container').toggleClass('favorited');
  });

  $('.unfavorite-form').bind('ajax:success', function() {
    $(this).closest('.button-container').toggleClass('favorited');
  });

  var handleKill = function(div) {
    $('.kill-me').click(function() {
      $(this).closest(div).remove();
    });
  };

  handleKill($('.xist-file-form')[0]);

  $('.add-me').click(function() {
    var fileFormInstance = fileForm.clone();
    var uniqueTime = new Date().getTime();
    var fileFormHTML = fileFormInstance.html().replace(/_0_/g, "_"+uniqueTime+"_");
    fileFormHTML = fileFormHTML.replace(/\[0\]/g, "["+uniqueTime+"]");
    $('.xist-files').append(fileFormInstance.html(fileFormHTML));
    handleKill(fileFormInstance);
  });

  $('.text-form-box').keyup(autoCompleteHandler);

  function autoCompleteHandler(){
    $('.chosen-tags').empty();
    console.log(serverTags)
    string = $('.text-form-box').val().toLowerCase();
    serverTags = serverTags.sort();

    for(var i in serverTags) {
      if (serverTags[i].name.toLowerCase().match(string)) {
        var tag_id = serverTags[i].id;

        $('.chosen-tags').append(
          $('<li></li>').html(
            $('<a href="#" class="tag-link-' + tag_id + '">' + serverTags[i].name + '</a>')
              .attr('value', tag_id)
          )
        );

        $('.tag-link-' + tag_id).click(function(){
          var that = this;
          if ( ($.inArray(that, chosenTags)) == -1 ) {
            $('.chosen-tags-container').append(
              '<span class="tag">' + $(that).html() + '</span>'
            );
            $('.autocomplete-box').append(
              $('<input type="hidden" name="xist[tag_ids][]">')
                .attr('value', $(that).attr('value')));
            chosenTags.push(that);
          }
        });
      }
    }
  }

});


