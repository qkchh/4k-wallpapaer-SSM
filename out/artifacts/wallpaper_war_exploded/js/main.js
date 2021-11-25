//获取session后判断是否登录
$(function (){
    //判断用户是否登录
    $.get("user/findOne",function (data){
        if (data != null && data != "") {
            $("#user-message").css("display","block");
            $("#user-message img").attr("src","img/headportrait.png");
            $("#user-name").html(data.imageUserName);
            $(".me-h2").html(data.imageUserName)
        }
    })
})

$(function(){
    $("#user-message").hover(function(){
        $("#me").show();
    },function(){

    })

    $("#me").hover(function(){

    },function(){
        $("#me").hide();
    })
});

jQuery(document).ready(function($) {
	'use strict';
        // on click event on all anchors with a class of scrollTo
        $('a.scrollTo').on('click', function(){
          
          // data-scrollTo = section scrolling to name
          var scrollTo = $(this).attr('data-scrollTo');

          // toggle active class on and off. added 1/24/17
          $( "a.scrollTo" ).each(function() {
            if(scrollTo == $(this).attr('data-scrollTo')){
              $(this).addClass('active');
            }else{
              $(this).removeClass('active');
            }
          });
          
          
          // animate and scroll to the sectin 
          $('body, html').animate({
            
            // the magic - scroll to section
            "scrollTop": $('#'+scrollTo).offset().top
          }, 1000 );
          return false;
          
        });
        $(".menu-icon").click(function() {
          $(this).toggleClass("active");
          $(".overlay-menu").toggleClass("open");
        });
});

