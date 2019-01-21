$(function(){
  var item = $("#forCookie").text() ;

  var cookie_name = 'recently_viewed_items';
  var viewed_items = [];
  var delete_item = false;
  $.cookie.defaults.path = "/";

  if($.cookie(cookie_name)){
    viewed_items = $.cookie(cookie_name).split(",");
  }

  if($.inArray(item, viewed_items)<0){
    viewed_items.push(item);
  }

  if (viewed_items.length >= 33){
    viewed_items.shift();
  }
  items_history = $.grep(viewed_items, function(e){return e !== "";});
  $.cookie(cookie_name, items_history);
});
