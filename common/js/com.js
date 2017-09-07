//숫자만 입력
var onlyNumber = function(pId){
	$("input[name="+pId+"]").on("keyup", function() {	$(this).val( $(this).val().replace(/[^0-9]/gi,"") );});
	$("input[name="+pId+"]").on("blur", function() {	$(this).val( $(this).val().replace(/[^0-9]/gi,"") );});
}

//자리수 제한
var setMaxLenght = function(pId, pCnt){
	$("input[name="+pId+"]").on("keyup", function() { if($(this).val().length > pCnt){ alert("최대 "+pCnt+"까지 입력 가능합니다."); $(this).val($(this).val().substring(0, pCnt));$(this).focus();}});
}

//자리수 고정
var setLenght = function(pId, pCnt){
	$("input[name="+pId+"]").on("blur", function() { if($(this).val().length != pCnt){ alert("입력 값이 "+pCnt+"자리가 아닙니다."); $(this).val('');$(this).focus();}});
}

//최대 숫자 
var setMaxNum = function(pId, pCnt){
	$("input[name="+pId+"]").on("blur", function() { if(Number($(this).val()) > pCnt){ alert("입력 값이 "+pCnt+"보다 큽니다."); $(this).val('');$(this).focus();}});
}

//체크박스 전체컨트롤
var setAllCheckboxControl = function(pId, pTargetName){

	if($('#'+pId).is(':checked')){
		$('input[name='+pTargetName+']').prop('checked',true);
	}else{
		$('input[name='+pTargetName+']').prop('checked',false);
	}
}

//처리 중 화면 
function wrapWindowByMask(){
	//화면의 높이와 너비를 구한다.
	var maskHeight = $(document).height();  
	var maskWidth = $(window).width();  

	//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
	$('#mask').css({'width':maskWidth,'height':maskHeight});

	//애니메이션 효과
	$('#mask').fadeIn(1000);      
	$('#mask').fadeTo("slow",0.8);    
}
// 구글애널리틱스 시작



(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-88829342-3', 'auto');
  ga('send', 'pageview');
// 구글애널리틱스 끝
  (function() {
    function async_load(){
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.id='hiadone_shortcut';
      s.src = "http://shortcut.newspopcon.com/views/shortcut/shortcut.js?brd_key=campaign&post_id=5&v=0.111";
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    window.attachEvent ? window.attachEvent('onload', async_load) : window.addEventListener('load', async_load, false);
  })();

  // 쿠키 입력
    function set_cookie(name, value, expirehours, domain) {
        var today = new Date();
        today.setTime(today.getTime() + (60*60*1000*expirehours));
        document.cookie = name + '=' + escape( value) + '; path=/; expires=' + today.toGMTString() + ';';
        if (domain) {
            document.cookie += 'domain=' + domain + ';';
        }
    }

    // 쿠키 얻음
    function get_cookie(cookie_name) {
        var find_sw = false;
        var start, end;
        var i = 0;

        name = cookie_name;

        for (i = 0; i <= document.cookie.length; i++) {
            start = i;
            end = start + name.length;

            if (document.cookie.substring(start, end) == name) {
                find_sw = true
                break
            }
        }

        if (find_sw === true) {
            start = end + 1;
            end = document.cookie.indexOf(';', start);

            if (end < start) {
                end = document.cookie.length;
            }

            return document.cookie.substring(start, end);
        }
        return '';
    }