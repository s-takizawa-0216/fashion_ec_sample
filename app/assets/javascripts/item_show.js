$(function(){
  function photoChange(target){
    var photoList = $('#photoGallery').find("#photoMain li");
    var thimb = [];
    var current = 0;
    var btnPrev = $('#btnPrev')
    var btnNext = $('#btnNext')

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

    function open1(){
      btnPrev.off('click');
      btnNext.off('click');
      $(photoList[current]).stop().fadeIn(0, checkControl);
    };

    function close1(){
      $(photoList).stop().fadeOut(0)
    }

    function clickControl(type){
      close1();
      switch(type){
        case 'btnPrev':
          current--;
          break;
        case 'btnNext':
          current++;
          break;
      };
      open1();
    }

    function checkControl(){
      switch(current){
        case 0:
          hideControl(btnPrev);
          showControl(btnNext);
          break;
        case photoList.length-1:
          showControl(btnPrev);
          hideControl(btnNext);
          break;
        default:
          showControl(btnPrev);
          showControl(btnNext);
          break;
      };
    };

    function hideControl(btn){
      btn.hide();
      btn.off('click');
    };

    function showControl(btn){
      btn.show();
      btn.off('click').on('click', function(){clickControl($(btn).attr('id'));});
    };

    checkControl();
  };
  photoChange('#photoGallery')
});
