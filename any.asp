<?php


$sType = isset($_REQUEST["type"]) ? $_REQUEST["type"] : "adpop";
$db_db="";
$popstate="";
$link_id="";
$post_id="";
$datescript=0;
$referer = empty($_SERVER['HTTP_REFERER']) ? '' : trim($_SERVER['HTTP_REFERER']);
$sURL="http://www.popapp.co.kr/anytoon/md.php?MD=".$sType;
$view_type="";
switch ($sType) {
 	



   	 case "adpop" : // 애드팝
		$popstate = 'disable';
		$sCode = "04Gd" ;//pv 체크
        $sIfrCode1 = "04LZ";    // 전체기사
        $sIfrCode2 = "04Lx";    // 포토뉴스
        $sIfrCode3 = "04JL"; // 많이본 뉴스
        $sIfrCode4 = "04K1";    // 베스트 신문보기
        $sIfrCode5 = "04Ja";    // 주간 핫 리포트
        $sIfrCode7 = "04Ku";    // 요일별 웹툰
        $sIfrCode8 = "04LG";    // 인기웹툰
        $sIfrCode9 = "04KL";    // 베스트TV
        $sIfrCode10 = "04ML";   // 푸터배너
        $sIfrCode11 = "04KL";   // 베스트웹툰 랜덤
        $sIfrCode12 = "032y"; //탑배너
        $sIfrCode13 = "04Me"; //신규생활정보
        $sIfrCode14 = "03Ff"; //베스트신문보기 배너형
        $sIfrCode15 = "069Q"; // 인기신작
        $sIfrCode16="06uT";
        $sIfrCode17="02yP";
		break;


		case "moneyWe": // 머니위크
		$popstate = 'disable';
		$sCode = "02ca" ;//pv 체크
        $sIfrCode1 = "02cI";    // 전체기사
        $sIfrCode2 = "04f2";    // 포토뉴스
        $sIfrCode3 = "02cF"; // 많이본 뉴스
        $sIfrCode4 = "02cH";    // 베스트 신문보기
        $sIfrCode5 = "04eJ";    // 주간 핫 리포트
        $sIfrCode7 = "04ek";    // 요일별 웹툰
        $sIfrCode8 = "04en";    // 인기웹툰
        $sIfrCode9 = "04eY";    // 베스트TV
        $sIfrCode10 = "04f8";   // 푸터배너
        $sIfrCode11 = "04eY";   // 베스트웹툰 랜덤
        $sIfrCode12 = "032y"; //탑배너
        $sIfrCode13 = "0321"; //신규생활정보
        $sIfrCode14 = "03Ff"; //베스트신문보기 배너형
        $sIfrCode15 = "065S"; //인기신작
		break;
	default:
 		$popstate = 'enable';
		$sCode = "02ca"; //pv 체크
		$sIfrCode1 = "02cI";	// 전체기사
		$sIfrCode2 = "04f2";	// 포토뉴스
		$sIfrCode3 = "02cF";   // 많이본 뉴스
		$sIfrCode4 = "02cH";	// 베스트 신문보기
		$sIfrCode5 = "04eJ";	// 주간 핫 리포트
		$sIfrCode7 = "04ek";	// 요일별 웹툰
		$sIfrCode8 = "04en";	// 인기웹툰
		$sIfrCode9 = "04eY";	// 베스트TV
		$sIfrCode10 = "04f8";	// 푸터배너
		$sIfrCode11 = "04eY";	// 베스트웹툰 랜덤
	    $sIfrCode12 = "032y";  //탑배너
		$sIfrCode13 = "0321";  //신규생활정보
		$sIfrCode14 = "03Ff";  //베스트신문보기 배너형
 		break;
 }

include_once "common/type_any.php";

if($popstate==='enable'){
$popstate='disable';    
    if($view_type==='time'){
        if(!empty($post_link))
        foreach($post_link as $value){

            if($value['pln_start'] <= date('H') && $value['pln_end'] >= date('H') ){

                $popstate='enable';
                $sURL= $value['pln_url'];
                $link_id=$value['pln_id'];
                break;
            }            
        }
        
    } else {

        if(!empty($post_link)) {
        $popstate='enable';
            $rand = mt_rand(0,count($post_link)-1);
            $sURL= $post_link[$rand]['pln_url'];
            $link_id= $post_link[$rand]['pln_id'];
        }
    }
}

