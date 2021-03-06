<!doctype html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>NEWSPOPCON</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="format-detection" content="telephone=no, email=no, address=no"><!-- 자동 링크 적용 안되게 -->
		<meta property="og:site_name" content="NEWSPOPCON">
		<meta property="og:title" content="NEWSPOPCON">
		<meta property="og:type" content="website">
		<meta property="og:url" content=" ">
		<meta property="og:image" content=" ">
		<meta property="og:description" content="NEWSPOPCON">
		<meta name="description" content="NEWSPOPCON">
		<link rel="shortcut icon" href=" ">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=yes">
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		<link href="common/css/normalize.css" rel="stylesheet" type="text/css">
		<link href="common/css/common.css" rel="stylesheet" type="text/css">
		<link href="common/css/main.css" rel="stylesheet" type="text/css">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="common/js/main.js"></script>
		
		<script type='text/javascript' src='http://www.mobipopcon.com/js/jquery.cookie.js'></script>
		<script type='text/javascript' src='http://www.mobipopcon.com/js/shortcut.js'></script>

		<script type="text/javascript">
			window.addEventListener('load', function() { window.scrollTo(0,1); }, false);//주소창 숨기기
		</script>

<script language = "javascript"> 
	if (window.history && window.history.pushState) {
		window.history.pushState('forward', null, document.location.href);

		$(window).on('popstate', function() {
			location.replace("http://www.popapp.co.kr/");
		});
	}
</script> 


		</head>
	<body onload="callScheme('GRP', 4, 'DEFAULT');" >

<!--구글애널리틱스 시작 -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-88853523-2', 'auto');
  ga('send', 'pageview');

