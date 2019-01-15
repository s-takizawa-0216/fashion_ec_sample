// 商品出品の画像プレビュー
$(function () {
  $('input#item_images_attributes_0_image').change('input[type="file"]', function(e) {
    $('#preview-box').hide();

      var file = e.target.files[0],
          reader = new FileReader(),
          $preview = $("#preview")
          t = this;

    if(file.type.indexOf("image") < 0){
      return false;
    }

  reader.onload = (function(file) {
    return function(e) {
          console.log(file);

      $preview.append($('<img>').attr({
        src: e.target.result,
        width: "150px",
        height:"180px",
        class: ".preview-zone",
      }));
    };
  })(file);

    if (file){
        reader.readAsDataURL(file);
    }
  });
});
