<!--#include virtual="/common/config/config.asp"-->
<%
Dim sType : sType = Is_Null(RequestQuery("type"),"etnews")
Dim sURL, sCode, sIfrCode1, sIfrCode2, sIfrCode3, sIfrCode4, sIfrCode5, sIfrCode6, sIfrCode7, sIfrCode8, sIfrCode9, sIfrCode10, sIfrCode11, wetCode1, wetCode2, wetCode3, wetCode4, wetCode5, wetCode6, wetCode7, wetCode8, wetCode9, sIfrCode12, sIfrCode13, sIfrCode14, nonescript, datescript
nonescript=1

sURL="http://www.popapp.co.kr/tomix/md.php?MD="+sType

Select Case sType





	Case "moneyW"  ' 머니워크
		
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


	Case "newstown"  ' 뉴스타운
		
		sCode = "04YC"
		sIfrCode1 = "033Z"	' 전체기사
		sIfrCode2 = "033b"	' 포토뉴스
		sIfrCode3 = "033U"   ' 많이본 뉴스
		sIfrCode4 = "033W"	' 베스트 신문보기
		sIfrCode5 = "033V"	' 주간 핫 리포트
		sIfrCode7 = "033X"	' 요일별 웹툰
		sIfrCode8 = "033Y"	' 인기웹툰
		sIfrCode9 = "033a"	' 베스트게임
		sIfrCode10 = "033T"	' 푸터배너
		sIfrCode11 = "033a"	' 베스트웹툰 랜덤
		sIfrCode12 = "032y"  '탑배너
		sIfrCode13 = "033d"  '신규생활정보
		sIfrCode14 = "03EV"  '베스트신문보기 배너형



	Case "Ofun" ' 오펀
		
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


	Case "asiae" ' 아시아경제
	
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
		nonescript = 0
		sURL="http://www.popapp.co.kr/tomix/md.php?MD="+sType
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
		datescript = "1"  ' 시간별 노출



	Case "bridgenews" ' 브릿지뉴스
		
		sCode = "02pn"
		sIfrCode1 = "02pJ"
		sIfrCode2 = "02pb"
		sIfrCode3 = "02pE"
		sIfrCode4 = "02pG"
		sIfrCode5 = "02pW"
		'sIfrCode6 = "02pL"
		sIfrCode7 = "02pY"
		sIfrCode8 = "02pZ"
		sIfrCode9 = "02u2"
		sIfrCode10 = "02uF"
		sIfrCode11 = " 02yX"	' 베스트웹툰 랜덤
		sIfrCode12 = "030m"  '탑배너
		sIfrCode13 = "0322"  '신규배너
		sIfrCode14 = "03EW"  '베스트신문보기 배너형



	Case "issuebox" ' 이슈박스
		
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

	Case "moodeung" ' 무등일보
	
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


	Case "hiadone" ' 자사
		nonescript = 0
		sURL="http://www.popapp.co.kr/anytoon/md.php?MD="+sType
		sCode = "05uO" 'pv 체크
		sIfrCode1 = "01Ca"	' 전체기사
		sIfrCode2 = "02vo"	' 포토뉴스
		sIfrCode3 = "01Cc"   ' 많이본 뉴스
		sIfrCode4 = "032o"	' 베스트 신문보기
		sIfrCode5 = "02vi"	' 주간 핫 리포트
		sIfrCode7 = "02vk"	' 요일별 웹툰
		sIfrCode8 = "02vl"	' 인기웹툰
		sIfrCode9 = "02yT"	' 베스트게임
		sIfrCode10 = "02vp"	' 푸터배너
		sIfrCode11 = "02yT"	' 베스트웹툰 랜덤
		sIfrCode12 = "032y"  '탑배너
		sIfrCode13 = "0320"  '신규생활정보
		sIfrCode14 = "03EV"  '베스트신문보기 배너형



	Case "mediapen" ' 미디어펜
	
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
	   nonescript=0
		sURL="http://www.popapp.co.kr/tomix/md.php?MD="+sType
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

       Case "jemin" ' 제민일보

		sCode = "04YB" 'pv 체크
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


		Case "moneyWe" ' 머니위
	
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

	
		Case "bridgeany" ' 브리지애니
	
		sCode = "02pn" 'pv 체크
		sIfrCode1 = "02pJ"	' 전체기사
		sIfrCode2 = "02pb"	' 포토뉴스
		sIfrCode3 = "02pE"   ' 많이본 뉴스
		sIfrCode4 = "02pG"	' 베스트 신문보기
		sIfrCode5 = "02pW"	' 주간 핫 리포트
		sIfrCode7 = "02pY"	' 요일별 웹툰
		sIfrCode8 = "02pZ"	' 인기웹툰
		sIfrCode9 = "02yX"	' 베스트TV
		sIfrCode10 = "02uF"	' 푸터배너
		sIfrCode11 = "02yX"	' 베스트웹툰 랜덤
	    sIfrCode12 = "032y"  '탑배너
		sIfrCode13 = "0322"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

		Case "hubnews" ' 허브뉴스
	
		sCode = "05ix" 'pv 체크
		sIfrCode1 = "03H0"	' 전체기사
		sIfrCode2 = "03H3"	' 포토뉴스
		sIfrCode3 = "03Gv"   ' 많이본 뉴스
		sIfrCode4 = "03Gx"	' 베스트 신문보기
		sIfrCode5 = "03Gw"	' 주간 핫 리포트
		sIfrCode7 = "03Gy"	' 요일별 웹툰
		sIfrCode8 = "03Gz"	' 인기웹툰
		sIfrCode9 = "03H1"	' 베스트TV
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

