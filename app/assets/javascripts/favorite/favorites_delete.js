// 複数削除するを選択時
$(function(){
  $("#delete-msg").click(function(){
    $(this).hide();
    $("#hidden__detete").css("display", "block");
    $(".input-check").css("display", "block");
    $(".fav__main__image__box__cart").hide();
    $("#cancel-msg").show();
    $(".triangle-box").hide();
  });
});

// 複数削除のキャンセルを選択時
$(function(){
  $("#cancel-msg").click(function(){
    $(this).hide();
    $("#delete-msg").show();
    $(".fav__main__image__box__cart").show();
    $("#hidden__detete").hide();
    $(".input-check").hide();
    $(".triangle-box").show();
  });
});

// 複数削除のリセットを選択時
$(function(){
  $("#cancel-button").click(function(){
    $(".input-check").prop("checked", false);
  });
});
