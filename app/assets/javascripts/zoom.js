// アイテム詳細画面 メイン画像の拡大機能
$(function(){
  var zoomArea = $('#zoomContainer');
  var zoomImage = zoomArea.find('img');
  var size = 172;
  var topScale = 600 / size;
  var leftScale = 500 / size;

  $('#photoMain').find('li').each(function(index, elem){
    var lens = $(elem).find('.loupe');
    var img = $(elem).find('img');

    $(elem).on('mouseover', function(){
      var image = $(elem).find('img');
      zoomArea.addClass("active");
      zoomImage.attr('src', image.attr('src'));
      // var width = (image.width() * topScale)
      // zoomImage.css('width', width)
      // var height = (image.height() * leftScale)
      // zoomImage.css('height', height)
      $("#btnNext").addClass("opacity-zero")
    });

    $(elem).on('mouseleave', function(){
      zoomArea.removeClass('active');
      $("#btnNext").removeClass("opacity-zero")
    });

     // var xmax, ymax;
     // ${"img").bind('load', function(){
     // xmax = img.width() - size;
     // ymax = img.height() - size;
     // });

     var xmax = 500 - size;
     var ymax = 600 - size;

    $(elem).on('mousemove', function(e){
      var rect = $(elem).offset() ;
      var mouseX = e.pageX;
      var mouseY = e.pageY;
      var positionX = rect.left
      var positionY = rect.top
      var offsetX = mouseX - positionX;
      var offsetY = mouseY - positionY;
      var left = offsetX - (size / 2);
      var top = offsetY - (size / 2);

      if(left > xmax){
        left = xmax;
      }
      if(top > ymax){
        top = ymax;
      }
      if(left < 0){
        left = 0;
       }
      if(top < 0){
        top = 0;
      }

      lens.css({top: top, left: left})
      zoomImage.css({marginLeft: -(left * topScale), marginTop: -(top * leftScale)})

    });
  });
});
