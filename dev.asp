<!--#include virtual="/common/config/config.asp"-->
<%
Dim sType : sType = Is_Null(RequestQuery("type"),"etnews")
Dim sURL, sCode, sIfrCode1, sIfrCode2, sIfrCode3, sIfrCode4, sIfrCode5, sIfrCode6, sIfrCode7, sIfrCode8, sIfrCode9, sIfrCode10, sIfrCode11, wetCode1, wetCode2, wetCode3, wetCode4, wetCode5, wetCode6, wetCode7, wetCode8, wetCode9, sIfrCode12, sIfrCode13, sIfrCode14, nonescript, datescript
Select Case sType
	Case "moneyW"  ' 머니워크
		sURL ="moneyW"
		sCode = "02ca"
		sIfrCode1 = "02cI"
		sIfrCode2 = "02cJ"
		sIfrCode3 = "02cF"
		sIfrCode4 = "02cH"
		sIfrCode5 = "02cG"
		'sIfrCode6 = "02cL"
		sIfrCode7 = "02ms"
		sIfrCode8 = "02mt"
		sIfrCode9 = "02u1"
		sIfrCode10 = "02u9"
		sIfrCode11 = "02yQ"	' 베스트웹툰 랜덤
		sIfrCode12 = "030l"  '탑배너
		sIfrCode13 = "0321"  '신규배너
		sIfrCode14 = "03EV"  '베스트신문보기 배너형



	Case "Ofun" ' 오펀
		sURL ="Ofun"
		sCode = "03Go"
		sIfrCode1 = "02cQ"
		sIfrCode2 = "02cR"
		sIfrCode3 = "02cN"
		sIfrCode4 = "02cP"
		sIfrCode5 = "02cO"
		'sIfrCode6 = "02cS"
		sIfrCode7 = "02mo"
		sIfrCode8 = "02mp"
		sIfrCode9 = "02u5"
		sIfrCode10 = "02uD"
		sIfrCode11 = "02yV"	' 베스트웹툰 랜덤
		sIfrCode12 = "030q"  '탑배너
		sIfrCode13 = "0324"  '신규배너
		sIfrCode14 = "03Eb"  '베스트신문보기 배너형


	Case "asia2day" '  아시아투데이
		sURL ="asia2day"
		sCode = "03EO"
		sIfrCode1 = "02cX"
		sIfrCode2 = "02cY"
		sIfrCode3 = "02cT"
		sIfrCode4 = "02cW"
		sIfrCode5 = "02cV"
		'sIfrCode6 = "02cZ"
		sIfrCode7 = "02mq"
		sIfrCode8 = "02mr"
		sIfrCode9 = "02u6"
		sIfrCode10 = "02uE"
		sIfrCode11 = "02yW"	' 베스트웹툰 랜덤
		sIfrCode12 = "030r"  '탑배너
		sIfrCode13 = "0325"  '신규배너
		sIfrCode14 = "03EV"  '베스트신문보기 배너형


	Case "bridgenews" ' 브릿지경제
		sURL ="bridgenews"
		sCode = "02pn"
		sIfrCode1 = "02pJ"
		sIfrCode2 = "02pK"
		sIfrCode3 = "02pE"
		sIfrCode4 = "02pG"
		sIfrCode5 = "02pF"
		'sIfrCode6 = "02pL"
		sIfrCode7 = "02pH"
		sIfrCode8 = "02pI"
		sIfrCode9 = "02u2"
		sIfrCode10 = "02uA"
		sIfrCode11 = "02yR"	' 베스트웹툰 랜덤
		sIfrCode12 = "030m"  '탑배너
		sIfrCode13 = "0322"  '신규배너
		sIfrCode14 = "03EW"  '베스트신문보기 배너형


	Case "asiae" ' 아시아경제
		sURL ="asiae"
		sCode = "02po"
		sIfrCode1 = "02pS"
		sIfrCode2 = "02pT"
		sIfrCode3 = "02pM"
		sIfrCode4 = "02pO"
		sIfrCode5 = "02pN"
		'sIfrCode6 = "02pU"
		sIfrCode7 = "02pP"
		sIfrCode8 = "02pQ"
		sIfrCode9 = "02u3"
		sIfrCode10 = "02uB"
		sIfrCode11 = "02yS"	' 베스트웹툰 랜덤
		sIfrCode12 = "030n"  '탑배너
		sIfrCode13 = "0323"  '신규배너
		sIfrCode14 = "03EX"  '베스트신문보기 배너형


	Case "tvdaily" ' 티브이데일리
		sURL ="tvdaily"
		sCode = "03CY"
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
		sIfrCode11 = "02yX"	' 베스트웹툰 랜덤
		sIfrCode12 = "030s"  '탑배너
		sIfrCode13 = "0326"  '신규생활정보
		sIfrCode14 = "03Ea"  '베스트신문보기 배너형

	Case "heraldpop" ' 헤럴드팝
		sURL ="heraldpop"
		sCode = "02pp"
		sIfrCode1 = "02t6"
		sIfrCode2 = "02t7"
		sIfrCode3 = "02t1"
		sIfrCode4 = "02t3"
		sIfrCode5 = "02t2"
		'sIfrCode6 = "02t9"
		sIfrCode7 = "02t4"
		sIfrCode8 = "02t5"
	    sIfrCode9 = "02u4"
		sIfrCode10 = "02uC"
		sIfrCode11 = "02yU"	' 베스트웹툰 랜덤
		sIfrCode12 = "030p"  '탑배너
		sIfrCode13 = "032j"  '신규생활정보
		sIfrCode14 = "03EZ"  '베스트신문보기 배너형
		datescript = "1"   '스크립트 적용안함


	Case "issuebox" ' 이슈박스
		sURL ="issuebox"
		sCode = "02w8"
		sIfrCode1 = "02vm"	' 전체기사
		sIfrCode2 = "02vo"	' 포토뉴스
		sIfrCode3 = "02vh"   ' 많이본 뉴스
		sIfrCode4 = "02vj"	' 베스트 신문보기
		sIfrCode5 = "02vi"	' 주간 핫 리포트
		'sIfrCode6 = "02vq"	' 생활정보
		sIfrCode7 = "02vk"	' 요일별 웹툰
		sIfrCode8 = "02vl"	' 인기웹툰
		sIfrCode9 = "02vn"	' 베스트게임
		sIfrCode10 = "02vp"	' 푸터배너
		sIfrCode11 = "02yT"	' 베스트웹툰 랜덤
		sIfrCode12 = "030o"  '탑배너
		sIfrCode13 = "032k"  '신규생활정보
		sIfrCode14 = "03EY"  '베스트신문보기 배너형
		datescript = "1"  '특정시간에 스크립트적용

	Case "moodeung" ' 무등일보
		sURL ="moodeung"
		sCode = "032z" 'pv 체크
		sIfrCode1 = "032r"	' 전체기사
		sIfrCode2 = "032t"	' 포토뉴스
		sIfrCode3 = "032n"   ' 많이본 뉴스
		sIfrCode4 = "032o"	' 베스트 신문보기
		sIfrCode5 = "032m"	' 주간 핫 리포트
		sIfrCode7 = "032p"	' 요일별 웹툰
		sIfrCode8 = "032q"	' 인기웹툰
		sIfrCode9 = "032s"	' 베스트게임
		sIfrCode10 = "032u"	' 푸터배너
		sIfrCode11 = "032x"	' 베스트웹툰 랜덤
		sIfrCode12 = "032y"  '탑배너
		sIfrCode13 = "032w"  '신규생활정보
		sIfrCode14 = "03EV"  '베스트신문보기 배너형


	Case "mediapen" ' 미디어펜
		sURL ="mediapen"
		sCode = "03Fe" 'pv 체크
		sIfrCode1 = "033Z"	' 전체기사
		sIfrCode2 = "033b"	' 포토뉴스
		sIfrCode3 = "033U"   ' 많이본 뉴스
		sIfrCode4 = "033W"	' 베스트 신문보기
		sIfrCode5 = "033V"	' 주간 핫 리포트
		sIfrCode7 = "033X"	' 요일별 웹툰
		sIfrCode8 = "033Y"	' 인기웹툰
		sIfrCode9 = "033S"	' 베스트게임
		sIfrCode10 = "033T"	' 푸터배너
		sIfrCode11 = "033a"	' 베스트웹툰 랜덤
		sIfrCode12 = "032y"  '탑배너
		sIfrCode13 = "033d"  '신규생활정보
		sIfrCode14 = "03EV"  '베스트신문보기 배너형


       Case "ajunews" ' 아주경제
		sURL ="ajunews"
		sCode = "03Fg" 'pv 체크
		sIfrCode1 = "03CR"	' 전체기사
		sIfrCode2 = "03CU"	' 포토뉴스
		sIfrCode3 = "03CM"   ' 많이본 뉴스
		sIfrCode4 = "03CO"	' 베스트 신문보기
		sIfrCode5 = "03CN"	' 주간 핫 리포트
		sIfrCode7 = "03CP"	' 요일별 웹툰
		sIfrCode8 = "03CQ"	' 인기웹툰
		sIfrCode9 = "03CS"	' 베스트TV
		sIfrCode10 = "03CV"	' 푸터배너
		sIfrCode11 = "03CT"	' 베스트웹툰 랜덤
	    sIfrCode12 = "032y"  '탑배너
		sIfrCode13 = "03CW"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형


       Case "sisunnews" ' 시선뉴스
		sURL ="sisunnews"
		sCode = "03PU" 'pv 체크
		sIfrCode1 = "03H0"	' 전체기사
		sIfrCode2 = "03H3"	' 포토뉴스
		sIfrCode3 = "03Gv"   ' 많이본 뉴스
		sIfrCode4 = "03Gx"	' 베스트 신문보기
		sIfrCode5 = "03Gw"	' 주간 핫 리포트
		sIfrCode7 = "03Gy"	' 요일별 웹툰
		sIfrCode8 = "03Gz"	' 인기웹툰
		sIfrCode9 = "03H2"	' 베스트TV
		sIfrCode10 = "03H4"	' 푸터배너
		sIfrCode11 = "03H1"	' 베스트웹툰 랜덤
	    sIfrCode12 = "032y"  '탑배너
		sIfrCode13 = "03H5"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

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
		<meta name="robots" content="noindex">
		<link rel="shortcut icon" href=" ">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=yes">
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<link href="common/css/normalize.css" rel="stylesheet" type="text/css">
		<link href="common/css/common.css" rel="stylesheet" type="text/css">
		<link href="common/css/main.css" rel="stylesheet" type="text/css">
		<script src="common/js/main.js"></script>

		<script type='text/javascript' src='http://www.mobipopcon.com/js/jquery.cookie.js'></script>
		<script type='text/javascript' src='http://www.mobipopcon.com/js/shortcut.js'></script>

