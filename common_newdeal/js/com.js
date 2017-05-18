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