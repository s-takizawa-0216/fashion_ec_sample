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

