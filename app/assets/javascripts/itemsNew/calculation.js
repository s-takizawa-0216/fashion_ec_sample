// クーポン適用価格の表示
$(function () {
  $('#item_coupon').change(function() {

    $("input#calc").next().remove();

    var coupon = $(this).val();
    var price = $("#item_price").val();
    var calc = coupon*price
    var int = Math.floor(calc);

    if(calc > 0){
    $("input#calc").val(int);
    }
  });
});

$(function () {
  $('#item_price').change(function() {

    $("input#calc").next().remove();

    var coupon = $(this).val();
    var price = $("#item_coupon").val();
    var calc = coupon*price
    var int = Math.floor(calc);

    if(calc > 0){
    $("input#calc").val(int);
    }
  });
});