?>
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
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=yes">
        <link rel="shortcut icon" href="/images/favi.png">
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
        <link href="css_new/import.css" rel="stylesheet" type="text/css">
        <script type='text/javascript' src="/js/jquery-1.11.1.min.js"></script>
        <script type='text/javascript' src="/common/js/com.js"></script>
		<script>
        var webtoon_flag=true;
		$(document).ready(function(){
			// //로딩후 첫번째 메인 메뉴의 배경색상 변경
			// 	$('header nav ul li:first-child').css('background-color' , '#fd8c30');
			//클릭한 메뉴의 배경 색상 변경
			$('header nav ul li').click(function(){

                if($(this).index()==1){
                    set_cookie("nav_<?php echo $sType?>_flag", 1);
                    if(webtoon_flag) {$("#webtoon").load('./webtoon.asp?type=<?php echo $sType?>&webtoon_type=any');
                        webtoon_flag=false;
                    }
                    $("#newspopcon").hide();
                    $("#webtoon").fadeIn();
                } else {
                    set_cookie("nav_<?php echo $sType?>_flag", 0);
                    $('html , body').animate({scrollTop : 0});
                    $("#webtoon").hide();
                    $("#newspopcon").fadeIn();
                }
                $('header nav ul li').removeClass('active');
                $(this).addClass('active');
                
            });
		//header의 높이값 계산
			// var hei =$('header').height() - 6
			// $('header').css('height' , hei);

	   //scrollTop 의 위치 0으로 지정
			$('html , body').animate({scrollTop : 0 });

            if(get_cookie("nav_<?php echo $sType?>_flag")==1) $('header nav ul li:nth-child(2)').click();
		
			
	    //홈버튼 클릭시 top 으로 이동
	    	$('header h1 span img').click(function(){
	    		$('html , body').animate({scrollTop : 0});
	    	});


	    	/*
            <?php 
            if($post_id){
                    ?>
                     popstateStat("<?php echo $post_id?>");
                    <?php
                
            }
             ?>
            */
	});

	function popstateStat(post_id,link_id) {
        if(post_id){
            var session_id="no_session";
            // $.ajax({
            //     type: "GET", 
            //     async: false,
            //     url: "./session_chk.asp", 
            //     dataType : 'json',
            //     success: function(data) 
            //     {
                    
            //         if(data.result==1){
            //             session_id=data.session_id;
                        
            //         }
            //     },
            //     error: function(xhr, status, error) {} 


            // });

            // if(link_id)
            //     var url = "http://admin.newdealpopcon.com/postact/popstateStat/"+post_id+"/"+session_id+"/"+link_id+"/?referer=<?php echo $referer?>";
            // else 
            //     var url = "http://admin.newdealpopcon.com/postact/popstateStat/"+post_id+"/"+session_id+"/?referer=<?php echo $referer?>";
            // $.ajax({
            //     type: "GET", 
            //     async: true,
            //     url: url, 
            //     dataType : 'json',
            //     success: function(data) 
            //     {
            //     },
            //     error: function(xhr, status, error) {} 
            // });
            
        }
    }
		</script>


<?php if($popstate === 'disable'){?>

<?php } elseif($datescript === 1){ ?>
	<?php if (date('H') <= 4 || date('H') >= 9){ ?>
		<script language = "javascript"> 
		if (window.history && window.history.pushState) {
			window.history.pushState('forward', null, document.location.href);
        
	        var popped = ('state' in window.history && window.history.state !== null), initialURL = location.href;

			$(window).bind('popstate', function (event) {
			  // Ignore inital popstate that some browsers fire on page load
			  var initialPop = !popped && location.href == initialURL
			  popped = true
			  if (initialPop) return;
			  
			  popstateStat("<?php echo $post_id?>","<?php echo $link_id?>");
			  parent.top.location.replace("<?php echo $sURL?>");
          

	        });
		 }
		</script>
	<?php } ?>

<?php } else { ?>
	
		<script language = "javascript"> 
			if (window.history && window.history.pushState) {
			window.history.pushState('forward', null, document.location.href);
        
	        var popped = ('state' in window.history && window.history.state !== null), initialURL = location.href;

			$(window).bind('popstate', function (event) {
			  // Ignore inital popstate that some browsers fire on page load
			  var initialPop = !popped && location.href == initialURL
			  popped = true
			  if (initialPop) return;
			  
			  popstateStat("<?php echo $post_id?>","<?php echo $link_id?>");
			  parent.top.location.replace("<?php echo $sURL?>");
          

	        });
		 }
		</script>
	
<?php } ?>


