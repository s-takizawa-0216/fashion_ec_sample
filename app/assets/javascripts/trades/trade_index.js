// カート画面の購入確認ボタン
$(function(){
  $('button#register-btn').click(function(){
    $('.cart-main__middle__right__footer__usual').hide();
    $('.cart-main__middle__right__footer__open').slideToggle();
  });
});

// カート画面の　購入確認のタブの切り替え
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

// カート画面の商品個数カウント 
$(function(){
  var step = 1;
  var min = 1;

  var count = $("[id=number]").val();
  var count = parseInt(count);

  $('[id=minus]').click(function(){
    count -= step
  if( count < min ) { count = min; };
    $("[id=number]").val(count);
  });

  $('[id=plus]').click(function(){
    count += step
    $("[id=number]").val(count);
  });
});

