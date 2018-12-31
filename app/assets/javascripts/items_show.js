$(function(){
  var tabList = $(".premium-tab-lists").find(".premium-tab-list-item")
  var cartBtn = $(".cart .btn")

  $(tabList[0]).click(function(){
    $(this).addClass('active');
    $(this).removeClass('link');
    $(tabList[1]).removeClass('active');
    $(tabList[1]).addClass('link');
    cartBtn.removeClass('span');
  });

  $(tabList[1]).click(function(){
    $(this).addClass('active');
    $(this).removeClass('link');
    $(tabList[0]).removeClass('active');
    $(tabList[0]).addClass('link');
    cartBtn.addClass('span');
  });
});

$(function(){
  var tabList = $("#swConditionTab").find("li");
  $(tabList[0]).click(function(){
    $(this).addClass("current");
    $(this).removeClass('link');
    $(tabList[1]).removeClass("current");
    $(tabList[1]).addClass('link');
  });
  $(tabList[1]).click(function(){
    $(this).addClass("current");
    $(this).removeClass('link');
    $(tabList[0]).removeClass("current");
    $(tabList[0]).addClass('link');
  });
});
