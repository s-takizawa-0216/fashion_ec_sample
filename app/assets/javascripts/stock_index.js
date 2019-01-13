$(function(){
  var modal = $(".imagePreview-overlay");
  var mainImage = $(".stockDetailPix img")
  var noImage = modal.find(".noImage img").attr("src");

  modal.hide()

  $("#tblStockInfo .iconIMG").on("click", function(){
    var image = $(this).find("img").attr("src");

    mainImage.attr("src", noImage);

    if( image != ""){
      mainImage.attr("src", image);
    }
    modal.show();
  })

  $(".modal-close").on("click", function(){
    modal.hide();
  })
})

