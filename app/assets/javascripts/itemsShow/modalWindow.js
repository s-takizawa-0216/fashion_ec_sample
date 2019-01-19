$(function(){
  var cordinateLists = $("#use_coordinate").find(".data li");
  var modal = $(".fancybox-overlay");
  var nowIndex = 0
  var prevBtn = modal.find(".fancybox-prev");
  var nextBtn = modal.find(".fancybox-next");


  function init(){
    setModalEvent();
  }

  function setModalEvent(){
    cordinateLists.each(function(index, elem){
      $(elem).on("click", function(){
        var src = ($(elem).find("img").attr("src"))
        openModal(src, index)
        return false;
      })
    })
    $(".fancybox-close").on("click", closeModal);
  }

  function changeModalPhoto(num){
    var index = nowIndex + num
    var src = $(cordinateLists[index]).find("img").attr("src")
    openModal(src, index);
  }

  function checkModalControl(){
    prevBtn.on("click", function(){changeModalPhoto(-1);});
    nextBtn.on("click", function(){changeModalPhoto(1);});

    switch(nowIndex){
      case 0:
        prevBtn.hide().off("click");
        nextBtn.show();
        break;

      case cordinateLists.length-1:
        prevBtn.show();
        nextBtn.hide().off("click");
        break;

      default:
        prevBtn.show();
        nextBtn.show();
        break;
    }
  }

  function closeModalControl(){
    prevBtn.off("click");
    nextBtn.off("click");
  }

  function openModal(src, index){
    nowIndex = index;
    closeModalControl()
    checkModalControl()
    modal.find(".photo img").attr('src', src);
    modal.show();
  }

  function closeModal(){
    modal.hide();
  }

  modal.hide();
  init();

})
