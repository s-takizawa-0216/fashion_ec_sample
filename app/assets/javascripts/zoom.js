$(function(){
  var zoomArea = $('#zoomContainer');
  var zoomImage = zoomArea.find('img');
  var size = 172;
  var topScale = 600 / size;
  var leftScale = 500 / size

  $('#photoMain').find('li').each(function(index, elem){
    var lens = $(elem).find('.loupe');
    var img = $(elem).find('img');

    $(elem).on('mouseover', function(){
      var image = $(elem).find('img');
      zoomArea.addClass("active");
      zoomImage.attr('src', image.src);
      var width = (image.offsetWidth * scale) + 'px'
      zoomImage.css('width', width)
    });

    $(elem).on('mouseleave', function(){
      zoomArea.removeClass('active');
    });

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

      lens.css({top: top, left: left})
      zoomImage.css({marginLeft: -(left * topScale), marginTop: -(top * leftScale)})
    });
  });
});
