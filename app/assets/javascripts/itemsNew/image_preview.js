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

//画像追加ボタンでフォームの追加
$(function () {
  var num = 1;
  $('#add_image').click(function() {
    $(this).data("click", ++num);
    var click = $(this).data("click");
    var html =`
      <div class="newitem-preview__box" id="image_box">
        <ul style="display: flex">
          <div class="newitem-preview__box-msg">${click}</div>
          <div class="newitem-preview__box-preview" id="preview-box">
            <p>
              <i style="padding-left: 10px" class="fa fa-image"></i>
            </p>
            <p style="margin: 7px">ここをクリックして画像を選択してください</p>
              <input type="file" required="required" name="item[images_attributes][${click-1}][image]" id="item_images_attributes_0_image">
          </div>
          <div class="preview-zone" id="preview"></div>
          <div class="newitem-preview__box-color">
            <p class="color-msg">※カラーがある場合は選択してください</p>
            <p>
              <select class="select-style" name="item[images_attributes][${click-1}][color_id]" id="item_images_attributes_0_color_id">
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

    if(click == 9){
      $("#image_box").append(html);
      $("#add_image").hide();
    }else if(click < 10){
      $("#image_box").append(html);
    }
  });
});


