$(function(){

var name = $('.header__right__name-js ,.header__right__name-js-log-in')
    name_inner = $('.header__right__popup__inner'),
    other = $('.header__right__notice-js , .header__right__fav-js , .header__right__cart-js , .header__right__menu-js , .header__right__notice-js-log-in , .header__right__fav-js-log-in , .header__right__cart-js-log-in , .header__right__menu-js-log-in , .header__right__name-js-log-in ')

var notice = $('.header__right__notice-js , .header__right__notice-js-log-in'),
    notice_inner = $('.header__right__popup__inner-comment , .header__right__popup__inner-comment-log-in')


var fav = $('.header__right__fav-js , .header__right__fav-js-log-in'),
    fav_inner = $('.header__right__popup__inner-fav , .header__right__popup__inner-fav-log-in')

var cart = $('.header__right__cart-js , .header__right__cart-js-log-in'),
    cart_inner = $('.header__right__popup__inner-cart , .header__right__popup__inner-cart-log-in')

var menu = $('.header__right__menu-js , .header__right__menu-js-log-in'),
    menu_inner = $('.header__right__popup__inner-list , .header__right__popup__inner-list-log-in')


//user-name 部分
  $(name).mouseover(function(){
    $(name).css({
      'background-color': 'black'
    })
  });

  $(other).mouseleave(function(){
    $(name).css({
      'background-color': '#2d2d2d'
    })
  });

  $(name).mouseover(function(){
    $(name_inner).show();
  });

  $(other).mouseover(function(){
   $(name_inner).hide();
  });


   $(name_inner).mouseleave(function(){
    $(name_inner).hide();
   });


//お知らせ部分
  $(notice).mouseover(function(){
    $(notice).css({
      'background-color': 'black'
    })
  });

  $(other).mouseleave(function(){
    $(notice).css({
      'background-color': '#2d2d2d'
    })
  });

  $(notice).mouseover(function(){
    $(notice_inner).show();
  });

  $(fav).mouseover(function(){
    $(notice_inner).hide();
  });


   $(notice_inner).mouseleave(function(){
    $(notice_inner).hide();
   });

//お気に入り
  $(fav).mouseover(function(){
    $(fav).css({
      'background-color': 'black'
    })
  });

  $(other).mouseleave(function(){
    $(fav).css({
      'background-color': '#2d2d2d'
    })
  });

  $(fav).mouseover(function(){
    $(fav_inner).show();
  });

  $(cart).mouseover(function(){
    $(fav_inner).hide();
  });

   $(fav_inner).mouseleave(function(){
    $(fav_inner).hide();
   });

//カート
  $(cart).mouseover(function(){
    $(cart).css({
      'background-color': 'black'
    })
  });

  $(other).mouseleave(function(){
    $(cart).css({
      'background-color': '#2d2d2d'
    })
  });

  $(cart).mouseover(function(){
    $(cart_inner).show();
  });

  $(menu).mouseover(function(){
    $(fav_inner).hide();
  });

   $(cart_inner).mouseleave(function(){
    $(cart_inner).hide();
   });

//menu
  $(menu).mouseover(function(){
    $(menu).css({
      'background-color': 'black'
    })
  });

  $(other).mouseleave(function(){
    $(menu).css({
      'background-color': '#2d2d2d'
    })
  });

  $(menu).mouseover(function(){
    $(menu_inner).show();
  });

   $(menu_inner).mouseleave(function(){
    $(menu_inner).hide();
   });

});


