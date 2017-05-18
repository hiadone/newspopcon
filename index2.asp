<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Newspopcon</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="css_new/import.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script>
	$(document).ready(function(){
	//로딩후 첫번째 메인 메뉴의 배경색상 변경
		$('header nav ul li:first-child').css('background-color' , '#fd8c30');
	//클릭한 메뉴의 배경 색상 변경
		$('header nav ul li').click(function(){
			$('header nav ul li').css('background-color' , '#002a4b');	
			$(this).css('background-color' , '#fd8c30');
		});
	//header의 높이값 계산
		var hei =$('header').height() - 6
		$('header').css('height' , hei);

   //scrollTop 의 위치 0으로 지정
		$('html , body').animate({scrollTop : 0 });


	//서브메뉴 클릭시 scroll bar 이동 
		$("header nav ul li").click(function(){
                $('html, body').animate({scrollTop : ($("#"+$(this).data('id')).offset().top - $("header").height() - 12 )});
        });
    //홈버튼 클릭시 top 으로 이동
    	$('header h1 span img').click(function(){
    		$('html , body').animate({scrollTop : 0});
    	});
	});
</script>

</head>

<body>
	<header>
		<h1>
			<img src="images/logo.png" alt="logo">
			<span><img src="images/home.png" alt="home"></span>
		</h1>
		<nav>
			<ul>
				<li data-id="scroll01">뉴 스</li>
				<li data-id="scroll02">생활정보</li>
				<li data-id="scroll03">핫토픽</li>
				<li data-id="scroll04">인기웹툰</li>
			</ul>
		</nav>
	</header>

	<div class="wrap">
	<!-- 전체기사 영역 01 -->
		<section class="info01" id="scroll01">
			<h2>전체기사</h2>
				<!-- iframe 영역 -->
				<div id="foin_pageid01">
					<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Ca&lang=utf-8&out=script'></script>

				</div>
		</section>

	<!-- 포토뉴스 영역 02-->
		<section class="info02">
			<h2>포토뉴스</h2>				
			<div>
			<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Cb&lang=utf-8&out=script'></script>
			
			</div>
		</section>

	<!-- 생활정보 영역 03 -->
		<section class="info03" id="scroll02">
			<h2>생활정보</h2>
				<div id="foin_pageid03">
					<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Cc&lang=utf-8&out=script'></script>
					   
				</div>
		</section>

	<!-- 요일별 웹툰 04 -->
		<section class="info04">
			<h2>요일별 웹툰</h2>
				<div id="foin_pageid04">
					<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02kX&lang=utf-8&out=script'></script>
				</div>
		</section>

	<!-- 핫토픽 02-->
		<section class="info02" id="scroll03">
			<h2>핫토픽</h2>
			<div>
				<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=0320&lang=utf-8&out=script'></script>
				
			</div>
			
		</section>

	<!-- Best 신문보기 05 -->


	<!-- 인기웹툰 04 -->
		<section class="info04" id="scroll04">
			<h2>인기 웹툰</h2>
			<div id="foin_pageid04">
				<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02kY&lang=utf-8&out=script'></script>
			</div>
		</section>

	
 	</div>
 	<!-- 하단 푸터 -->
 	<footer>
 		<a href="tel:02-2105-7498">
 			<h3>
 				광 고 문 의 			 			
 			</h3>
 		</a>
 		<p>
 			<span>뉴스팝콘 | newspopcon.com</span>
 			Copyright ⓒ NEWSPOPCON ALL RIGHT RESERVED
 		</p>
 	</footer>
</body>
</html>