</script>
<!--구글애널리틱스 끝 -->


		<div id="skip-navigation">
			<ol>
				<li><a href="#navi-main">주 메뉴 바로 가기</a></li>
				<li><a href="#contents">본문 내용 바로 가기</a></li>
			</ol>
		</div><!-- #skip-navigation -->

		<div id="int-global-wrapper">
			<div id="int-global-header">
				<div class="int-wrap-320px">
					<div class="int-gh-top">
						<div id="int-header">
							<a href="/" class="header-menu" title="메뉴를엽니다"><img src="common/image/header_menu.png" alt="메뉴버튼"/></a>
							<h1><a href="/" title="메인홈으로이동"><img src="common/image/header_logo.png" alt="로고"/></a></h1>
							<a href="/" class="header-srh" title="검색합니다"><img src="common/image/header_srh.png" alt="검색버튼"/></a>
						</div><!-- #int-header -->
					</div><!--int-gh-top-->
					<div class="int-gh-bottom">	
						<div id="int-gh-gnb">
							<h2 class="marker"><a id="navi-main">주메뉴</a></h2>
							<ul>
								<li class="guide"><a id="int-gnb-button-01" href="/" title="많이 본 뉴스로 이동합니다."><img src="common/image/gnb01.png" alt="많이본 뉴스"/></a></li>
								<li><a id="int-gnb-button-02" href="/" title="실시간토픽로 이동합니다."><img src="common/image/gnb02.png" alt="실시간토픽"/></a></li>
								<li><a id="int-gnb-button-03" href="/" title="베스트댓글로 이동합니다."><img src="common/image/gnb03.png" alt="댓글BEST"/></a></li>
								<li><a id="int-gnb-button-04" href="/" title="포토로 이동합니다."><img src="common/image/gnb04.png" alt="포토"/></a></li>
							</ul>
						</div><!-- #int-gh-gnb -->
					</div><!--int-gh-bottom-->
				</div>
			</div><!-- #int-global-header -->
			
			<div id="int-body-wrapper">
				<h2 class="marker"><a id="contents">본문 내용</a></h2>
				<div id="int-container">
					<div id="int-main-container">
						<div id="int-main-section">
                           <!--
							<div id="banner_top">
								<iframe width="320" height="80" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=030k&out=iframe" allowTransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
							</div>
                           -->
							<div class="int-section">
								<div>								   
									<h2><img src="common/image/all_news.png" alt="전체기사"/></h2>
									<span class="more"><a href="/" title="더보기"> <!-- <img src="common/image/arrow.png" alt="더보기"/> --> </a></span> 
								</div>
								<div>
									<iframe width="100%" height="230" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Ca&out=iframe" frameborder="0" scrolling="no"></iframe>
								</div>
							</div><!-- int-section -->
							<div class="int-section">
								<div>
									<h2><img src="common/image/photo_news.png" alt="포토뉴스"/></h2>
								</div>
								<div>
									<iframe id="int-page-iframe-view" width="100%" height="120" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Cb&out=iframe" frameborder="0" scrolling="no" ></iframe>

								</div>
							</div><!-- int-section -->
							<div id="int-pagination">
								<p> <a href="/" class="prev" title="이전페이지가 보입니다."><img src="common/image/prev.png" alt="이전으로"/></a>
									<a class="int-pagination-button select" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Cb&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Cb&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Cb&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Cb&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a href="/" class="next" title="다음페이지가 보입니다."><img src="common/image/next.png" alt="다음으로"/></a>
								</p>
							</div>	                    

							<div class="int-section">
								<div>
									<h2><img src="common/image/popular_news.png" alt="많이 본 뉴스"/></h2>
									<span class="more"><a href="/" title="더보기"> <!--<img src="common/image/arrow.png" alt="더보기"/> --></a></span>
								</div>
									<iframe width="100%" height="150px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Cc&out=iframe" frameborder="0" scrolling="no" ></iframe>
							</div><!-- int-section -->
					


                            <div class="int-section"><!-- 새로 들어가는 만화놈1 360?-->
								<div>
									<h2><img src="common/image/week_webtoon.png" alt="요일별 웹툰"/></h2>
									<span class="more"><a href="/" title="더보기"><!--<img src="common/image/arrow.png" alt="더보기"/> --></a></span>
								</div>
								<div class="S-iframe">
									<iframe width="100%" height="340px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02kX&out=iframe" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div><!-- int-section -->


								<!-- my 생활정보 -->
							<div class="int-section">
								<div>
									<h2><img src="common/image/title_mylife.png" alt="my 생활정보"/></h2>
								</div>
								<div>
									<iframe width="100" height="120px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=0320&out=iframe" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div><!--/* my 생활정보 int-section -->


							<!-- 신문보기 리스트형-->
							<!-- div class="int-section no-margin">
								<div>
									<h2><img src="common/image/best_news.png" alt="베스트 신문보기"/></h2>
								</div>
								<div class="f-iframe">
									<iframe width="100%" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Ci&out=iframe" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div><!--int-section-->
							<!-- 신문보기 끝 -->

							<!-- 신문보기 배너형-->
							<div class="int-section no-margin">
								<div>
									<h2><img src="common/image/best_news.png" alt="베스트 신문보기"/></h2>
								</div>
								<div class="f-iframe">
									<iframe width="100%" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=03EU&out=iframe" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div><!--int-section-->
							<!-- 신문보기 배너형 끝-->
							



                            <div class="int-section"><!-- 새로 들어가는 만화놈2 360?-->
								<div>
									<h2><img src="common/image/popular_webtoon.png" alt="인기 웹툰"/></h2>
									<span class="more"><a href="/" title="더보기"> <!-- <img src="common/image/arrow.png" alt="더보기"/> --> </a></span>
								</div>
								<div class="S-iframe">
									<iframe width="100%" height="340px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02kY&out=iframe" frameborder="0" scrolling="no" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
								</div>
							</div><!-- int-section -->

							
							<div class="int-section">
								<div>
									<h2>
										<img src="common/image/title_weekhot.png" alt="주간핫리포트"/>
									</h2>
								</div>
								<div class="f-iframe">
									<iframe width="100%" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=027J&out=iframe" allowTransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
								</div>			
							</div><!--int-section-->

<%
Randomize
Dim randomInt
'Response.write  int(Rnd() * 2  +1)
randomInt = int(Rnd() * 2  +1)
'Response.write randomInt
If randomInt = 1 Then 
%>
<!--#include virtual="/include/index1.asp"-->
<% Else %>
<!--#include virtual="/include/index2.asp"-->
<% End If %>

							<section id="banner_bottom" style="border-bottom:5px solid #ddd;">
								<!-- <iframe width="320px" height="130px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jJ&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe> -->
								<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02u8&out=script"></script>
							</section>

						</div><!-- #int-main-section -->
					</div><!-- #int-main-container -->
				</div>
			</div>
				  
			<div id="int-global-footer">               
                <!-- #int-footer-ad -->
				<div id="int-footer-copyright">
					<div class="int-wrap-320px">
						<span class="copyright"><img src="common/image/copyright.png" alt="카피라이터"/></span>
					</div>
				</div>
			</div><!-- #int-global-footer -->
		</div><!-- #int-global-wrapper -->
	</body>
</html>	