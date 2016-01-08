$(document).on('ready page:load', function() {


  $('#menu').click(function(){ // fade-in/out animation for header menu
    $('#toggle').fadeToggle(300)
  });

  $('#index-btn').click(function(){ // show post modal on user index
    $('#post-modal').fadeToggle(300);
  });


  var scroll_pos = 0;
  $(document).scroll(function() {  // header change color upon scroll down
      scroll_pos = $(this).scrollTop();
      if(scroll_pos < 800) {
          $("header").css('background-color', 'transparent');
      } else {
          $("header").css('background-color', '#907F75');
          $("header").css('opacity', '0.95');
      }
  });

  function hideAndShow(hide, show) { // hides and shows divs (modals)
    $(hide).css('display', 'none');
    $(show).css('display', 'block');
  };

  $('#edit-profile-btn').click(function(){
    hideAndShow('#show-profile','#edit-profile');
  });

  $('#edit-post-btn').click(function(){
    hideAndshow('#edit-profile','#show-profile');
  });

  function showHidden(hidden){ // shows or hides divs
    $(hidden).toggle();
  };

  $('.comments-btn').click(function(event){
    showHidden($(event.currentTarget).parent().parent().children().last());
  });

  $('#join').click(function(){
    showHidden('#joinDp');
  });

  $('#login').click(function(){
    showHidden('#loginDp');
  });

  $('.play').on("click", function(event) {
    $(event.currentTarget).find('audio')[0].play();
  });

});
