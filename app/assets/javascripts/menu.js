$(function(){

  $('.header__right__name-js').mouseover(function(){
    $('.header__right__name-js').css({
      'background-color': 'black'
    })
  });

  $('.header__right__popup__inner').mouseleave(function(){
    $('.header__right__name-js').css({
      'background-color': '#2d2d2d'
    })
  });

  $('.header__right__name-js').mouseover(function(){
    $('.header__right__popup__inner').show();
  });

   $('.header__right__popup__inner').mouseleave(function(){
    $('.header__right__popup__inner').hide();
   });

});

$(function(){

  $('.header__right__notice-js').mouseover(function(){
    $('.header__right__notice-js').css({
      'background-color': 'black'
    })
  });

  $('.header__right__popup__inner__comment').mouseleave(function(){
    $('.header__right__notice-js').css({
      'background-color': '#2d2d2d'
    })
  });

  $('.header__right__notice-js').mouseover(function(){
    $('.header__right__popup__inner-comment').show();
  });

   $('.header__right__popup__inner-comment').mouseleave(function(){
    $('.header__right__popup__inner-comment').hide();
   });

});
