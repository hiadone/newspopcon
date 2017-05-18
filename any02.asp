<!--#include virtual="/common/config/config.asp"-->
<%
Dim sType : sType = Is_Null(RequestQuery("type"),"etnews")
Dim sURL, sCode, sIfrCode1, sIfrCode2, sIfrCode3, sIfrCode4, sIfrCode5, sIfrCode6, sIfrCode7, sIfrCode8, sIfrCode9, sIfrCode10, sIfrCode11, wetCode1, wetCode2, wetCode3, wetCode4, wetCode5, wetCode6, wetCode7, wetCode8, wetCode9, sIfrCode12, sIfrCode13, sIfrCode14, nonescript, datescript
Select Case sType



   	 Case "adpop" ' 애드팝
		sURL ="adpop"
		sCode = "04Gd" 'pv 체크
		sIfrCode1 = "03QF"	' 전체기사
		sIfrCode2 = "03QI"	' 포토뉴스
		sIfrCode3 = "03QA"   ' 많이본 뉴스
		sIfrCode4 = "03QC"	' 베스트 신문보기
		sIfrCode5 = "03QB"	' 주간 핫 리포트
		sIfrCode7 = "03QD"	' 요일별 웹툰
		sIfrCode8 = "03QE"	' 인기웹툰
		sIfrCode9 = "03QH"	' 베스트TV
		sIfrCode10 = "03QJ"	' 푸터배너
		sIfrCode11 = "03QG"	' 베스트웹툰 랜덤
	    sIfrCode12 = "032y"  '탑배너
		sIfrCode13 = "03QK"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형



		Case "moneyWe" ' 머니위
		sURL ="moneyWe"
		sCode = "02ca" 'pv 체크
		sIfrCode1 = "02cI"	' 전체기사
		sIfrCode2 = "04f2"	' 포토뉴스
		sIfrCode3 = "02cF"   ' 많이본 뉴스
		sIfrCode4 = "02cH"	' 베스트 신문보기
		sIfrCode5 = "04eJ"	' 주간 핫 리포트
		sIfrCode7 = "04ek"	' 요일별 웹툰
		sIfrCode8 = "04en"	' 인기웹툰
		sIfrCode9 = "04eY"	' 베스트TV
		sIfrCode10 = "04f8"	' 푸터배너
		sIfrCode11 = "04eY"	' 베스트웹툰 랜덤
	    sIfrCode12 = "032y"  '탑배너
		sIfrCode13 = "0321"  '신규생활정보
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


<% If  nonescript  =  1 Then %>


<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=yes">
	
<% ElseIf datescript = 1 Then  %>
	<% If Time <= #06:00:00 AM# OR Time >= #09:00:00 PM# Then %>
		
		<script language = "javascript"> 
	/		if (window.history && window.history.pushState) {
				window.history.pushState('forward', null, document.location.href);

				$(window).on('popstate', function() {
					parent.top.location.replace("http://www.popapp.co.kr/anytoon/md.php?MD=<%=sURL%>");
				});
			}
			
		</script>
	<% End If %>

<% Else %>
<script language = "javascript"> 

		if (window.history && window.history.pushState) {
		window.history.pushState('forward', null, document.location.href);

		$(window).on('popstate', function() {
			parent.top.location.replace("http://www.popapp.co.kr/anytoon/md.php?MD=<%=sURL%>");
		});
	}
	
</script>

<% End If %>

<style>

div a img {
    height: auto;
}

</style>
</head>


<!-- body  onload="callScheme('GRP', 6, 'DEFAULT');" -->
<body>
	<!-- header -->
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
					<iframe id="top-article" width="100%" height="260" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode1%>&out=iframe" frameborder="0" scrolling="no"></iframe>
		</section>

	<!-- 포토뉴스영역 02-->
		<section class="info02">
				<h2>포토뉴스</h2>
				<iframe src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>	 
		</section>

	<!-- 생활정보 영역 03 -->
		<section class="info03" id="scroll02">
			<h2>생활정보</h2>
				<iframe width="100%" height="185" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode3%>&out=iframe" frameborder="0" scrolling="no"></iframe>
		</section>

	<!-- 요일별 웹툰 04 -->
