<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta http-equiv="Expires" content="-1">

	<meta property="og:title" content="앱팝콘" />
	<meta property="og:url" content="http://" />
	<meta property="og:description" content="인기 순위 앱 정보를 알려 드립니다." />
	<meta property="og:image" content="http://" />

	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<link href="/css/app_common.css" rel="stylesheet" />
	<link href="/css/app_contents.css" rel="stylesheet" />
	<script type='text/javascript' src='http://218.50.2.123:9988/js/jquery.cookie.js'></script>
	<script type='text/javascript' src='http://218.50.2.123:9988/js/shortcut.js'></script>

	<!-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> -->

	<title>앱팝콘</title>
	<script>
	var isOnIOS = navigator.userAgent.match(/iPad/i)|| navigator.userAgent.match(/iPhone/i);
	var eventName = isOnIOS ? "pagehide" : "beforeunload";

	window.addEventListener(eventName, function (event) { 
		window.event.cancelBubble = true; // Don't know if this works on iOS but it might!
		var dDate = new Date();
		var dSec = 20;
		dDate.setTime(dDate.getTime()+(dSec*60))
		$.cookie('hiadone_pop', "2", {expires:dDate});
	} );
	</script>
</head>
<body>
	<!-- GNB 시작 -->
	<header>
		<nav>
			<div class="container">
				<ul class="nav HEADER">
					<li>
					<button class="ssm-toggle-nav">
					<span></span>
					<span></span>
					<span></span>
					</button>
					</li>
					<li><div class="logo"><img src="image/logo.png"></div></li>
					<li><div class="search"><img src="image/icon-search.png"></div></li>
				</ul>
			</div>
		</nav>
	</header>
	<!--/* GNB 끝 -->

	<!--/ 오늘의 인기 앱 -->
	<section>
		<div class="panel" id="ARTICLE1" name="ARTICLE1">
			<div class="panel_header">
				<div class="container">
					<div class="row">
						오늘의 인기앱 뉴스  <div class="pull-right"><img src="image/arrow_right.png" class="arrow_more"></div>
					</div>
				</div>
			</div>
			<div class="panel_body">
				<div class="container">
					<div class="row">
						<!-- <iframe width="100%" height="175px" src="article1.html" border="0" frameborder='0' scrolling='no' marginwidth='0' marginheight='0'></iframe> -->
						<iframe width="100%" height="175px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jB&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>	
					</div>
				</div>
			</div>
		</div><!--/* pannel -->
	</section>
	<!--/* 오늘의 인기 앱 끝 -->

	<!-- 금주의 추천 app -->
	<section>
		<div class="panel" id="ARTICLE2" name="ARTICLE2">
			<div class="panel_header">
				<div class="container">
					<div class="row">
						금주의 추천 APP <div class="pull-right"><img src="image/arrow_right.png" class="arrow_more"></div>
					</div>
				</div>
			</div>
			<div class="panel_body">
				<div class="container">
					<div class="row">
						<div class="frameset1">
							<!-- <iframe width="100%" height="500px" src="article2.html" border="0" frameborder='0' scrolling='no' marginwidth='0' marginheight='0'></iframe> -->
							<iframe width="100%" height="500px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jC&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="banner_top">
		<div class="container">
			<div class="row">
				<iframe width="320px" height="130px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jD&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
			</div>
		</div>
	</section>

	<section>
		<div class="panel" id="ARTICLE3" name="ARTICLE3">
			<div class="panel_header">
				<div class="container">
					<div class="row">
						최신 히트게임  <div class="pull-right"><img src="image/arrow_counter.png" class="arrow_more"></div>
					</div>
				</div>
			</div>
			<div class="panel_body">
				<div class="container">
					<div class="row">
						<div class="frameset2">
							<!-- <iframe width="100%" height="360px" src="article3.html" border="0" frameborder='0' scrolling='no' marginwidth='0' marginheight='0'></iframe> -->
							<iframe width="100%" height="360px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jE&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>	

	<section>
		<div class="panel" id="ARTICLE4" name="ARTICLE4">
			<div class="panel_header">
				<div class="container">
					<div class="row">
						라이프 스타일 <div class="pull-right"><img src="image/arrow_counter.png" class="arrow_more"></div>
					</div>
				</div>
			</div>
			<div class="panel_body">
				<div class="container">
					<div class="row">
						<div class="frameset3">
							<!-- <iframe width="100%" height="360px" src="article4.html" border="0" frameborder='0' scrolling='no' marginwidth='0' marginheight='0'></iframe> -->
							<iframe width="100%" height="360px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jF&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="banner_middle">
		<div class="container">
			<div class="row">
				<iframe width="320px" height="130px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jG&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
			</div>
		</div>
	</section>

	<section>
		<div class="panel" id="ARTICLE5" name="ARTICLE5">
			<div class="panel_header">
				<div class="container">
					<div class="row">
						직장인 생활정보 <div class="pull-right"><img src="image/arrow_counter.png" class="arrow_more"></div>
					</div>
				</div>
			</div>
			<div class="panel_body">
				<div class="container">
					<div class="row">
						<div class="frameset4">
							<!-- <iframe width="100%" height="360px" src="article5.html" border="0" frameborder='0' scrolling='no' marginwidth='0' marginheight='0'></iframe> -->
							<iframe width="100%" height="360px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jH&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section>
		<div class="panel" id="ARTICLE6" name="ARTICLE6">
			<div class="panel_header">
				<div class="container">
					<div class="row">
						인기앱 즐겨찾기  <div class="pull-right"><img src="image/arrow_counter.png" class="arrow_more"></div>
					</div>
				</div>
			</div>
			<div class="panel_body">
				<div class="container">
					<div class="row">
						<!-- <iframe width="100%" height="430px" src="article6.html" border="0" frameborder='0' scrolling='no' marginwidth='0' marginheight='0'></iframe> -->
						<iframe width="100%" height="450px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02MM&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="banner_bottom">
		<div class="container">
			<div class="row">
				<iframe width="320px" height="130px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jJ&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
			</div>
		</div>
	</section>

	<footer>
		<div class="container">
			<span>서비스이용약관</span> &nbsp;|&nbsp; <span class="active">개인정보취급방침</span> &nbsp;|&nbsp; <span>제휴문의</span>
		</div>
	</footer>

</body>
</html>