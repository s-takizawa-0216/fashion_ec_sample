$(function(){
  $('button#register-btn').click(function(){
    $('.cart-main__middle__right__footer__usual').hide();
    $('.cart-main__middle__right__footer__open').slideToggle();
  });
});

$(function(){
  $('#facebooktab').click(function(){
    $('.cart-main__middle__right-tab-zozo').hide();
    $('.cart-main__middle__right__facebookbox').css('display', 'block');
    $('#zozotab').removeClass('selected');
    $(this).addClass('selected');
  });
});

$(function(){
  $('#zozotab').click(function(){
    $('.cart-main__middle__right__facebookbox').hide();
    $('.cart-main__middle__right-tab-zozo').css('display', 'block');
    $('#facebooktab').removeClass('selected');
    $(this).addClass('selected');
  });
});

$(function(){
  $('#minus').click(function(){
   
  });
});
