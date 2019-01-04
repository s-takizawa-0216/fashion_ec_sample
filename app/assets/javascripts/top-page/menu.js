$(function(){

//非ログイン時
  $('.header__right__name-js-log-in').mouseover(function(){
    $('.header__right__name-js-log-in').css({
    'background-color': 'black'
    })
  });

  $('.header__right__name-js-log-in').mouseleave(function(){
    $('.header__right__name-js-log-in').css({
      'background-color': '#2d2d2d'
    })
  });

//ログイン時
  $('.header__right__name-js').mouseover(function(){
    $('.header__right__name-js').css({
    'background-color': 'black'
    })
  });

  $('.header__right__name-js').mouseleave(function(){
    $('.header__right__name-js').css({
      'background-color': '#2d2d2d'
    })
  });

//ログイン時
  $('.header__right__name-js').mouseover(function(){
    $('.header__right__popup__inner').show();
  });

  $('.header__right__name-js').mouseout(function(){
    $('.header__right__popup__inner').hide();
  });


//お知らせ部分
  $('.header__right__notice-js').mouseover(function(){
    $('.header__right__notice-js').css({
      'background-color': 'black'
    })
  });

  $('.header__right__notice-js').mouseleave(function(){
    $('.header__right__notice-js').css({
      'background-color': '#2d2d2d'
    })
  });

//非ログイン時
  $('.header__right__notice-js').mouseover(function(){
    $('.header__right__popup__inner-comment-log-in').show();
  });

  $('.header__right__notice-js').mouseout(function(){
    $('.header__right__popup__inner-comment-log-in').hide();
  });

//ログイン時
  $('.header__right__notice-js').mouseover(function(){
    $('.header__right__popup__inner-comment').show();
  });

  $('.header__right__notice-js').mouseout(function(){
    $('.header__right__popup__inner-comment').hide();
  });


//お気に入り
  $('.header__right__fav-js').mouseover(function(){
    $('.header__right__fav-js').css({
      'background-color': 'black'
    })
  });

  $('.header__right__fav-js').mouseleave(function(){
    $('.header__right__fav-js').css({
      'background-color': '#2d2d2d'
    })
  });

//非ログイン時
  $('.header__right__fav-js').mouseover(function(){
    $('.header__right__popup__inner-fav-log-in').show();
  });

  $('.header__right__fav-js').mouseout(function(){
    $('.header__right__popup__inner-fav-log-in').hide();
  });

//ログイン時
  $('.header__right__fav-js').mouseover(function(){
    $('.header__right__popup__inner-fav').show();
  });

  $('.header__right__fav-js').mouseout(function(){
    $('.header__right__popup__inner-fav').hide();
  });


//カート
  $('.header__right__cart-js').mouseover(function(){
    $('.header__right__cart-js').css({
      'background-color': 'black'
    })
  });

  $('.header__right__cart-js').mouseleave(function(){
    $('.header__right__cart-js').css({
      'background-color': '#2d2d2d'
    })
  });

  $('.header__right__cart-js').mouseover(function(){
    $('.header__right__popup__inner-cart').show();
  });

  $('.header__right__cart-js').mouseout(function(){
    $('.header__right__popup__inner-cart').hide();
  });

//menu
  $('.header__right__menu-js').mouseover(function(){
    $('.header__right__menu-js').css({
      'background-color': 'black'
    })
  });

  $('.header__right__menu-js').mouseleave(function(){
    $('.header__right__menu-js').css({
      'background-color': '#2d2d2d'
    })
  });

  $('.header__right__menu-js').mouseover(function(){
    $('.header__right__popup__inner-list').show();
  });

   $('.header__right__menu-js').mouseout(function(){
    $('.header__right__popup__inner-list').hide();
   });
})
