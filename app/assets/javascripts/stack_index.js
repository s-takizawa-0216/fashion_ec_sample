$(function(){
  var modal = $(".AddStack-overlay");

  modal.hide()
  $("#stockIndexBody").find("#addStock button").on("click", function(){
    modal.show();
  })

  $(".modal-close").on("click", function(){
    modal.hide();
  })

  $("#tblStockInfo .iconEdit").on("click", function(){
    modal.show();
  })

})

$(function(){
  var modal = $(".imagePreview-overlay");

  modal.hide()

  $(".modal-close").on("click", function(){
    modal.hide();
  })


  $("#tblStockInfo .iconIMG").on("click", function(){

    var image = $(this).find("img").attr("src");
    $(".stockDetailPix img").attr("src", image);

    modal.show();
  })

})
