$(function(){

//変数の定義
  var all_other = $('#tab-mens ,#tab-womens , #tab-kids ')
  var mens_other = $('#tab-all ,#tab-womens , #tab-kids ')
  var womens_other = $('#tab-all ,#tab-mens , #tab-kids ')
  var kids_other = $('#tab-all ,#tab-womens , #tab-mens ')

//すべてがクリックされた場合は色を付与した上で他の全てのidの背景色を戻す
  $('#tab-all').click(function(){
      $('#tab-all').css({
        'background-color': '#C0C0C0'})
      $(all_other).css({
        'background-color': '#f0f0f0'
      })
    });

//mensがクリックされた場合は色を付与した上で他の全てのidの背景色を戻す
  $('#tab-mens').click(function(){
      $('#tab-mens').css({
        'background-color': '#C0C0C0'})

      $(mens_other).css({
        'background-color': '#f0f0f0'
      })
    });

//womensがクリックされた場合は色を付与した上で他の全てのidの背景色を戻す
  $('#tab-womens').click(function(){
      $('#tab-womens').css({
        'background-color': '#C0C0C0'})

      $(womens_other).css({
        'background-color': '#f0f0f0'
      })
    });

//kidsがクリックされた場合は色を付与した上で他の全てのidの背景色を戻す
  $('#tab-kids').click(function(){
      $('#tab-kids').css({
        'background-color': '#C0C0C0'})

      $(kids_other).css({
        'background-color': '#f0f0f0'
      })
    });
});
