$(function () {
  $('input#item_images_attributes_0_image').change('input[type="file"]', function(e) {
    $('#upload-hidden0').hide();

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
        width: "100px",
        height:"120px",
        class: "preview-zone0",
      }));
    };
  })(file);

    if (file){
        reader.readAsDataURL(file);
    }
  });
});

$(function () {
  $('input#item_images_attributes_1_image').change('input[type="file"]', function(e) {
    $('#upload-hidden1').hide();

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
        width: "100px",
        height:"120px",
        class: "preview-zone1",
      }));
    };
  })(file);

    if (file){
        reader.readAsDataURL(file);
    }
  });
});

$(function () {
  $('input#item_images_attributes_2_image').change('input[type="file"]', function(e) {
    $('#upload-hidden2').hide();

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
        width: "100px",
        height:"120px",
        class: "preview-zone2",
      }));
    };
  })(file);

    if (file){
        reader.readAsDataURL(file);
    }
  });
});

$(function () {
  $('input#item_images_attributes_3_image').change('input[type="file"]', function(e) {
    $('#upload-hidden3').hide();

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
        width: "100x",
        height:"120px",
        class: "preview-zone3",
      }));
    };
  })(file);

    if (file){
        reader.readAsDataURL(file);
    }
  });
});

$(function () {
  $('input#item_images_attributes_4_image').change('input[type="file"]', function(e) {
    $('#upload-hidden4').hide();

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
        width: "100px",
        height:"120px",
        class: "preview-zone4",
      }));
    };
  })(file);

    if (file){
        reader.readAsDataURL(file);
    }
  });
});

$(function () {
  $('input#item_images_attributes_5_image').change('input[type="file"]', function(e) {
    $('#upload-hidden5').hide();

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
        width: "100px",
        height:"120px",
        class: "preview-zone5",
      }));
    };
  })(file);

    if (file){
        reader.readAsDataURL(file);
    }
  });
});

$(function () {
  $('input#item_images_attributes_6_image').change('input[type="file"]', function(e) {
    $('#upload-hidden6').hide();

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
        width: "100px",
        height:"120px",
        class: "preview-zone6",
      }));
    };
  })(file);

    if (file){
        reader.readAsDataURL(file);
    }
  });
});

$(function () {
  $('input#item_images_attributes_7_image').change('input[type="file"]', function(e) {
    $('#upload-hidden7').hide();

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
        width: "100px",
        height:"120px",
        class: "preview-zone7",
      }));
    };
  })(file);

    if (file){
        reader.readAsDataURL(file);
    }
  });
});

$(function () {
  $('input#item_images_attributes_8_image').change('input[type="file"]', function(e) {
    $('#upload-hidden8').hide();

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
        width: "100px",
        height:"120px",
        class: "preview-zone8",
      }));
    };
  })(file);

    if (file){
        reader.readAsDataURL(file);
    }
  });
});

$(function () {
  $('input#item_images_attributes_9_image').change('input[type="file"]', function(e) {
    $('#upload-hidden9').hide();

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
        width: "100px",
        height:"120px",
        class: "preview-zone9a",
      }));
    };
  })(file);

    if (file){
        reader.readAsDataURL(file);
    }
  });
});
