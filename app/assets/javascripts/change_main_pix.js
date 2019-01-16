$(function(){
  function photoChange(target){
    var photoList = $('#photoGallery').find("#photoMain li");
    var photoLine = $('#photoGallery').find("#photoThimb li")
    var thimb = [];
    var current = 0;
    var btnPrev = $('#btnPrev')
    var btnNext = $('#btnNext')


    function click_open(){
      $(photoList[current]).stop().fadeIn(0, checkControl)
    }

    function click_close(){
      $(photoList[current]).stop().fadeOut(0)
    }

    function clickTn(num){
      if( current != num){
        click_close();
        current = num
        click_open();
      };
    };

    function init(){
      photoLine.each(function(index, ele){
        thimb[index] = $($(this).find('img'));
        $($(this).find('div')).on('click', function(){
          clickTn(index);
          photoLine.removeClass('current');
          $(ele).addClass('current');
        })
      });
    };
    init()
    click_open()

    function slide_open(){
      btnPrev.off('click');
      btnNext.off('click');
      $(photoList[current]).stop().fadeIn(0, checkControl);
      $(photoLine[current]).addClass('current');
    };

    function slide_close(){
      $(photoList).stop().fadeOut(0);
      $(photoLine).removeClass('current');
    }

    function clickControl(type){
      slide_close();
      switch(type){
        case 'btnPrev':
          current--;
          break;
        case 'btnNext':
          current++;
          break;
      };
      slide_open();
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
    slide_open();
  };
  photoChange('#photoGallery')
});
