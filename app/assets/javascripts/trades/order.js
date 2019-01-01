$(function(){
  $('#add-address').click(function(){
    $('#vanish-address').hide();
    $('#new-address').slideToggle();
  });
});

$(function(){
  $('#hide-new-address').click(function(){
    $('#new-address').hide();
    $('#vanish-address').show();

  });
});
