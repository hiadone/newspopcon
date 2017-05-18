<!--#include virtual="/common/config/config.asp"-->
<%
Dim sType : sType = Is_Null(RequestQuery("type"),"etnews")
Dim sURL, sCode, sIfrCode1, sIfrCode2, sIfrCode3, sIfrCode4, sIfrCode5, sIfrCode6, sIfrCode7, sIfrCode8
Select Case sType 
Case "moneyW"  ' 머니워크
		sURL ="moneyW"
		sCode = "02ca"
		sIfrCode1 = "02cI"
		sIfrCode2 = "02cJ"
		sIfrCode3 = "02cF"
		sIfrCode4 = "02cH"
		sIfrCode5 = "02cG"
		sIfrCode6 = "02cL"
		sIfrCode7 = "02ms"
		sIfrCode8 = "02mt"




	Case "financial" ' 파이낸셜
		sURL ="financial"
		sCode = "02cb"
		sIfrCode1 = "02cQ"
		sIfrCode2 = "02cR"
		sIfrCode3 = "02cN"
		sIfrCode4 = "02cP"
		sIfrCode5 = "02cO"
		sIfrCode6 = "02cS"
		sIfrCode7 = "02mo"
		sIfrCode8 = "02mp"





	Case "herald" ' 헤럴드경제
		sURL ="herald"
		sCode = "02cc"
		sIfrCode1 = "02cX"
		sIfrCode2 = "02cY"
		sIfrCode3 = "02cT"
		sIfrCode4 = "02cW"
		sIfrCode5 = "02cV"
		sIfrCode6 = "02cZ"
		sIfrCode7 = "02mq"
		sIfrCode8 = "02mr"





	Case "bridgenews" ' 브릿지경제
		sURL ="bridgenews"
		sCode = "02pn"
		sIfrCode1 = "02pJ"
		sIfrCode2 = "02pK"
		sIfrCode3 = "02pE"
		sIfrCode4 = "02pG"
		sIfrCode5 = "02pF"
		sIfrCode6 = "02pL"
		sIfrCode7 = "02pH"
		sIfrCode8 = "02pI"



	Case "asiae" ' 아시아경제
		sURL ="asiae"
		sCode = "02po"
		sIfrCode1 = "02pS"
		sIfrCode2 = "02pT"
		sIfrCode3 = "02pM"
		sIfrCode4 = "02pO"
		sIfrCode5 = "02pN"
		sIfrCode6 = "02pU"
		sIfrCode7 = "02pP"
		sIfrCode8 = "02pQ"




	Case "heraldpop" ' 헤럴드팝
		sURL ="heraldpop"
		sCode = "02pp"
		sIfrCode1 = "02pa"
		sIfrCode2 = "02pb"
		sIfrCode3 = "02pV"
		sIfrCode4 = "02pX"
		sIfrCode5 = "02pW"
		sIfrCode6 = "02pc"
		sIfrCode7 = "02pY"
		sIfrCode8 = "02pZ"



	Case "issueup" ' 이슈업
		sURL ="issueup"
		sCode = "02tC"
		sIfrCode1 = "02t6"
		sIfrCode2 = "02t7"
		sIfrCode3 = "02t1"
		sIfrCode4 = "02t3"
		sIfrCode5 = "02t2"
		sIfrCode6 = "02t9"
		sIfrCode7 = "02t4"
		sIfrCode8 = "02t5"