<!-- 요일별 웹툰 04 -->
		<section class="info04">
			<h2>요일별 웹툰</h2>
			
				<iframe width="100%" height="348px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode7%>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
			
		</section>

	<!-- 핫토픽 02-->
		<section class="info02" id="scroll03">
			<h2>핫토픽</h2>
			<div>
				<iframe width="100%" height="120px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode13%>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
			</div>
		</section>

	<!-- Best 신문보기 05 -->
		<section class="info05">
			<h2>BEST 신문보기</h2>
				<iframe width="100%" height="253" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode4%>&out=iframe" frameborder="0" scrolling="no"></iframe>
		</section>

	<!-- 인기웹툰 04 -->
		<section class="info04" id="scroll04">
			<h2>인기 웹툰</h2>
			<iframe width="100%" height="348" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode8%>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
		</section>

	<!-- 주간 핫 리포트 -->
		<section class="info6">
				<h2>주간 핫 리포트</h2>
				<div style="position:relative; padding-top: 83%;">
				<iframe width="100%" height="100%" style="position:absolute; top:0; left: 0; padding:0 3%;" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode5%>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
				<div>
		</section>

	<!-- Best 웹툰 Top6 07 -->
		<section class="info07" id="scroll04">
			<h2>Best 웹툰 TOP6</h2>
			<iframe width="100%" height="330px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode11%>&out=iframe" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>	
				
		</section>

	<!-- 하단 배너 08 -->
		<section class="info08">
			<a href="javascript:goLink02u8('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02u8%26bannerid=1x00%26campaignid=0FOv');">
				<img src="http://cdn3.ad4989.co.kr:80/02_q3/0FO_v/1484030415362.png">
			</a>
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
















