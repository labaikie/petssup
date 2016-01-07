$(function(){

// function mouseIn(div){ // link effect
//   $(div).css('text-decoration','underline');
// };

// function mouseOut(div){ // link effect
//   $(div).css('text-decoration','none');
// };

// $('#join').mouseenter(mouseIn('#join'),mouseOut('#join'));

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

$('#comments-btn').click(function(){
  showHidden('.show-comments');
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