End Select 
%>
<!doctype html>
<html>
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
		<meta name="description" content=" ">
		<link rel="shortcut icon" href=" ">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=yes">
		<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="common/css/normalize.css" rel="stylesheet" type="text/css">
		<link href="common/css/common.css" rel="stylesheet" type="text/css">
		<link href="common/css/main.css" rel="stylesheet" type="text/css">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="common/js/main.js"></script>
		<script type='text/javascript' src='http://218.50.2.123:9988/js/jquery.cookie.js'></script>
		<script type='text/javascript' src='http://218.50.2.123:9988/js/shortcut.js'></script>
		</head>
	<body  onload="callScheme('GRP', 6, 'DEFAULT');">
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
							<a href="/pop.asp?type=<%=sURL%>" class="header-menu" title="메뉴를엽니다"><img src="common/image/header_menu.png" alt="메뉴버튼"/></a>
							<h1><a href="/pop.asp?type=<%=sURL%>" title="메인홈으로이동"><img src="common/image/header_logo.png" alt="로고"/></a></h1>
							<a href="/pop.asp?type=<%=sURL%>" class="header-srh" title="검색합니다"><img src="common/image/header_srh.png" alt="검색버튼"/></a>
						</div><!-- #int-header -->
					</div><!--int-gh-top-->
					<div class="int-gh-bottom">	
						<div id="int-gh-gnb">
							<h2 class="marker"><a id="navi-main">주메뉴</a></h2>
							<ul>
								<li class="guide"><a id="int-gnb-button-01" href="/pop.asp?type=<%=sURL%>" title="많이 본 뉴스로 이동합니다."><img src="common/image/gnb01.png" alt="많이본 뉴스"/></a></li>
								<li><a id="int-gnb-button-02" href="/pop.asp?type=<%=sURL%>" title="실시간토픽로 이동합니다."><img src="common/image/gnb02.png" alt="실시간토픽"/></a></li>
								<li><a id="int-gnb-button-03" href="/pop.asp?type=<%=sURL%>" title="베스트댓글로 이동합니다."><img src="common/image/gnb03.png" alt="댓글BEST"/></a></li>
								<li><a id="int-gnb-button-04" href="/pop.asp?type=<%=sURL%>" title="포토로 이동합니다."><img src="common/image/gnb04.png" alt="포토"/></a></li>
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
							<div class="int-section">
								<div>
									<h2><img src="common/image/all_news.png" alt="전체기사"/></h2>
									<span class="more"><a href="/pop.asp?type=<%=sURL%>" title="더보기"><img src="common/image/arrow.png" alt="더보기"/></a></span>
								</div>
								<div>
									<iframe id="top-article" width="100%" height="230" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode1%>&out=iframe" frameborder="0" scrolling="no"></iframe>
								</div>
							</div><!-- int-section -->
							<div class="int-section">
								<div>
									<h2><img src="common/image/photo_news.png" alt="포토뉴스"/></h2>
								</div>
								<div>
									<iframe id="int-page-iframe-view" width="100%" height="120" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" frameborder="0" scrolling="no" ></iframe>

								</div>
							</div><!-- int-section -->
							<div id="int-pagination">
								<p> <a href="/pop.asp?type=<%=sURL%>" class="prev" title="이전페이지가 보입니다."><img src="common/image/prev.png" alt="이전으로"/></a>
									<a class="int-pagination-button select" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a href="/pop.asp?type=<%=sURL%>" class="next" title="다음페이지가 보입니다."><img src="common/image/next.png" alt="다음으로"/></a>
								</p>
							</div>
							<div class="int-section">
								<div>
									<h2><img src="common/image/popular_news.png" alt="많이 본 뉴스"/></h2>
									<span class="more"><a href="/pop.asp?type=<%=sURL%>" title="더보기"><img src="common/image/arrow.png" alt="더보기"/></a></span>
								</div>
									<iframe width="100%" height="150" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode3%>&out=iframe" frameborder="0" scrolling="no" ></iframe>
								<div>
								</div>
							</div><!-- int-section -->

							<!-- my 금융정보 -->
							<div class="int-section">
								<div>
									<h2><img src="common/image/title_mylife.png" alt="my 생활정보"/></h2>
								</div>
								<div class="w-iframe">
									<iframe width='100%' height='100px' src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode6%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div><!--/* my 금융정보 int-section -->


                            <div class="int-section"><!-- 새로 들어가는 만화놈1 360?-->
								<div>
									<h2><img src="common/image/week_webtoon.png" alt="요일별 웹툰"/></h2>
									<span class="more"><a href="/" title="더보기"><!--<img src="common/image/arrow.png" alt="더보기"/> --></a></span>
								</div>
								<div class="S-iframe">
									<iframe width="100%" height="340px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode7%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div><!-- int-section -->


							<div class="int-section no-margin">
								<div>
									<h2><img src="common/image/best_news.png" alt="베스트뉴스"/></h2>
								</div>
								<div class="f-iframe">
									<iframe width="100%" height="273" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode4%>&out=iframe" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div><!--int-section-->



                            <div class="int-section"><!-- 새로 들어가는 만화놈2 360?-->
								<div>
									<h2><img src="common/image/popular_webtoon.png" alt="인기 웹툰"/></h2>
									<span class="more"><a href="/" title="더보기"> <!-- <img src="common/image/arrow.png" alt="더보기"/> --> </a></span>
								</div>
								<div class="S-iframe">
									<iframe width="100%" height="340px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode8%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"  ></iframe>
								</div>
							</div><!-- int-section -->



							<div class="int-section">
								<div>
									<h2><img src="common/image/week_test.png" alt="금주의 심리테스트"/></h2>
								</div>
								<div class="f-iframe">
									<iframe width="100%" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode5%>&out=iframe" allowTransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
								</div>
							</div><!--int-section-->

						</div><!-- #int-main-section -->
					</div><!-- #int-main-container -->
				</div>
			</div>
			
			<div id="int-global-footer">
				<!--
                <div id="int-footer-ad">
					<div class="int-wrap-320px int-ad-wrap">
						<a href="http://ad1.eventmanager.co.kr/?CODE_NAME=HIADONE&MEDIA_CODE=newspopcon" target="_blank"><img src="common/image/footer_ad.png" alt="광고문의"/></a>
						<img src="common/image/footer_guide.png" alt="광고문의"/>
						<a href="tel:02-2105-7400"><img src="common/image/footer_number.png" alt="광고문의"/></a>
					</div>
				</div> -->
                
                <!-- #int-footer-ad -->
				<div id="int-footer-copyright">
					<div class="int-wrap-320px">
						<span class="copyright"><img src="common/image/copyright.png" alt="카피라이터"/></span>
					</div>
				</div>
			</div><!-- #int-global-footer -->
		</div><!-- #int-global-wrapper -->
		<iframe width="0" height="0" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sCode%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
	</body>
</html>	