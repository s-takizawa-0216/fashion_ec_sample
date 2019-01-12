// 住所追加項目
$(function(){
  $('#new-address-check').click(function(){

    $('#new-address').show();
    $('#address-header').removeClass('unchecked');
    $('#address-header').addClass('checked');
  });
});

$(function(){
  $('#hide-new-address').click(function(){

    $('#new-address').hide();
    $('#address-header').addClass('unchecked');
  });
});

// 発送方法選択項目
$(function(){
  $('#new-delivery-check').click(function(){

    $('#new-delivery').show();
    $('#delivery-header').removeClass('unchecked');
    $('#delivery-header').addClass('checked');
    $('#date-new-delivery').hide();
    $('#date-delivery-header').addClass('unchecked');
  });
});

$(function(){
  $('#hide-new-delivery').click(function(){

    $('#new-delivery').hide();
    $('#delivery-header').addClass('unchecked');
    $('#date-new-delivery').hide();
    $('#date-delivery-header').addClass('unchecked');
  });
});

$(function(){
  $('#date-new-delivery-check').click(function(){

    $('#date-new-delivery').show();
    $('#date-delivery-header').removeClass('unchecked');
    $('#date-delivery-header').addClass('checked');
    $('#new-delivery').hide();
    $('#delivery-header').addClass('unchecked');
  });
});

// クレジットカードの選択
$(function(){
  $('#creditcard-check').click(function(){

    $('#new-creditcard').css("display", "block");
    $('#creditcard-header').removeClass('unchecked');
    $('#creditcard-header').addClass('checked');
  });
});

$(function(){
  $('#new-creditcard-check').click(function(){

    $('#new-creditcard-info').css("display", "block");
    $('#new-creditcard-top').addClass('checked');
    $('#usual-card-num1').hide();
    $('#usual-card-num2').hide();
  });
});

$(function(){
  $('#nomal-card').click(function(){
    $('#new-creditcard-info').hide();
    $('#usual-card-num1').show();
    $('#usual-card-num2').show();
    $('#new-creditcard-top').removeClass('checked');
  });
});

// セキュリティーコードとは？
$(function(){
  $('#popup-cursor1,#popup-cursor2').mouseover(function(){
    $('#popup-image').show();
  });
});

$(function(){
  $('#popup-cursor1,#popup-cursor2').mouseleave(function(){
    $('#popup-image').hide();
  });
});

//チェックボックス（お届け先）
$(function(){
  $('input#hide-new-address').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('input#new-address-check').prop('checked',false)
    }
  });
});

$(function(){
  $('input#new-address-check').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('input#hide-new-address').prop('checked',false)
    }
  });
});

//配送方法のチェックボックス
$(function(){
  $('input#hide-new-delivery').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('input#new-delivery-check').prop('checked',false)
      $('input#date-new-delivery-check').prop('checked',false)
    }
  });
});

$(function(){
  $('input#new-delivery-check').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('input#hide-new-delivery').prop('checked',false)
      $('input#date-new-delivery-check').prop('checked',false)
    }
  });
});

$(function(){
  $('input#date-new-delivery-check').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('input#hide-new-delivery').prop('checked',false)
      $('input#new-delivery-check').prop('checked',false)
    }
  });
});

//お支払い方法
$(function(){
  $('input#haunt_pay').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('input#zozocard-check').prop('checked',false)
      $('input#creditcard-check').prop('checked',false)
      $('input#nomal-card').prop('checked',false)
      $('input#new-creditcard-check').prop('checked',false)
      $('input#comfirm_this_card').prop('checked',false)
      $('input#cash_on_delivery').prop('checked',false)
      $('input#line_pay').prop('checked',false)
      $('input#convinence').prop('checked',false)
    }
  });
});

$(function(){
  $('input#zozocard-check').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('input#haunt_pay').prop('checked',false)
      $('input#creditcard-check').prop('checked',false)
      $('input#nomal-card').prop('checked',false)
      $('input#new-creditcard-check').prop('checked',false)
      $('input#comfirm_this_card').prop('checked',false)
      $('input#cash_on_delivery').prop('checked',false)
      $('input#line_pay').prop('checked',false)
      $('input#convinence').prop('checked',false)
    }
  });
});

$(function(){
  $('input#creditcard-check').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('input#haunt_pay').prop('checked',false)
      $('input#zozocard-check').prop('checked',false)
      $('input#cash_on_delivery').prop('checked',false)
      $('input#line_pay').prop('checked',false)
      $('input#convinence').prop('checked',false)
    }
  });
});

