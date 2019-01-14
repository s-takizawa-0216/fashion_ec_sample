$(function () {
  $('select#item_parent_category_id').change(function() {
    $("select#item_child_category_id option").remove();
    $("select#item_child_category_id").append($("<option>").text("カテゴリー2を選択"));
      var input = $(this).val();

    $.ajax({
      type: 'GET',
      data: ('parent_id=' + input),
      url: '/items/search_category',
      dataType: 'json',
    })

    .done(function(data){
      $(data).each(function appendCategory(id, name){
      $("select#item_child_category_id").append($("<option>").val(name["id"]).text(name["name"]));
      });
    })
  });
});
