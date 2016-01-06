// $('#join').click(displayJoin);

// function displayJoin() {
//   $('#joinDp').css("display", "block");
// }

$(function(){

$('#edit-profile-btn').click(function(){
  hideAndShow('#show-profile','#edit-profile')
});

$('#edit-post-btn').click(function(){
  hideAndshow('#edit-profile','#show-profile')
});

$('#login-on-join').click(function(){
  hideAndshow('#joinDp','#loginDp')
});

$('#join-on-login').click(function(){
  hideAndshow('#loginDp','#joinDp')
});

function hideAndShow(hide, show) {
  $(hide).css('display', 'none');
  $(show).css('display', 'block')
}

$('#comments-btn').click(function(){
  showHidden('.show-comments')
});

$('#join').click(function(){
  showHidden('#joinDp')
});

$('#login').click(function(){
  showHidden('#loginDp')
});

function showHidden(hidden){
  $(hidden).toggle();
}

})
