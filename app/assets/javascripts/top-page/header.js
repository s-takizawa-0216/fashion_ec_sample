// //24時になったらheaderのbackground-colorをランダムで変更
// $(document).ready(function() {
//   setAutoRndColor();
// });
// function setAutoRndColor(){
//   var hue = 'rgb(' + (Math.floor(Math.random() * 256)) + ',' + (Math.floor(Math.random() * 256)) + ',' + (Math.floor(Math.random() * 256)) + ')';
//   var now_hour = new Date().getHours();
//  if ( now_hour == 0){
//   $('.top__index').animate({
//     backgroundColor: hue
//   })
//   setAutoRndColor();
//  }
// }

// //２４時間のカウントダウン
// $(document).ready(function() {
//     var countdown = function (due) {
//     var now = new Date();

//     var rest = due.getTime() - now.getTime();
//     var sec = Math.floor(rest / 1000 % 60);
//     var min = Math.floor(rest / 1000 / 60) % 60;
//     var hours = Math.floor(rest / 1000 / 60 / 60) % 24;
//     var days = Math.floor(rest / 1000 / 60 / 60 / 24);
//     var count = [days, hours, min, sec];

//     return count;
// }

//     var goal = new Date();
//     goal.setHours(23);
//     var counter = countdown(goal);
//     var time = counter[1];
//     document.getElementById('timer').textContent = time;
// })


// //jsの通常時刻は var hoge = new Date();で時刻をリセットできる。
