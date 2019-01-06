$(function(){
  var modal = $(".AddStack-overlay");

  modal.hide()
  $("#stockIndexBody").find("#addStock button").on("click", function(){
    modal.show();
  })

  $(".AddStack-close").on("click", function(){
    console.log("hello")
    modal.hide();
  })

  $("#tblStockInfo .iconEdit").on("click", function(){
    modal.show();
  })

})