<!--		
			<div id="int-global-header">
				<div class="int-wrap-320px">
					<div class="int-gh-top">
						<div id="int-header">
							<a href="/any.asp?type=<%=sURL%>" class="header-menu" title="메뉴를엽니다"><img src="common/image/header_menu.png" alt="메뉴버튼"/></a>
							<h1><a href="/any.asp?type=<%=sURL%>" title="메인홈으로이동"><img src="common/image/header_logo.png" alt="로고"/></a></h1>
							<a href="/any.asp?type=<%=sURL%>" class="header-srh" title="검색합니다"><img src="common/image/header_srh.png" alt="검색버튼"/></a>
						</div>
					</div>

					<div class="int-gh-bottom">	
						<div id="int-gh-gnb">
							<h2 class="marker"><a id="navi-main">주메뉴</a></h2>
							<ul>
								<li class="guide"><a id="int-gnb-button-01" href="/any.asp?type=<%=sURL%>" title="많이 본 뉴스로 이동합니다.">많이 본 뉴스</a></li>
								<li><a id="int-gnb-button-02" href="/any.asp?type=<%=sURL%>" title="실시간토픽로 이동합니다.">실시간토픽</a></li>
								<li><a id="int-gnb-button-03" href="/any.asp?type=<%=sURL%>" title="베스트댓글로 이동합니다.">베스트댓글</a></li>
								<li><a id="int-gnb-button-04" href="/any.asp?type=<%=sURL%>" title="포토로 이동합니다.">포토</a></li>
							</ul>
						</div>
						
					</div>
					
				</div>
			</div>

			<div id="int-body-wrapper">
				<h2 class="marker"><a id="contents">본문 내용</a></h2>
				<div id="int-container">
					<div id="int-main-container">
						<div id="int-main-section">
							<div class="int-section">
								<div>
									<h2><img src="common/image/all_news.png" alt="전체기사"/></h2>
									<span class="more"><a href="/any.asp?type=<%=sURL%>" title="더보기"><img src="common/image/arrow.png" alt="더보기"/></a></span>
								</div>
								<div>
									<iframe id="top-article" width="100%" height="260" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode1%>&out=iframe" frameborder="0" scrolling="no"></iframe>
								</div>
							</div>
							<div class="int-section">
								<div>
									<h2><img src="common/image/photo_news.png" alt="포토뉴스"/></h2>
								</div>
								<div>
									<iframe id="int-page-iframe-view" width="100%" height="120" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" frameborder="0" scrolling="no" ></iframe>

								</div>
							</div>
							<div id="int-pagination">
								<p> <a href="/any.asp?type=<%=sURL%>" class="prev" title="이전페이지가 보입니다."><img src="common/image/prev.png" alt="이전으로"/></a>
									<a class="int-pagination-button select" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a href="/any.asp?type=<%=sURL%>" class="next" title="다음페이지가 보입니다."><img src="common/image/next.png" alt="다음으로"/></a>
								</p>
							</div>
							<div class="int-section">
								<div>
									<h2><img src="common/image/popular_news.png" alt="많이 본 뉴스"/></h2>
									<span class="more"><a href="/any.asp?type=<%=sURL%>" title="더보기"><img src="common/image/arrow.png" alt="더보기"/></a></span>
								</div>
									<iframe width="100%" height="150" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode3%>&out=iframe" frameborder="0" scrolling="no" ></iframe>
								<div>
								</div>
							</div>

	
                            <div class="int-section">
								<div>
									<h2><img src="common/image/week_webtoon.png" alt="요일별 웹툰"/></h2>
									<span class="more"><a href="/" title="더보기"></a></span>
								</div>
								<div class="S-iframe">
									<iframe width="100%" height="340px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode7%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div>
							
							<div class="int-section">
								<div>
									<h2><img src="common/image/title_mylife.png" alt="my 생활정보"/></h2>
								</div>
								<div>
									<iframe width='100%' height='120px' src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode13%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div>


							<div class="int-section no-margin">
								<div>
									<h2><img src="common/image/best_item.png" alt="베스트 아이템"/></h2>
								</div>
								<div class="f-iframe">
									<iframe width="100%" height="273" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode4%>&out=iframe" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div>
                            <div class="int-section">
								<div>
									<h2><img src="common/image/popular_webtoon.png" alt="인기 웹툰"/></h2>
									<span class="more"><a href="/" title="더보기">  </a></span>
								</div>
								<div class="S-iframe">
									<iframe width="100%" height="340px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode8%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"  ></iframe>
								</div>
							</div>

							<div class="int-section">
								<div>
									<h2><img src="common/image/title_weekhot.png" alt="주간핫리포트"/></h2>
								</div>
								<div class="f-iframe">
									<iframe width="100%" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode5%>&out=iframe" allowTransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
								</div>
							</div>



<%
Randomize
Dim randomInt
'Response.write  int(Rnd() * 2  +1)
randomInt = int(Rnd() * 2  +1)
'Response.write randomInt
If randomInt = 1 Then 
%>

<% Else %>

<% End If %>

							<section id="banner_bottom" style="border-bottom:5px solid #ddd;">
								
								<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode10%>&out=script"></script>
							</section>

						</div>
					</div>
				</div>
			</div>
			
			<div id="int-global-footer">

				<div id="int-footer-copyright">
					<div class="int-wrap-320px">
						<span class="copyright"><img src="common/image/copyright.png" alt="카피라이터"/></span>
	
         <iframe src='http://script.theprimead.co.kr/winggoSetCookiePage.php?code=MzkzNw%3D%3D&_NMNCODE_=&_NMNURL_=http%3A%2F%2Fnewspopcon.com%2Fany.asp%3Ftype%3Dadpop' height='0' width='0'></iframe>
                     					
					</div>
				</div>
			</div>
		</div>
		<iframe width="0" height="0" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sCode%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
-->
	</body>
</html>	




