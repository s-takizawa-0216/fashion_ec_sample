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
      $('tbody .itemName').css('width', '292px' )
      $('tbody .itemBrand').css('width', '230px')
      $('tbody .stockSize').css('width', '114px')
      $('tbody .stockColor').css('width', '197px')
      $('tbody .stockCount').css('width', '142px')
      $('tbody .iconBtn').css('width', '114px')
    }
  });
});
