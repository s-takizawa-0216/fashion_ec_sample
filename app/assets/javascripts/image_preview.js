$(function () {

  $('input#item_images_attributes_0_image').change('input[type="file"]', function(e) {
    $('#droped-hidden').hide();
    $('nput#item_images_attributes_0_image').css("width", "500px");

      var file = e.target.files[0],
          reader = new FileReader(),
          $preview = $("#preview")
          t = this;


    if(file.type.indexOf("image") < 0){
      return false;
    }

  reader.onload = (function(file) {
    return function(e) {

      $preview.append($('<img>').attr({
        src: e.target.result,
        width: "60px",
        height:"80px",
        class: "preview-zone",
      }));
    };
  })(file);

    if (file){
        reader.readAsDataURL(file);
    }

  });
});

