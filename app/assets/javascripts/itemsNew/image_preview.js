// 商品出品の画像プレビュー
$(function () {
  var num = 0;
  $("form").change('input[type="file"]', function(e) {
    $(this).data("click", ++num);
    var click = $(this).data("click");
    $('#preview-box').hide();

    times = e.target.files.length;
      for (var i = 0; i < times; i++) {
        if(click == 1){
          var file = e.target.files[i],
              reader = new FileReader(),
              $preview = $('.preview-zone')
              t = this;
        }else if(click == 2){
          var file = e.target.files[i],
              reader = new FileReader(),
              $preview = $('.preview-zone1')
              t = this;
        }else if(click == 3){
          var file = e.target.files[i],
              reader = new FileReader(),
              $preview = $('.preview-zone2')
              t = this;
        }else if(click == 4){
          var file = e.target.files[i],
              reader = new FileReader(),
              $preview = $('.preview-zone3')
              t = this;
        }else if(click == 5){
          var file = e.target.files[i],
              reader = new FileReader(),
              $preview = $('.preview-zone4')
              t = this;
        }else if(click == 6){
          var file = e.target.files[i],
              reader = new FileReader(),
              $preview = $('.preview-zone5')
              t = this;
        }else if(click == 7){
          var file = e.target.files[i],
              reader = new FileReader(),
              $preview = $('.preview-zone6')
              t = this;
        }else if(click == 8){
          var file = e.target.files[i],
              reader = new FileReader(),
              $preview = $('.preview-zone7')
              t = this;
        }else if(click == 9){
          var file = e.target.files[i],
              reader = new FileReader(),
              $preview = $('.preview-zone8')
              t = this;
        }
      }

      if(file.type.indexOf("image") < 0){
        return false;
      }

  reader.onload = (function(file) {
    return function(e) {

      $preview.append($('<img>').attr({
        src: e.target.result,
        width: "150px",
        height:"180px",
      }));
    };
  })(file);

    if (file){
        reader.readAsDataURL(file);
    }

  });
});

//画像追加ボタンでフォームの追加
$(function () {
  var num = 0;
  $('#add_image').click(function() {
    $(this).data("click", ++num);
    var click = $(this).data("click");
    var html =`
      <div class="newitem-preview__box" id="image_box">
        <ul style="display: flex">
          <div class="newitem-preview__box-msg">${click+1}</div>
          <div class="newitem-preview__box-preview" id="preview-box${click}">
            <p>
              <i style="padding-left: 10px" class="fa fa-image"></i>
            </p>
            <p style="margin: 7px">ここをクリックして画像を選択してください</p>
              <input type="file" required="required" name="item[images_attributes][${click}][image]" id="item_images_attributes_${click}_image">
          </div>
          <div class="preview-zone${click}" id="preview"></div>
          <div class="newitem-preview__box-color">
            <p class="color-msg">※カラーがある場合は選択してください</p>
            <p>
              <select class="select-style" name="item[images_attributes][${click}][color_id]" id="item_images_attributes_0_color_id">
                <option value="">選択してください</option>
                <option value="1">ホワイト</option>
                <option value="2">ブラック</option>
                <option value="3">グレー</option>
                <option value="4">ネイビー</option>
                <option value="5">ブルー</option>
                <option value="6">レッド</option>
                <option value="7">カーキ</option>
                <option value="8">ベージュ</option>
                <option value="9">ブラウン</option>
                <option value="10">カモフラ</option></select>
            </p>
          </div>
          <div class="newitem-preview__box-text">
            <textarea placeholder="画像に関する説明がある場合はここに書いてください" class="item-text" style="resize: none" name="item[images_attributes][${click}][discription]" id="item_images_attributes_0_discription"></textarea>
          </div>
        </ul>
      </div>`

    if(click == 8){
      $("#image_box").append(html);
      $("#add_image").hide();
    }else if(click < 9){
      $("#image_box").append(html);
      $('#item_images_attributes_'+click+'_image').addClass('images_attributes');

    }
  });
});


