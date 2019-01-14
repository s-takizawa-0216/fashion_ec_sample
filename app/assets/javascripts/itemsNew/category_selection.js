// 商品出品のカテゴリー選択
$(function () {
  $('select#item_parent_category_id').change(function() {
    $("select#item_child_category_id").show();
    $("select#item_child_category_id option").next().remove();
      var input = $(this).val();

    $.ajax({
      type: 'GET',
      data: ('parent_id=' + input),
      url: '/items/search_category',
      dataType: 'json',
    })

    .done(function(data){
      $(data).each(function appendCategory(id, category){

      $("select#item_child_category_id").append($("<option>").val(category["id"]).text(category["name"]));
      });
    })
  });
});
