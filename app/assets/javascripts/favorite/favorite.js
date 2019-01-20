$(function(){

  $('.all-shop-show').mouseover(function(){
    $('.all-shop-hide').css('left' , -20)
  })

  $('.fav__main__content__tub').mouseout(function(){
    $('.all-shop-hide').css('left' , -9999999999)
  })

  $('.all-category-show').mouseover(function(){
    $('.all-category-hide').css('left' , -20)
  })

  $('.fav__main__content__tub').mouseout(function(){
    $('.all-category-hide').css('left' , -9999999999)
  })

  $('.all-show').mouseover(function(){
    $('.all-hide').css('left' , -42)
  })

  $('.fav__main__content__tub').mouseout(function(){
    $('.all-hide').css('left' , -9999999999)
  })
})
