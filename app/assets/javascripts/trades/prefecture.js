// 県ごとの市場データのajax通信
$(function () {
  $('#hokkaido, #akita, #aomori, #iwate, #yamagata, #miyagi, #tochigi, #fukushima, #saitama, #tokyo, #ibaraki, #chiba, #niigata, #gunma, #kanagawa, #toyama, #nagano, #yamanashi, #shizuoka, #ishikawa, #guhu, #aichi, #fukui, #shiga, #nara, #hyogo, #mie, #kyoto, #osaka, #wakayama, #tottori, #okayama, #shimane, #hiroshima, #yamaguchi, #fukuoka, #oita, #miyazaki, #saga, #nagasaki, #kumamoto, #kagoshima, #okinawa, #gihu, #ehime, #kagawa, #tokushima, #kochi').click(function() {

    var name = $(this).val();

    $.ajax({
      type: 'GET',
      data: ('prefecture=' + name),
      url: '/trades/search_prefecture',
      dataType: 'json',
    })

    .done(function(data){
      var html = `<div class="area">
                    <div class="area__box">
                      <div class="prefecture">${data.prefecture}</div>
                      <table>
                      <tbody><tr><td>
                        <p>1.総購入額</p>
                        <p>2.総購入アイテム数</p>
                        <p>3.総取引回数</p>
                      </td>
                      <td>
                        <div class="td__right" style="margin-left:35px">
                          <p>¥${data.total}</p>
                          <p>${data.items}個</p>
                          <p>${data.count}回</p>
                        </div>
                      </td>
                      </tr></tbody></table>
                      <label>
                        <button id="hide-area" type="button">
                          <span>
                            <i class="fa fa-times"></i>
                          </span>
                          <span>CLOSE</span>
                        </button>
                      </label>
                    </div>
                  </div>`

      $('.pref-info').append(html);

      $('button#hide-area').click(function(){
        $('.area').remove();
      });
    });
  });
});

// 総購入金額が最大の県を色付け
$(function () {
  $(document).ready(function() {


    $.ajax({
      type: 'GET',
      url: '/trades/maximum_total',
      dataType: 'json',
    })

    .done(function(data){
      $("*[value="+data.prefecture+"]").css({ 'background': 'red',
                                              'padding-top':'20px',
                                              'padding-bottom':'20px',
                                              'color':'#fff',
                                              'opacity':'0.8',
                                              'font-weight': 'bold'
      });
    });
  });
});
