$(function () {

  $('select#item_parent_category_id').change(function() {
    var r = $(this).val();

    if(r == 1){
      $('#item_child_category_id.tops').css("display", "block");

    }else if(r == 5){
      $('#item_child_category_id.jackets').css("display", "block");

    }else if(r == 9 ){
      $('#item_child_category_id.pants').css("display", "block");
    }
  })
});