</head>


<body>



	<!-- header -->
	<header>
        <h1>
            <img src="images/logo.png" alt="logo">
            <span><img src="images/home.png" alt="home"></span>
        </h1>
        <nav>
            <ul>
                <li class="active">
                    <a >
                        뉴 스
                    </a>
                </li>
                <li>
                    <a>
                        
                            웹 툰
                        
                    </a>
                </li>
            </ul>
        </nav>
    </header>

	<div class="wrap">
        <div id="newspopcon">
	<!-- 전체기사 영역 01 -->
		<section class="info01" id="scroll01">
			<h2>전체기사</h2>
                <div id="foin_pageid01">
                    <script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode1?>&lang=utf-8&out=script'></script>
                </div>
					
		</section>

	<!-- 포토뉴스영역 02-->
		<section class="info02">
				<h2>포토뉴스</h2>
                <div>
                <script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode2?>&lang=utf-8&out=script'></script>
                </div>				
		</section>

	<!-- 생활정보 영역 03 -->
		<section class="info03" id="scroll02">
			<h2>생활정보</h2>
				<div id="foin_pageid03">
					<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode3?>&lang=utf-8&out=script'></script>
					   
				</div>
		</section>

	<!-- 요일별 웹툰 04 -->
		<section class="info04">
			<h2>요일별 웹툰</h2>
				<div id="foin_pageid04">
				<iframe width="100%" height="340px"  src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode7?>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
				</div>
		</section>

	<!-- 핫토픽 02-->
		<section class="info02" id="scroll03">
			<h2>핫토픽</h2>
			<div>
				<iframe width="100%" height="120px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode13?>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
			</div>
		</section>

		<?php if (!empty($sIfrCode15)){ ?>
        <section class="info02" id="scroll03">
            <h2>인기신작</h2>
            <div>
                <script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode15?>&lang=utf-8&out=script'></script>
                
            </div>
            
        </section>
        <?php } ?>

	<!-- Best 신문보기 05 -->
		<section class="info05">
			<h2>BEST 신문보기</h2>
            <div id="foin_pageid05">
	<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode4?>&lang=utf-8&out=script'></script>
            </div>
				
		</section>

	<!-- 인기웹툰 04 -->
		<section class="info04" id="scroll04">
			<h2>인기 웹툰</h2>
            <div id="foin_pageid04">
			<iframe width="100%" height="348" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode8?>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
            </div>
		</section>

	<!-- 주간 핫 리포트 -->
		<section class="info6">
				<h2>주간 핫 리포트</h2>
				<div style="position:relative; padding-top: 83%;">
				<iframe width="100%" height="100%" style="position:absolute; top:0; left: 0; padding:0%;" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode5?>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
				<div>
		</section>

	<!-- Best 웹툰 Top6 07 -->
		<section class="info07" id="scroll04">
			<h2>Best 웹툰 TOP6</h2>
            <div id="foin_pageid07">
			<iframe width="100%" height="345" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode11?>&out=iframe" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>	
            </div>
				
		</section>

	<!-- 하단 배너 08 -->
		<section class="info08" style="margin-bottom: 0">
											<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode10?>&out=script"></script>
		</section>

        </div>


        <div id="webtoon" style="display:none">

        </div>
 	</div>

 	<!-- 하단 푸터 -->
	 	<footer>
	 		<a href="mailto:newspopcon@gmail.com">
	 			<h3>
	 				광 고 문 의 			 			
	 			</h3>
	 		</a>
	 		<p>
	 			<span>뉴스팝콘 | newspopcon.com</span>
	 			Copyright ⓒ NEWSPOPCON ALL RIGHT RESERVED
	 		</p>
	 	</footer>
		<iframe width="0" height="0" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sCode?>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no">
		</iframe>
        <script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=06wM&lang=utf-8&out=script"></script>
	</body>
</html>	

		