<% ElseIf datescript = 1 Then  %>
	<% If Time <= #04:00:00 AM# OR Time >= #09:00:00 PM# Then %>
		<script language = "javascript"> 
		if (window.history && window.history.pushState) {
			window.history.pushState('forward', null, document.location.href);
        
	        var popped = ('state' in window.history && window.history.state !== null), initialURL = location.href;

			$(window).bind('popstate', function (event) {
			  // Ignore inital popstate that some browsers fire on page load
			  var initialPop = !popped && location.href == initialURL
			  popped = true
			  if (initialPop) return;
			  
			  parent.top.location.replace("<%=sURL%>");
          

	        });
		 }
		</script>
	<% End If %>

<% Else %>
	<% If Time <= #04:00:00 AM# OR Time >= #07:00:00 AM# Then %>
		<script language = "javascript"> 
			if (window.history && window.history.pushState) {
			window.history.pushState('forward', null, document.location.href);
        
	        var popped = ('state' in window.history && window.history.state !== null), initialURL = location.href;

			$(window).bind('popstate', function (event) {
			  // Ignore inital popstate that some browsers fire on page load
			  var initialPop = !popped && location.href == initialURL
			  popped = true
			  if (initialPop) return;
			  
			  parent.top.location.replace("<%=sURL%>");
          

	        });
		 }
		</script>
	<% End If %>
<% End If %>
<style>

div a img {
    height: auto !important;;
	width:100% !important;;
}

</style>
</head>


<!--body  onload="callScheme('GRP', 6, 'DEFAULT');" -->
<body>

<!-- 구글애널리틱스 시작 -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-88829342-3', 'auto');
  ga('send', 'pageview');

</script>
<!-- 구글애널리틱스 끝 -->

<!-- 추가 -->
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
		<section class="info04">
			<h2>요일별 웹툰</h2>
				<div>
				<iframe width="100%" height="348px"  src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode7%>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
				</div>
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
			<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode4%>&lang=utf-8&out=script'></script>

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
			<iframe width="100%" height="330" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode11%>&out=iframe" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>	
				
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
		<div id="skip-navigation">
			<ol>
				<li><a href="#navi-main">주 메뉴 바로 가기</a></li>
				<li><a href="#contents">본문 내용 바로 가기</a></li>
			</ol>
		</div>


		<div id="int-global-wrapper">
			<div id="int-global-header">
				<div class="int-wrap-320px">
					<div class="int-gh-top">
						<div id="int-header">
							<a href="/pop.asp?type=<%=sURL%>" class="header-menu" title="메뉴를엽니다"><img src="common/image/header_menu.png" alt="메뉴버튼"/></a>
							<h1><a href="/pop.asp?type=<%=sURL%>" title="메인홈으로이동"><img src="common/image/header_logo.png" alt="로고"/></a></h1>
							<a href="/pop.asp?type=<%=sURL%>" class="header-srh" title="검색합니다"><img src="common/image/header_srh.png" alt="검색버튼"/></a>
						</div>
					</div>
					<div class="int-gh-bottom">	
						<div id="int-gh-gnb">
							<h2 class="marker"><a id="navi-main">주메뉴</a></h2>
							<ul>
								<li class="guide"><a id="int-gnb-button-01" href="/pop.asp?type=<%=sURL%>" title="많이 본 뉴스로 이동합니다.">많이본뉴스</a></li>
								<li><a id="int-gnb-button-02" href="/pop.asp?type=<%=sURL%>" title="실시간토픽로 이동합니다.">실시간토픽</a></li>
								<li><a id="int-gnb-button-03" href="/pop.asp?type=<%=sURL%>" title="베스트댓글로 이동합니다.">댓글 Best</a></li>
								<li><a id="int-gnb-button-04" href="/pop.asp?type=<%=sURL%>" title="포토로 이동합니다.">포토</a></li>
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
									<span class="more"><a href="/pop.asp?type=<%=sURL%>" title="더보기"><img src="common/image/arrow.png" alt="더보기"/></a></span>
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