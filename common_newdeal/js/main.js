/* MAIN.JS */
/*페이지 버튼 관련 스크립트*/

var newsAjax="";
var shopAjax="";
var $bxSlider="";
var 	flag=true;
newsAjax=['01Ca','01Cb','042a','01Cc','02kX','0320','01Ci','02kY','027J','02u0','02u8'];

shopAjax=['058W','058Y','058a','058k','058f','058i','058e','058d','058b'];

//shopAjax=['058Y','058a','058k','058i','058e','058d','058b'];

$(document).ready(function() {

 
	$('.thumbPager').hide();
	$("#shop_ .all div h2").hide();
   // newsAjax.forEach(ShowNews);
  //  shopAjax.forEach(ShowShop);




	var jssor_1_options = {
              $AutoPlay: false,
              $ThumbnailNavigatorOptions: {
                $Class: $JssorThumbnailNavigator$,				
                $Cols: 5,
                $Align: 0,
                $NoDrag: true
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
			
		

		
		swipedetect(document.getElementById('jssor_1'));

			
			//console.log(			jssor_1_slider.$CurrentIndex());
        

		
            /*responsive code begin*/
            /*you can remove responsive code if you don't want the slider scales while window resizing*/
	


        function OnSlidePark(slideIndex, fromIndex) {

			console.log(slideIndex+"//"+fromIndex);
			if(slideIndex == fromIndex) return ; 

			if(!fromIndex && !slideIndex) return ;

			if(fromIndex ==0){
				if(flag){
					flag=false;

				
										
							

						$("#div_ajax_load_image").show();
				shopAjax.forEach(ShowShop);
						
					
			$("#p_05Ps").html('<iframe width="0" height="0" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=05Ps&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>');	
					
					  ga('create', 'UA-88829342-5', 'auto');
					  ga('send', 'pageview');
				} else {
					
					setTimeout( "reload_rg('shop_','73')", 30);
				}


			} else {
				 setTimeout( "reload_rg('news_',"+fromIndex+")", 30);
			}
        }




        jssor_1_slider.$On($JssorSlider$.$EVT_PARK, OnSlidePark);
		 $("#div_ajax_load_image").fadeOut('slow');
    $("#int-pagination").each(function() {
        var This = this;
        var select_no = 0;
        var count = $("> p > a.int-pagination-button", this).length; 
        var Select_Action = function(no) {
            $("> p > a.int-pagination-button:eq(" + no + ")", This).each(function() {
                select_no = no;
                var href = $(this).attr("href");
                if(href) {
                    $("#int-page-iframe-view").each(function() {
                        $(this).get(0).src = href;
                    });
                }
                if(!$(this).hasClass("select")) $(this).addClass("select");
                $(this).siblings().removeClass("select");
            });
        };
        
        $("> p > a.int-pagination-button", this).each(function(i) {
            $(this).unbind("click").bind("click", function() {
                Select_Action(i);
                return false;
            });
        });
        $("> p > a.prev", this).each(function() {
            $(this).unbind("click").bind("click", function() {
                if(select_no - 1 >= 0) {
                    select_no--;
                }
                Select_Action(select_no);
                return false;
            });
        });
        $("> p > a.next", this).each(function() {
            $(this).unbind("click").bind("click", function() {
                if(select_no + 1 < count) {
                    select_no++;
                }
                Select_Action(select_no);
                return false;
            });
        });
    });



    $("header > .thumbPager > li > a").click(function(){
        $('html , body').scrollTop('top' , '0');
        //$("header > .thumbPager > li > a").css('color','#BBD7E2');
        //$(this).css('color','#fff');
    });

    //$("header > .thumbPager > li > a").css('color','#BBD7E2');
    //$("header > .thumbPager > li:first-child > a").css('color','#fff');
    $('html , body').scrollTop('top' , '0');

       

	
    setTimeout( "reload_rg('news_','146')", 30);
    callScheme('GRP', 4, 'DEFAULT');

});

 

function reload_rg(val,val2){
if(!val2) return;
console.log(val);
$('#jssor_1').height($('#'+val).height()+34);
$('#jssor_1>div>div').height($('#'+val).height()+34);
}
function swipedisable_rg(){
	swipedisable(document.getElementById('banner_00'));
	swipedisable(document.getElementById('banner_01'));
	swipedisable(document.getElementById('banner_02'));
	swipedisable(document.getElementById('banner_03'));
}

function ShowNews(value, index) {

  //  if (index < 1) { return; }
    $.ajax({
        type: "GET", 
        async: false,
        data: "pageid="+value+"&lang=utf-8&out=json", 
        url: "http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr", 
        cache: false, 
        dataType: "jsonp", 
        jsonp: "jquerycallback", 
        success: function(data) 
        {
         
         // createFile(data.tag,value+'.php');
            $("#foin_"+value).html(data.tag); 

        },
        error: function(xhr, status, error) { ; } 
    });
}

function ShowShop(value, index) {

  //  if (index < 1) { return; }
    $.ajax({
        type: "GET", 
        async: true,
        data: "pageid="+value+"&lang=utf-8&out=json", 
        url: "http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr", 
        cache: false, 
        dataType: "jsonp", 
        jsonp: "jquerycallback", 

		beforeSend: function () {
             
 
              
                 $("#div_ajax_load_image").show();
         
       },
       complete: function () {
		            
                 $("#div_ajax_load_image").fadeOut();
       },
        success: function(data) 
        {
         
         // createFile(data.tag,value+'.php');
	
		if(value=='058f' || value=='058W'){
			
			$(".foin_"+value).html(data.tag).promise().done(function(){

				
					 $bxSlider = $('.foin_'+value).bxSlider({
      //work method
      mode: 'horizontal', // 'horizontal' : 좌,우 'vertical' : 상,하 'fade' : fade in, out
      speed: 300, // m/s ex > 1000 = 1s
      easing: 'ease-in-out', // 동작 가속도 css와 동일
      slideMargin:0, // img와 img 사이 간격
      startSlide: 0, // 시작시 로드될 이미지 (0부터시작)
      preloadImages: 'visible', // "visible"은 보여질때 이미지를 로드, "all"로 설정하면 이미지가 모드 로드되야 작동.
      randomStart: false, //시작시 랜덤으로 이미지 로드 여부 (boolean)
      adaptiveHeight:true, //각 이미지의 높이에 따라 슬라이더 높이의 유동적 조절 여부
      adaptiveHeightSpeed: 300, //adaptiveHeight 동작속도
      video: true,//slide에 video 사용여부, 사용할 시에 plugins/jquery.fitvids.js include 필요
      captions:false, // img 태그에 title 속성값을 사용할시, 그부분의 출력여부 단, css .bx-wrapper .bx-caption 부분 조절 필요

      //responsive method
      responsive: true,//반응형 지원 여부

      touchEnabled: true,//터치스와이프 기능 사용여부
      swipeThreshold: 30,//터치하여 스와이프 할때 변환 효과에 소모되는 시간 설정
      oneToOneTouch: true, // fade 효과가 아닌 슬라이드는 손가락의 접지상태에 따라 슬라이드를 움직일수있다.
      preventDefaultSwipeX: true, // onoToOneTouch 에서 true일 경우, 손가락을따라 x축으로 움직일지에 대한 여부
      preventDefaultSwipeY:false , // onoToOneTouch 에서 true일 경우, 손가락을따라 y축으로 움직일지에 대한 여부

      //control method
      controls: true, // 좌,우 컨트롤 버튼 출력 여부

      auto: true, // 자동 재생 활성화
      autoControls:false, //자동재생 제어버튼 활성화  단, auto 모드가 활성화 되어있어야함.

      autoControlsCombine:false, // 재생시 중지버튼 활성화, 중지시 재생버튼 활성화
      pause:3000, // 자동 재생 시 각 슬라이드 별 노출 시간
      autoStart: true, // 페이지 로드가 되면, 슬라이드의 자동시작 여부
      autoDirection: 'next', // 자동 재생 시에 정순, 역순(prev) 방식 설정
      autoHover: true, // 슬라이드 오버시 재생 중단 여부 (false: 오버무시) 
      autoDelay:0, // 자동 재생 전 대기 시간 설정
      hideControlOnEnd: false, //첫번째 슬라이드 일경우 이전 버튼 삭제, 마지막 슬라이드 일 경우 다음 버튼 삭제 단, infiniteLoop: false 일 경우만 사용 가능.
      infiniteLoop: true,//마지막에 도달 했을시, 첫페이지로 갈 것인가 멈출것인가

	   onSliderLoad: function(){
		   setTimeout(function() {
               		$('.sliders2').height($(".thum a img").height()+10);
            }, 30);
			
			  if($(".slide").height() <50 ){
				  $('#sliders').height(130);		
				  console.log($('#sliders').height()+'onSliderLoad');
			  }
			
			if(index ==shopAjax.length -1){
						
					 setTimeout( "reload_rg('shop_','271')", 1000);
					$("#aa").css('background-color','#818899');

				}
			
		}

  });           

				
			});



		} else {
			
			$("#foin_"+value).html(data.tag).promise().done(function(){

				$("#foin_"+value).prev().children().first().show()
				if(index ==shopAjax.length -1){
						
					 setTimeout( "reload_rg('shop_','292')", 1000);
					 setTimeout( "swipedisable_rg()", 500);
					$("#aa").css('background-color','#818899');
					
					

				}
			});


		}
							
			
			
        },
        error: function(xhr, status, error) { ; } 

		

		
    });
}

function createFile(data,filename)
{

    $.ajax({
        type: "POST", 
        async: true,
        data : {data :data,filename :filename},
        url: "./createfile.php", 
        success: function(data) 
        {
        },
        error: function(xhr, status, error) { ; } 
    });
}


   function swipedetect(el, callback){

 var touchsurface = el,
 swipedir,
 startX,
 startY,
 distX,
 distY,
 threshold = 100, //required min distance traveled to be considered swipe
 restraint = 80, // maximum distance allowed at the same time in perpendicular direction
 allowedTime = 500, // maximum time allowed to travel that distance
 elapsedTime,
 startTime,
 handleswipe = callback || function(swipedir){}

 touchsurface.addEventListener('touchstart', function(e){

  var touchobj = e.changedTouches[0]
  swipedir = 'none'
  dist = 0
  startX = touchobj.pageX
  startY = touchobj.pageY
  startTime = new Date().getTime() // record time when finger first makes contact with surface
//  e.preventDefault()

 }, false)

 touchsurface.addEventListener('touchmove', function(e){
	
	  var touchobj = e.changedTouches[0]
  distX = touchobj.pageX - startX // get horizontal dist traveled by finger while in contact with surface
  distY = touchobj.pageY - startY // get vertical dist traveled by finger while in contact with surface
  elapsedTime = new Date().getTime() - startTime // get time elapsed
  if (elapsedTime <= allowedTime){ // first condition for awipe met

   if (Math.abs(distX) >= threshold && Math.abs(distY) <= restraint){ // 2nd condition for horizontal swipe met
    swipedir = (distX < 0)? 'left' : 'right' // if dist traveled is negative, it indicates left swipe
   }
   else if (Math.abs(distY) >= threshold && Math.abs(distX) <= restraint){ // 2nd condition for vertical swipe met
    swipedir = (distY < 0)? 'up' : 'down' // if dist traveled is negative, it indicates up swipe
   }
  }


if(swipedir=='up' || swipedir=='down' || swipedir=='none' ){
		e.stopPropagation();
}



//  e.preventDefault() // prevent scrolling when inside DIV
 }, false)

 touchsurface.addEventListener('touchend', function(e){

  var touchobj = e.changedTouches[0]
  distX = touchobj.pageX - startX // get horizontal dist traveled by finger while in contact with surface
  distY = touchobj.pageY - startY // get vertical dist traveled by finger while in contact with surface
  elapsedTime = new Date().getTime() - startTime // get time elapsed
  if (elapsedTime <= allowedTime){ // first condition for awipe met
   if (Math.abs(distX) >= threshold && Math.abs(distY) <= restraint){ // 2nd condition for horizontal swipe met
    swipedir = (distX < 0)? 'left' : 'right' // if dist traveled is negative, it indicates left swipe
   }
   else if (Math.abs(distY) >= threshold && Math.abs(distX) <= restraint){ // 2nd condition for vertical swipe met
    swipedir = (distY < 0)? 'up' : 'down' // if dist traveled is negative, it indicates up swipe
   }
  }


//  handleswipe(swipedir)
//  e.preventDefault()
 }, false)

	  return touchsurface;
}






 function swipedisable(el, callback){

 var touchsurface = el,
 handleswipe = callback || function(swipedir){}

 touchsurface.addEventListener('touchstart', function(e){

 // e.preventDefault();
e.stopPropagation();
 }, false)

 touchsurface.addEventListener('touchmove', function(e){
// e.preventDefault();
 e.stopPropagation();
 }, false)

 touchsurface.addEventListener('touchend', function(e){
//  e.preventDefault(); 
  e.stopPropagation();
 
 }, false)

	  return touchsurface;
}