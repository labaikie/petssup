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
  console.log('toggle');
  showHidden('#loginDp');
});

$('.play').on("click", function(event) {
  $(event.currentTarget).find('audio')[0].play();
});

});