<% If  nonescript  =  1 Then %>

<% ElseIf datescript = 1 Then  %>
	<% If Time <= #06:00:00 AM# OR Time >= #09:00:00 PM# Then %>
		<script language = "javascript"> 
			if (window.history && window.history.pushState) {
				window.history.pushState('forward', null, document.location.href);

				$(window).on('popstate', function() {
					parent.top.location.replace("http://www.popapp.co.kr/md.php?MD=<%=sURL%>");
				});
			}
		</script>
	<% End If %>
<% Else %>
	<script language = "javascript"> 
		if (window.history && window.history.pushState) {
			window.history.pushState('forward', null, document.location.href);

			$(window).on('popstate', function() {
				parent.top.location.replace("http://www.popapp.co.kr/md.php?MD=<%=sURL%>");
			});
		}
	</script>
<% End If %>
	</head>


	
<body  onload="callScheme('GRP', 6, 'DEFAULT');">


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


<%'=time()%>
<% 'If Hour(now) >= 20  And Hour(now) >= 7  Then %>
<% 'DateTime.Now.Tostring("dd");%>
<%' =DateTime.addDays(1).Tostring("dd"); %>
<% If Time < #06:00:00 AM# Or Time > #09:00:00 PM#  Then %>
	밤 하고 새벽사이다!!!
