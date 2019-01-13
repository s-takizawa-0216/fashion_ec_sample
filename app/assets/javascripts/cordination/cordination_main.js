$(function(){

  $('#show1').mouseover(function(){
    setTimeout(function(){
      $('#hide1').show().stop().animate({marginRight:25}, 220);
    })
    })

  $('#hide1').mouseleave(function(){
      $('#hide1').hide().stop().animate({marginRight:-25}, 220);
    })


  $('#show2').mouseover(function(){
    setTimeout(function(){
      $('#hide2').show().stop().animate({marginRight:25}, 220);
    })
    })

  $('#hide2').mouseleave(function(){
      $('#hide2').hide().stop().animate({marginRight:-25}, 220);
    })

  $('#show3').mouseover(function(){
    setTimeout(function(){
      $('#hide3').show().stop().animate({marginRight:25}, 220);
    })
    })

  $('#hide3').mouseleave(function(){
      $('#hide3').hide().stop().animate({marginRight:-25}, 220);
    })
})


$(function() {
  var appear = false;
  var pagetop = $('#scroll-js');
  $(window).scroll(function () {
    if ($(this).scrollTop() > 300) {  //100pxスクロールしたら
      if (appear == false) {
        appear = true;
        pagetop.stop().show().animate({
          'top': '500px' //下から50pxの位置に
        }, 300); //0.3秒かけて現れる
      }
    } else {
      if (appear) {
        appear = false;
        pagetop.stop().hide()
      }
    }
  });
  pagetop.click(function () {
    $('body, html').animate({ scrollTop: 0 }, 500); //0.5秒かけてトップへ戻る
    return false;
  });
});



$(function(){

  $('#reserve-js').mouseover(function(){
    $('#reserve-js-hide').css('left' ,0)
  })

  $('#reserve-js').mouseout(function(){
    $('#reserve-js-hide').css('left' ,-9999999)
  })

  $('#stock-js').mouseover(function(){
    $('#stock-js-hide').css('left' ,120)
  })

  $('#stock-js').mouseout(function(){
    $('#stock-js-hide').css('left' ,-9999999)
  })

  $('#popular-js').mouseover(function(){
    $('#popular-js-hide').css('left' ,240)
  })

  $('#popular-js').mouseout(function(){
    $('#popular-js-hide').css('left' ,-9999999)
  })
})















