<!--#include virtual="/common/config/config_mobi.asp"-->
<%
Dim sType : sType = Is_Null(RequestQuery("type"),"etnews")
Dim sURL, sCode, sIfrCode1, sIfrCode2, sIfrCode3, sIfrCode4, sIfrCode5, sIfrCode6, sIfrCode7, sIfrCode8, sIfrCode9, sIfrCode10, wetCode1, wetCode2, wetCode3, wetCode4, wetCode5, wetCode6, wetCode7, wetCode8, wetCode9
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
		sIfrCode9 = "02u1"
		sIfrCode10 = "02u9"

'웹툰팝콘----------------------
		wetCode1= "02r5"
		wetCode2= "02r8"
		wetCode3= "02r9"
		wetCode4= "02rA"
		wetCode5= "02rB"
		wetCode6= "02rC"
		wetCode7= "02rD"
		wetCode8= "02rE"
		wetCode9= "02rF"


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
		sIfrCode9 = "02u5"
		sIfrCode10 = "02uD"

'웹툰팝콘----------------------
		wetCode1= "02rL"
		wetCode2= "02rP"
		wetCode3= "02rW"
		wetCode4= "02rc"
		wetCode5= "02rg"
		wetCode6= "02rk"
		wetCode7= "02rt"
		wetCode8= "02ry"
		wetCode9= "02s1"


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
		sIfrCode9 = "02u6"
		sIfrCode10 = "02uE"

'웹툰팝콘----------------------
		wetCode1= "02rM"
		wetCode2= "02rQ"
		wetCode3= "02rZ"
		wetCode4= "02re"
		wetCode5= "02ri"
		wetCode6= "02rn"
		wetCode7= "02rw"
		wetCode8= "02rz"
		wetCode9= "02s2"


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
		sIfrCode9 = "02u2"
		sIfrCode10 = "02uA"

'웹툰팝콘----------------------
		wetCode1= "02rO"
		wetCode2= "02rR"
		wetCode3= "02rT"
		wetCode4= "02rU"
		wetCode5= "02rV"
		wetCode6= "02rX"
		wetCode7= "02rY"
		wetCode8= "02ra"
		wetCode9= "02rd"


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
		sIfrCode9 = "02u3"
		sIfrCode10 = "02uB"

'웹툰팝콘----------------------
		wetCode1= "02rh"
		wetCode2= "02rl"
		wetCode3= "02rm"
		wetCode4= "02rp"
		wetCode5= "02rq"
		wetCode6= "02rr"
		wetCode7= "02rs"
		wetCode8= "02ru"
		wetCode9= "02rv"


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
		sIfrCode9 = "02u7"
		sIfrCode10 = "02uF"

'웹툰팝콘----------------------
		wetCode1= "02rN"
		wetCode2= "02rS"
		wetCode3= "02rb"
		wetCode4= "02rf"
		wetCode5= "02rj"
		wetCode6= "02ro"
		wetCode7= "02rx"
		wetCode8= "02s0"
		wetCode9= "02s3"


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
	    sIfrCode9 = "02u4"
		sIfrCode10 = "02uC"

'웹툰팝콘----------------------
		wetCode1= "02tc"
		wetCode2= "02td"
		wetCode3= "02te"
		wetCode4= "02tf"
		wetCode5= "02tg"
		wetCode6= "02th"
		wetCode7= "02ti"
		wetCode8= "02tj"
		wetCode9= "02tl"



'	Case "tvreport" ' tvreport
'		sURL ="tvreport"  ' root url
'		sCode = "02Y3"  ' pv code
'		sIfrCode1 = "02XQ" '전체기사 8줄
'		sIfrCode2 = "02XR" '포토뉴스 3칸
'		sIfrCode3 = "02XM" '많이본뉴스 5칸
'		sIfrCode4 = "02XP" '베스트신문 3칸
'		sIfrCode5 = "02Xh" '심리테스트
'		sIfrCode6 = "02Xi" '생활정보
End Select
%>

