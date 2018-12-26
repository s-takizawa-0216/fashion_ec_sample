$(function() {
  $('#photoMain').slick({
    arrows: true,
    appendArrows: $('.prevNextCtrl'),
    prevArrow: '<li class="fa fa-angle-left" id="btnPrev"></div>',
    nextArrow: '<li class="fa fa-angle-right" id="btnNext"></div>',
    dots: true,
    appendDots: $('#photoThimb'),
    speed: 300,
  });
});
