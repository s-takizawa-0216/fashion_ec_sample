$(function() {
  $('#photoMain').slick({
    arrows: true,
    appendArrows: $('.prevNextCtrl'),
    prevArrow: '<li class="fa fa-angle-left" id="btnPrev"></div>',
    nextArrow: '<li class="fa fa-angle-right" id="btnNext"></div>',
    speed: 0,
  });
});

$(function() {
  $('#photoThimb img').click(function(){
    var $thisImg = $(this).attr('src');
    $('#photoMain img').attr({src: $thisImg})
  });
});