$(function(){
  $('input#cash_on_delivery').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('input#haunt_pay').prop('checked',false)
      $('input#creditcard-check').prop('checked',false)
      $('input#nomal-card').prop('checked',false)
      $('input#new-creditcard-check').prop('checked',false)
      $('input#comfirm_this_card').prop('checked',false)
      $('input#line_pay').prop('checked',false)
      $('input#zozocard-check').prop('checked',false)
      $('input#convinence').prop('checked',false)
    }
  });
});

$(function(){
  $('input#line_pay').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('input#haunt_pay').prop('checked',false)
      $('input#creditcard-check').prop('checked',false)
      $('input#nomal-card').prop('checked',false)
      $('input#new-creditcard-check').prop('checked',false)
      $('input#comfirm_this_card').prop('checked',false)
      $('input#cash_on_delivery').prop('checked',false)
      $('input#zozocard-check').prop('checked',false)
      $('input#convinence').prop('checked',false)
    }
  });
});

$(function(){
  $('input#convinence').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('input#haunt_pay').prop('checked',false)
      $('input#creditcard-check').prop('checked',false)
      $('input#nomal-card').prop('checked',false)
      $('input#new-creditcard-check').prop('checked',false)
      $('input#comfirm_this_card').prop('checked',false)
      $('input#cash_on_delivery').prop('checked',false)
      $('input#zozocard-check').prop('checked',false)
      $('input#line_pay').prop('checked',false)
    }
  });
});

//払い方法選択でのクレジットカード画面の表示・非表示
$(function(){
  $('input#haunt_pay').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('#new-creditcard').hide();
      $('#creditcard-header').addClass('unchecked');
      $('#creditcard-header').removeClass('checked');
      $('#new-creditcard-info').hide();
      $('#new-creditcard-top').removeClass('checked');
    }
  });
});

$(function(){
  $('input#zozocard-check').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('#new-creditcard').hide();
      $('#creditcard-header').addClass('unchecked');
      $('#creditcard-header').removeClass('checked');
      $('#new-creditcard-info').hide();
      $('#new-creditcard-top').removeClass('checked');
    }
  });
});

$(function(){
  $('input#cash_on_delivery').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('#new-creditcard').hide();
      $('#creditcard-header').addClass('unchecked');
      $('#creditcard-header').removeClass('checked');
      $('#new-creditcard-info').hide();
      $('#new-creditcard-top').removeClass('checked');
    }
  });
});

$(function(){
  $('input#line_pay').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('#new-creditcard').hide();
      $('#creditcard-header').addClass('unchecked');
      $('#creditcard-header').removeClass('checked');
      $('#new-creditcard-info').hide();
      $('#new-creditcard-top').removeClass('checked');
    }
  });
});

$(function(){
  $('input#convinence').click(function(){
    var check = $(this).prop('checked');
    if(check == true){
      $('#new-creditcard').hide();
      $('#creditcard-header').addClass('unchecked');
      $('#creditcard-header').removeClass('checked');
      $('#new-creditcard-info').hide();
      $('#new-creditcard-top').removeClass('checked');
    }
  });
});

// 次に進むボタンのsubmitかlinkかの変更(クレジットカード)
$(function(){
  $('input#comfirm_this_card').click(function(){
  var check = $(this).prop('checked');
    if(check == true){
      $('#add_credit_card').show();
      $('#link-btn ').hide();
    }else{
      $('#link-btn ').show();
      $('#add_credit_card').hide();
    }
  });
});

// 次に進むボタンのsubmitかlinkかの変更(新しい配送先)
$(function(){
  $('input#new-address-check').click(function(){
  var check = $(this).prop('checked');
    if(check == true){
      $('#add_credit_card').show();
      $('#link-btn ').hide();
    }else{
      $('#link-btn ').show();
      $('#add_credit_card').hide();
    }
  });
});

// 次に進むボタンのsubmitかlinkかの変更( 該当箇所チュエックでリンクに戻すパターン)
$(function(){
  $('input#hide-new-address, input#haunt_pay, input#zozocard-check, input#cash_on_delivery, input#line_pay, input#convinence').click(function(){
  var check = $(this).prop('checked');
    if(check == true){
      $('#link-btn ').show();
      $('#add_credit_card').hide();
    }
  });
});

