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

//次に進むボタンのsubmitかlinkかの変更
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

//郵便番号での住所検索
$ ->
  $("#user_postcode").jpostal({
    postcode : [ "#user_postcode" ],
    address  : {
                  "#user_prefecture_code" : "%3",
                  "#user_address_city"            : "%4",
                  "#user_address_street"          : "%5%6%7"
                }
  });

