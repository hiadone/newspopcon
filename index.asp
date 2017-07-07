<?php 

$sType = isset($_REQUEST["type"]) ? $_REQUEST["type"] : "default";
$db_db="";
$popstate="";
$link_id="";
$post_id="";
$datescript=0;
$view_type="";
$referer = empty($_SERVER['HTTP_REFERER']) ? '' : trim($_SERVER['HTTP_REFERER']);


$sURL="http://www.popapp.co.kr/tomix/md.php?MD=default";
$sCode = "05Ps" ;//pv 체크
$sIfrCode1 = "01Ca" ;// 전체기사
$sIfrCode2 = "01Cb" ;// 포토뉴스
$sIfrCode3 = "01Cc" ;// 많이본 뉴스
$sIfrCode4 = "01Ci" ;// 베스트 신문보기
$sIfrCode5 = "027J" ;// 주간 핫 리포트
$sIfrCode7 = "02kX" ;// 요일별 웹툰
$sIfrCode8 = "02kY" ;// 인기웹툰
$sIfrCode9 = "02yP" ;// 베스트게임
$sIfrCode10 = "02u8" ;// 푸터배너
$sIfrCode11 = "02yP" ;// 베스트웹툰 랜덤
$sIfrCode12 = "032y" ;//탑배너
$sIfrCode13 = "0320" ;//신규생활정보
$sIfrCode14 = "03EV" ;//베스트신문보기 배너형
$sIfrCode15 = "065Q" ;//인기신작
$popstate='enable';


