// クーポン適用価格の表示
$(function () {
  $('#item_coupon').change(function() {

    $("input#calc").next().remove();

    var coupon = $(this).val();
    var price = $("#item_price").val();
    var calc = coupon*price
    var int = Math.floor(calc);

    if(coupon == 1){
        $("input#calc").val("");
    }else if(calc > 0 && coupon != 1){
    $("input#calc").val(int);
    }
  });
});

$(function () {
  $('#item_price').change(function() {

    $("input#calc").next().remove();

    var price = $(this).val();
    var coupon = $("#item_coupon").val();
    var int_price = Math.floor(price);
    var calc = coupon*price
    var int = Math.floor(calc);

    $("#item_price").val(int_price)

    if(calc > 0 && coupon != 1){
    $("input#calc").val(int);
    }
  });
});
