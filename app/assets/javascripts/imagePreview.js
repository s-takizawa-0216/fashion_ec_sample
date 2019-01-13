$(function(){

  $('form').on('change', 'input[type="file"]', function(e) {
    var file = e.target.files[0],
        reader = new FileReader(),
        $preview = $(".ImgPreview");
        t = this;


    if(file.type.indexOf("image") < 0){
      return false;
    }


    reader.onload = (function(file) {
      return function(e) {

        $preview.empty();

        $preview.append($('<img>').attr({
                  src: e.target.result,
                  width: "150px",
                  class: ".ImgPreview",
                  title: file.name
              }));
      };
    })(file);

    reader.readAsDataURL(file);
  });
});
