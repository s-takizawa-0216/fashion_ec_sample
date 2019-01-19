$(function() {

  $('.table-sortable').sortable({
    axis: 'y',
    items: '.item',

    update: function(e, ui) {
      var item, item_data, params;
      item = ui.item;
      item_data = item.data();
      params = { _method: 'put'};
      params[item_data.modelName] = {row_order_position: item.index()};
      $.ajax({
        type: 'POST',
        url: item_data.updateUrl,
        dataType: 'json',
        data: params
      });
    },

    start: function(e, ui) {
      $('tbody .itemName').css('width', '281px' )
      $('tbody .itemBrand').css('width', '272px')
      $('tbody .stockSize').css('width', '109px')
      $('tbody .stockColor').css('width', '190px')
      $('tbody .stockCount').css('width', '130px')
      $('tbody .iconBtn').css('width', '110px')
    }
  });
});
