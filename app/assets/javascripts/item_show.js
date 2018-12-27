$(function(){
  function photoChange(target){
    var photoList = $('#photoGallery').find("#photoMain li");
    var thimb = [];
    var current = 0;

    function open(){
      $(photoList[current]).stop().fadeIn(10)
    }

    function close(){
      $(photoList[current]).stop().fadeOut(0)
    }

    function clickTn(num){
      if( current != num){
        close();
        current = num
        open();
      };
    };

    function init(){
      $('#photoGallery').find("#photoThimb li").each(function(index){
        thimb[index] = $($(this).find('img'));
        $($(this).find('div')).on('click', function(){
          clickTn(index);
        })
      });
    };
    init()
    open()
  };


  photoChange('#photoGallery')
});
