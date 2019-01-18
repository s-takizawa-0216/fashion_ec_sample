// 県ごとの市場データ
$(function () {
  $('#hokkaido, #akita, #aomori, #iwate, #yamagata, #miyagi, #tochigi, #fukushima, #saitama, #tokyo, #ibaraki, #chiba, #niigata, #gunma, #kanagawa, #toyama, #nagano, #yamanashi, #shizuoka, #ishikawa, #guhu, #aichi, #fukui, #shiga, #nara, #hyogo, #mie, #kyoto, #osaka, #wakayama, #tottori, #okayama, #shimane, #hiroshima, #yamaguchi, #fukuoka, #oita, #miyazaki, #saga, #nagasaki, #kumamoto, #kagoshima, #okinawa, #ehime, #kagawa, #tokushima, #kochi').click(function() {

      var input = $(this).val();
      console.log(input);

    // $.ajax({
    //   type: 'GET',
    //   data: ('parent_id=' + input),
    //   url: '/items/search_category',
    //   dataType: 'json',
    // })

    // .done(function(data){
    //   $(data).each(function appendCategory(id, category){

    //     $("select#item_child_category_id").append($("<option>").val(category["id"]).text(category["name"]));
    //   });
    // })
  });
});

