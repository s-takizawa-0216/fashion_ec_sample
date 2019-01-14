// クーポン適用価格の表示
$(function () {
  $('#item_coupon, #item_price' ).change(function() {

    $("input#calc").next().remove();

    var coupon = $("item_coupon").val();
    var price = $("#item_price").val();
    var calc = coupon*price
    console.log(calc);

    $("input#calc").val(calc);
  });
});
