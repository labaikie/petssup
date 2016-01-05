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

function hideAndShow(hide, show) {
  $(hide).css('display', 'none');
  $(show).css('display', 'block')
}

$('#comments-btn').click(function(){
  showHidden('#comments')
})

function showHidden(hidden){
  $(hidden).toggle();
}

})