<!doctype html>
<html lang="ko">
	<head>
		<meta charset="euc-kr">
		<meta name="format-detection" content="telephone=no, email=no, address=no"><!-- 자동 링크 적용 안되게 -->
		<link rel="shortcut icon" href=" ">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=yes">
		<link href="/assets/css/app_contents.css" rel="stylesheet" />
		<link href="/assets/css/news_main.css" rel="stylesheet" />
		<link href="/assets/css/common.css" rel="stylesheet" />

		<title>모비팝콘</title>

		</head>
	<body>

		<header>
			<div class="container">
				<div class="row">
					<ul class="nav">
						<li><a href="#"><img src="assets/images/navi.jpg"></a></li>
						<li><a href="#"><img src="assets/images/logo.jpg"></a></li>
						<li><a href="#"><img src="assets/images/search.jpg"></a></li>
					</ul>
				</div>
			</div>
		</header>

	<div id='mySwipe' class='swipe'>
		<div class='swipe-wrap'>
			<div><!--// page1 //-->

				<nav>
					<div class="container">
						<div class="row">
							<ul class="cate_nav">
								<li class="active"><p>뉴스팝콘</p></li>
								<li onclick='mySwipe.next()'>웹툰팝콘 <span class="adult">19</span></li>
							</ul>
						</div>
					</div>
				</nav>

	<section id="nav-o">
		<div class="container">
			<div class="row">

		<div id="int-global-wrapper">
			<div id="int-body-wrapper">
				<div id="int-container">
					<div id="int-main-container">
						<div id="int-main-section">
							<div class="int-section">
								<div>
									<h2><img src="common/image/all_news.png" alt="전체기사"/></h2>
									<span class="more"><a href="/pop.asp?type=<%=sURL%>" title="더보기"><!--<img src="common/image/arrow.png" alt="더보기"/>--></a></span>
								</div>
								<div>
									<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode1%>&out=script"></script>
								</div>
							</div><!-- int-section -->
							<div class="int-section">
								<div>
									<h2><img src="common/image/photo_news.png" alt="포토뉴스"/></h2>
								</div>
								<div>
									<!-- <iframe id="int-page-iframe-view" width="100%" height="120" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" frameborder="0" scrolling="no" ></iframe> -->
									<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=script"></script>
								</div>
							</div><!-- int-section -->
							<div class="int-section">
								<div>
									<h2><img src="common/image/popular_news.png" alt="많이 본 뉴스"/></h2>
									<span class="more"><a href="/pop.asp?type=<%=sURL%>" title="더보기"><!--<img src="common/image/arrow.png" alt="더보기"/>--></a></span>
								</div>
									<!-- <iframe width="100%" height="150" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode3%>&out=iframe" frameborder="0" scrolling="no" ></iframe> -->
									<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode3%>&out=script"></script>
								<div>
								</div>
							</div><!-- int-section -->

							<!-- my 금융정보 -->
							<div class="int-section">
								<div>
									<h2><img src="common/image/title_mylife.png" alt="my 생활정보"/></h2>
								</div>
								<div class="w-iframe">
									<!-- <iframe width='100%' height='100px' src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode6%>&out=iframe"  marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe> -->
									<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode6%>&out=script"></script>
								</div>
							</div><!--/* my 금융정보 int-section -->


                            <div class="int-section"><!-- 새로 들어가는 만화놈1 360?-->
								<div>
									<h2><img src="common/image/week_webtoon.png" alt="요일별 웹툰"/></h2>
									<span class="more"><a href="/" title="더보기"><!--<img src="common/image/arrow.png" alt="더보기"/> --></a></span>
								</div>
								<div class="S-iframe">
									<!-- <iframe width="100%" height="340px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode7%>&out=iframe" frameborder="0" scrolling="no" ></iframe> -->
									<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode7%>&out=script"></script>
								</div>
							</div><!-- int-section -->


							<div class="int-section no-margin">
								<div>
									<h2><img src="common/image/best_news.png" alt="베스트뉴스"/></h2>
								</div>
								<div class="f-iframe">
									<!-- <iframe width="100%" height="273" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode4%>&out=iframe" frameborder="0" scrolling="no" ></iframe> -->
									<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode4%>&out=script"></script>
								</div>
							</div><!--int-section-->

                            <div class="int-section"><!-- 새로 들어가는 만화놈2 360?-->
								<div>
									<h2><img src="common/image/popular_webtoon.png" alt="인기 웹툰"/></h2>
									<span class="more"><a href="/" title="더보기"> <!-- <img src="common/image/arrow.png" alt="더보기"/> --> </a></span>
								</div>
								<div class="S-iframe">
									<!-- <iframe width="100%" height="340px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode8%>&out=iframe" frameborder="0" scrolling="no" ></iframe> -->
									<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode8%>&out=script"></script>
								</div>
							</div><!-- int-section -->

							<div class="int-section">
								<div>
									<h2><img src="common/image/title_weekhot.png" alt="주간핫리포트"/></h2>
								</div>
								<div class="n-iframe">
									<!-- <iframe width="100%" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode5%>&out=iframe" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe> -->
									<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode5%>&out=script"></script>
								</div>
							</div><!--int-section-->

							<section style="border-bottom:5px solid #ddd;">
								<div class="panel" id="ARTICLE6" name="ARTICLE6">
									<div class="panel_header">
										<font color="009edd">베스트게임 TOP6</font>  <div class="pull-right"><img src="image/arrow_counter.png" class="arrow_more"></div>
									</div>
									<div class="panel_body">
										<!-- <iframe width="100%" height="430px" src="article6.html" border="0" frameborder='0' scrolling='no' marginwidth='0' marginheight='0'></iframe> -->
										<!-- <iframe width="100%" height="450px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02MM&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe> -->
										<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode9%>&out=script"></script>
									</div>
								</div>
							</section>

							<section id="banner_bottom" style="border-bottom:5px solid #ddd;">
								<!-- <iframe width="320px" height="130px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jJ&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe> -->
								<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode10%>&out=script"></script>
							</section>

						</div><!-- #int-main-section -->
					</div><!-- #int-main-container -->
				</div>
			</div>

			<div id="int-global-footer">
                <!-- #int-footer-ad -->
				<div id="int-footer-copyright">
					<p class="copyright"><span>서비스이용약관</span> &nbsp;|&nbsp; <span class="active">개인정보취급방침</span> &nbsp;|&nbsp; <span>제휴문의</span></p>
				</div>
			</div><!-- #int-global-footer -->
		</div><!-- #int-global-wrapper -->

		<!--// 트래픽 코드 //-->
		<iframe width="0" height="0" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sCode%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
		<!--// 트래픽 끝 //-->

					</div>
				</div>
			</section>
		</div><!--// page1 end //-->

		<div><!--// page2 start //-->
				<nav>
					<div class="container">
						<div class="row">
							<ul class="cate_nav">
								<li onclick='mySwipe.prev()'>뉴스팝콘</li>
								<li class="active"><p>웹툰팝콘 <span class="adult">19</span></p></li>
							</ul>
						</div>
					</div>
				</nav>

			<section id="nav-t">
				<div class="container">
					<div class="row">
					<!--/ 오늘의 인기 앱 -->
					<section>
						<div class="panel" id="ARTICLE1" name="ARTICLE1">
							<div class="panel_header">
								<font color="009edd">따끈한 신작소식!! </font>  <div class="pull-right"><img src="image/arrow_right.png" class="arrow_more"></div>
							</div>
							<div class="panel_body">
								<!-- <iframe width="100%" height="175px" src="article1.html" border="0" frameborder='0' scrolling='no' marginwidth='0' marginheight='0'></iframe> -->
								<!-- <iframe width="100%" height="175px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jB&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe> -->
								<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=wetCode6%>&out=script"></script>
							</div>
						</div><!--/* pannel -->
					</section>
					<!--/* 오늘의 인기 앱 끝 -->

					<!-- 금주의 추천 app -->
					<section>
						<div class="panel" id="ARTICLE2" name="ARTICLE2">
							<div class="panel_header">
								<font color="009edd">오늘의 인기 웹툰</font> <div class="pull-right"><img src="image/arrow_right.png" class="arrow_more"></div>
							</div>
							<div class="panel_body">
								<div class="frameset1">
									<!-- <iframe width="100%" height="500px" src="article2.html" border="0" frameborder='0' scrolling='no' marginwidth='0' marginheight='0'></iframe> -->
									<!-- <iframe width="100%" height="500px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jC&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe> -->
									<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=wetCode1%>&out=script"></script>
								</div>
							</div>
						</div>
					</section>

					<section id="banner_top">
							<!-- <iframe width="320px" height="130px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jD&out=iframe" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe> -->
							<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=wetCode3%>&out=script"></script>
					</section>

					<section>
						<div class="panel" id="ARTICLE3" name="ARTICLE3">
							<div class="panel_header">
								<font color="009edd">무료 웹툰 BEST</font>  <div class="pull-right"><img src="image/arrow_counter.png" class="arrow_more"></div>
							</div>
							<div class="panel_body">
								<div class="frameset2">
									<!-- <iframe width="100%" height="360px" src="article3.html" border="0" frameborder='0' scrolling='no' marginwidth='0' marginheight='0'></iframe> -->
									<!-- <iframe width="100%" height="360px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jE&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe> -->
									<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=wetCode9%>&out=script"></script>
								</div>
							</div>
						</div>
					</section>

					<section>
						<div class="panel" id="ARTICLE4" name="ARTICLE4">
							<div class="panel_header">
										<font color="009edd">심쿵! 추천웹툰</font> <div class="pull-right"><img src="image/arrow_counter.png" class="arrow_more"></div>
							</div>
							<div class="panel_body">
								<div class="frameset2">
									<!-- <iframe width="100%" height="360px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jF&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe> -->
									<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=wetCode2%>&out=script"></script>
								</div>
							</div>
						</div>
					</section>

					<section id="banner_middle">
							<!-- <iframe width="320px" height="130px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jG&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe> -->
							<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=wetCode4%>&out=script"></script>
					</section>

					<section>
						<div class="panel" id="ARTICLE5" name="ARTICLE5">
							<div class="panel_header">
										<font color="009edd">직장인 생활정보</font> <div class="pull-right"><img src="image/arrow_counter.png" class="arrow_more"></div>
							</div>
							<div class="panel_body">
								<div class="frameset4">
									<!-- <iframe width="100%" height="360px" src="article5.html" border="0" frameborder='0' scrolling='no' marginwidth='0' marginheight='0'></iframe> -->
									<!-- <iframe width="100%" height="360px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jH&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe> -->
									<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=wetCode8%>&out=script"></script>
								</div>
							</div>
						</div>
					</section>

					<section>
						<div class="panel" id="ARTICLE6" name="ARTICLE6">
							<div class="panel_header">
								<font color="009edd">베스트 웹툰 TOP5</font>  <div class="pull-right"><img src="image/arrow_counter.png" class="arrow_more"></div>
							</div>
							<div class="panel_body">
								<!-- <iframe width="100%" height="430px" src="article6.html" border="0" frameborder='0' scrolling='no' marginwidth='0' marginheight='0'></iframe> -->
								<!-- <iframe width="100%" height="450px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02MM&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe> -->
								<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=wetCode7%>&out=script"></script>
							</div>
						</div>
					</section>

					<section id="banner_bottom">
						<!-- <iframe width="320px" height="130px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jJ&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe> -->
						<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=wetCode5%>&out=script"></script>
					</section>

					<footer>
						<p class="copyright"><span>서비스이용약관</span> &nbsp;|&nbsp; <span class="active">개인정보취급방침</span> &nbsp;|&nbsp; <span>제휴문의</span></p>
					</footer>

					</div>
				</div>

				</section>
			</div><!--// page2 end //-->
		</div><!--// swipe-wrap //-->
	</div><!--// mySwipe //-->


	</div>
</div><!--// container //-->


<script type="text/javascript" src="assets/js/swipe.js"></script>
<script>
var elem = document.getElementById('mySwipe');
window.mySwipe = Swipe(elem, {
  // startSlide: 2,
  //auto: 3000,
  // continuous: true,
  // disableScroll: true,
  // stopPropagation: true,
  // callback: function(index, element) {},
  // transitionEnd: function(index, element) {}
});
// with jQuery
// window.mySwipe = $('#mySwipe').Swipe().data('Swipe');
</script>
</body>
</html>
