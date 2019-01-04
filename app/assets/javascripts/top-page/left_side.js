$(function(){

  $('#category-js-show').mouseover(function(){
    $('#category-js-hide').css('left',155)
  })

  $('.left__content__list-category').mouseout(function(){
    $('#category-js-hide').css('left', -999999)
  })


  $('#category-js-show-outer').mouseover(function(){
    $('#category-js-hide-outer').css('left',155)
  })

  $('.left__content__list-category').mouseout(function(){
    $('#category-js-hide-outer').css('left', -999999)
  })

   $('#category-js-show-pant').mouseover(function(){
    $('#category-js-hide-pant').css('left',155)
  })

  $('.left__content__list-category').mouseout(function(){
    $('#category-js-hide-pant').css('left', -999999)
  })

   $('#fav-js-show').mouseover(function(){
    $('#fav-js-hide').css('left',155)
  })

  $('.left__content__list-category').mouseout(function(){
    $('#fav-js-hide').css('left', -999999)
  })

  $('#fav-js-show-shop').mouseover(function(){
    $('#fav-js-hide-shop').css('left',155)
  })

  $('.left__content__list-category').mouseout(function(){
    $('#fav-js-hide-shop').css('left', -999999)
  })

});



