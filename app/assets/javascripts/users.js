$(function(){

function hideAndShow(hide, show) {
  $(hide).css('display', 'none');
  $(show).css('display', 'block');
};

$('#edit-profile-btn').click(function(){
  hideAndShow('#show-profile','#edit-profile');
});

$('#edit-post-btn').click(function(){
  hideAndshow('#edit-profile','#show-profile');
});

$('#login-on-join').click(function(){
  hideAndshow('#joinDp','#loginDp');
});

$('#join-on-login').click(function(){
  hideAndshow('#loginDp','#joinDp');
});

function showHidden(hidden){
  $(hidden).toggle();
};

$('#comments-btn').click(function(){
  showHidden('.show-comments');
});

$('#join').click(function(){
  showHidden('#joinDp');
});

$('#login').click(function(){
  showHidden('#loginDp');
});

$('#signout').click(function(){
  $('#joinDp').css('display', 'none');
  $('#joinDp').css('display', 'none');
});

$('.play').on("click", function(event) {
  $(event.currentTarget).find('audio')[0].play();
});

});