include_once "common/type_hiadone_newspopcon.php";



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
<html>
<head>
<meta charset="utf-8">
<title>Newspopcon</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="/images/favi.png">
<link href="css_new/import.css" rel="stylesheet" type="text/css">
<script type='text/javascript' src="/js/jquery-1.11.1.min.js"></script>
<!-- <script type='text/javascript' src='/js/jquery.cookie.js'></script>
<script type='text/javascript' src='/js/shortcut.js'></script> -->
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
<script>
var webtoon_flag=true;
	$(document).ready(function(){
	// //로딩후 첫번째 메인 메뉴의 배경색상 변경
	// 	$('header nav ul li:first-child').css('background-color' , '#fd8c30');
	//클릭한 메뉴의 배경 색상 변경
		$('header nav ul li').click(function(){
            if($(this).index()==1){
                if(webtoon_flag) {$("#webtoon").load('./webtoon.asp?type=<?php echo $_REQUEST["type"]?>&webtoon_type=default');
                    webtoon_flag=false;
                }
                $("#newspopcon").hide();
                $("#webtoon").show();
            } else {
                $('html , body').animate({scrollTop : 0});
                $("#webtoon").hide();
                $("#newspopcon").show();
            }
			$('header nav ul li').removeClass('active');
			$(this).addClass('active');
            
		});
	//header의 높이값 계산
		// var hei =$('header').height() - 6
		// $('header').css('height' , hei);

   //scrollTop 의 위치 0으로 지정
		$('html , body').animate({scrollTop : 0 });


	
    //홈버튼 클릭시 top 으로 이동
    	$('header h1 span img').click(function(){
    		$('html , body').animate({scrollTop : 0});
    	});

        <?php 
        if($post_id){
                ?>
                 popstateStat("<?php echo $post_id?>");
                <?php
            
        }
         ?>

        
     //   popstateStat("<?php echo $post_id?>");
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

<style>

div a img {
    height: auto !important;;
	width:100% !important;;
}


/*전체 기사영역*/
	.info01 .title_area:nth-child(1) .title{
		padding-top: 0 !important;
	}

	.info01 a{
		height: 18px;
	}

	.info01 .title_area{
		padding: 0 5% !important;
	}

/*생활정보 영역*/
	.info03 .title_area{
		padding:0 5% !important;
	}

	.info03 .title_area:nth-child(1) .title{
		padding-top: 0 !important;
	}

/*요일별웹툰 , 인기웹툰 영역*/
	.info04 > div > div > ul{
		width: 90% !important;
		padding:0 5% !important;	
	}

/* 포토뉴스,핫토픽,인기신작 영역,*/
	.info02 > div{
		padding:0 5%;
	}

	.info02 > div > div {
		height: 100% !important;
	}

	.info02 > div > div > div{
		width: 32% !important;
		height: auto !important;
		position: relative !important;
		top:0 !important;
		left: 0 !important;
		display: inline-block !important;
		margin-right: 2%;
		float: left;
	}

	.info02 > div > div > div:last-child{
		margin-right: 0;
	}

	.info02 .layout{
		width: 100% !important;
		margin:0 !important;
	}

	.info02 .layout .thum{
		position: relative !important;
		top:0 !important;
		left: 0 !important;
	}
	.info02 .layout .summary{
		position: relative !important;
		top:0 !important;
		left: 0 !important;
		right: 0 !important;
		margin:0 !important;
		margin-top: 2% !important;
		font-family: "돋움",dotum !important;
	}

	.info02 .layout .summary a{
		text-overflow: ellipsis;
		white-space: nowrap;
		overflow:hidden;
	}

/*best 신문보기 영역*/
	.info05 > div > div{
		padding:0 !important;
		border:0 !important;
	}

	.info05 > div > div > div{
		padding:1% 5% !important;
	}

	.info05 > div > div > div:first-child{
		padding-top:0 !important;
	}

/*광고 배너 영역*/
	.info06 img{
		padding:0 5%;
		box-sizing: border-box;
	}

/*best 웹툰 Top6 영역*/
	.info07 > div > div > ul{
		padding: 0 5% !important;
	}

	.info07 .hi_list_contents{
		border:0 !important;
	}



</style>
</head>

<!-- <body  onload="callScheme('GRP', 4, 'DEFAULT');"> -->
<body>
<!-- header 영역 -->
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
						<figure>
							웹 툰
						</figure>
					</a>
				</li>
			</ul>
		</nav>
	</header>

	<div class="wrap">
        <div id="newspopcon">
		<!-- 전체기사 영역-->
			<section class="info01">

				<h2>전체기사</h2>
					<!-- 스크립트 영역 -->
					<div id="foin_pageid01">
						<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode1?>&lang=utf-8&out=script'></script>
					</div>
			</section>

		<!-- 포토뉴스 영역-->
			<section class="info02">
				<h2>포토뉴스</h2>

				<div>
				<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode2?>&lang=utf-8&out=script'></script>
				</div>

			</section>

		<!-- 생활정보 영역 -->
			<section class="info03">
				<h2>생활정보</h2>

					<div id="foin_pageid03">
						<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode3?>&lang=utf-8&out=script'></script>					   
					</div>

			</section>

		<!-- 요일별 웹툰 영역 -->
			<section class="info04">
				<h2>요일별 웹툰</h2>
					<div id="foin_pageid04">
						<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode7?>&lang=utf-8&out=script'></script>
					</div>
			</section>

		<!-- 핫토픽 영역-->
			<section class="info02">
				<h2>핫토픽</h2>
				<div>
					<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode13?>&lang=utf-8&out=script'></script>
					
				</div>
			</section>

		<!-- 인기신작 영역 -->
	        <?php if (!empty($sIfrCode15)){ ?>
	        <section class="info02" id="scroll03">
	            <h2>인기신작</h2>
	            <div>
	                <script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode15?>&lang=utf-8&out=script'></script>
	                
	            </div>
	            
	        </section>
	        <?php } ?>

		<!-- Best 신문보기-->
			<section class="info05">

				<h2>BEST 신문보기</h2>
				<div id="foin_pageid05">
					<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode4?>&lang=utf-8&out=script'></script>
				</div>
			</section>

		<!-- 인기웹툰 04 -->
			<section class="info04">
				<h2>인기 웹툰</h2>
				<div id="foin_pageid04">
					<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode8?>&lang=utf-8&out=script'></script>
				</div>
			</section>

		<!-- 주간 핫리포트 06 -->
			<section class="info06">
				<h2>주간 핫 리포트</h2>
				<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode5?>&lang=utf-8&out=script'></script>
			</section>

		<!-- Best 웹툰 Top6 07 -->
			<section class="info07">
				<h2>Best 웹툰 TOP6</h2>
					<div id="foin_pageid07">
						<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode11?>&lang=utf-8&out=script'></script>
					</div>
			</section>

		<!-- 하단 배너 08 -->
			<section class="info08" style="margin-bottom: 0">
				<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode10?>&lang=utf-8&out=script'></script>
				</a>
			</section>
        </div>


        <div id="webtoon" style="display:none">

        </div>
 	</div>

 	<!-- 하단 푸터 -->
	 	<footer>
	 		<a href="mailto:webtoonpopcon@gmail.com">
	 			<h3>
	 				광 고 문 의 			 			
	 			</h3>
	 		</a>
	 		<p>
	 			<span>뉴스팝콘 | newspopcon.com</span>
	 			Copyright ⓒ NEWSPOPCON ALL RIGHT RESERVED
	 		</p>
	 	</footer>
 	
	<iframe width="0" height="0" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sCode?>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
</body>
</html>