<% End If %>

<% 'If Time >= #12:00:00 PM# And Time < #12:30:00 PM# Then %>
<!--// 값 넣기 //-->
<%' End If %>
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
                        

                        <!--
							<div id="banner_top">
								<iframe width="320" height="80" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode12%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
							</div>
                         -->                      



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

	
                            <div class="int-section"><!-- 새로 들어가는 만화놈1 360?-->
								<div>
									<h2><img src="common/image/week_webtoon.png" alt="요일별 웹툰"/></h2>
									<span class="more"><a href="/" title="더보기"><!--<img src="common/image/arrow.png" alt="더보기"/> --></a></span>
								</div>
								<div class="S-iframe">
									<iframe width="100%" height="340px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode7%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div><!-- int-section -->

							<!-- my 생활정보 -->
							<div class="int-section">
								<div>
									<h2><img src="common/image/title_mylife.png" alt="my 생활정보"/></h2>
								</div>
								<div>
									<iframe width='100%' height='120px' src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode13%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div><!--/* my 생활정보 int-section -->


							<div class="int-section no-margin">
								<div>
									<h2><img src="common/image/best_item.png" alt="베스트 아이템"/></h2>
								</div>
								<div class="f-iframe">
									<iframe width="100%" height="273" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode4%>&out=iframe" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div><!--int-section-->

							<!-- 신문보기 배너형-->
							<!--div class="int-section no-margin">
								<div>
									<h2><img src="common/image/best_news.png" alt="베스트 신문보기"/></h2>
								</div>
								<div class="f-iframe">
									<iframe width="100%" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=03EU&out=iframe" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div><!--int-section-->
							<!-- 신문보기 배너형 끝-->

                            <div class="int-section">
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
									<h2><img src="common/image/title_weekhot.png" alt="주간핫리포트"/></h2>
								</div>
								<div class="f-iframe">
									<iframe width="100%" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode5%>&out=iframe" allowTransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
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
<!--#include virtual="/include/pop1.asp"-->
<% Else %>
<!--#include virtual="/include/pop2.asp"-->
<% End If %>

							<section id="banner_bottom" style="border-bottom:5px solid #ddd;">
								<!-- <iframe width="320px" height="130px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=02jJ&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe> -->
								<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode10%>&out=script"></script>
							</section>

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