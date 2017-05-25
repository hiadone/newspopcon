<?php

include_once "common/dc_dbpdomysql.php";
include_once "common/db_mysql.php";

$sType = isset($_REQUEST["type"]) ? $_REQUEST["type"] : "moneyWe";

$popstate="";
$datescript=0;
$sURL="http://www.popapp.co.kr/anytoon/md.php?MD=".$sType;
switch ($sType) {
 	



   	 case "adpop" : // 애드팝
		$popstate=1;
		$sCode = "04Gd" ;//pv 체크
		$sIfrCode1 = "03QF";	// 전체기사
		$sIfrCode2 = "03QI";	// 포토뉴스
		$sIfrCode3 = "03QA";   // 많이본 뉴스
		$sIfrCode4 = "03QC";	// 베스트 신문보기
		$sIfrCode5 = "03QB";	// 주간 핫 리포트
		$sIfrCode7 = "03QD";	// 요일별 웹툰
		$sIfrCode8 = "03QE";	// 인기웹툰
		$sIfrCode9 = "03QH";	// 베스트TV
		$sIfrCode10 = "03QJ";	// 푸터배너
		$sIfrCode11 = "03QG";	// 베스트웹툰 랜덤
		$sIfrCode12 = "032y";  //탑배너
		$sIfrCode13 = "03QK";  //신규생활정보
		$sIfrCode14 = "03Ff";  //베스트신문보기 배너형
		break;


		case "moneyWe": // 머니위
		$popstate=1;
		$sCode = "02ca" ;//pv 체크
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
	default:
 		$popstate=1;
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




$db_db = new DB_mysql('mysql:host=hiadone-m.cwvs02kjjoti.ap-northeast-2.rds.amazonaws.com;dbname=hiadone_ADM;charset=utf8', 'user_guest', 'guest///');


// $query="SELECT `cb_post`.*, `cb_post_extra_vars`.`*`
// FROM `cb_post`
// LEFT JOIN `cb_post_extra_vars` ON `cb_post`.`post_id` = `cb_post_extra_vars`.`post_id`
// WHERE `cb_post`.`brd_id` = '1'
// AND `post_del` <> 2
// AND `post_secret` =0
// AND `post_num` < '-1'
// AND `post_md` = :post_md
// ORDER BY `cb_post`.`post_id` desc";

$query="SELECT `cb_board`.*
FROM `cb_board`
WHERE `cb_board`.`brd_key` = 'any'
";
$db_db->pquery($query);
$r = $db_db->fetchrow();

$query="SELECT `cb_post`.*
FROM `cb_post`
WHERE `cb_post`.`brd_id` = :brd_id
AND `post_del` <> 2
AND `post_md` = :post_md
ORDER BY `cb_post`.`post_id` desc";


$db_db->bindParam(':brd_id', $r['brd_id'], PDO::PARAM_INT);
$db_db->bindParam(':post_md', $sType, PDO::PARAM_STR);
$db_db->pquery($query);
$extra_vars="";
if ($r = $db_db->fetchrow()) {


    $content_arr=explode("$",$r['post_content']);

    $media_code=array();
    foreach($content_arr as $value1){

        
        if(!empty($value1)){

        //echo content($value1)."<br>";
        $value2=explode("=",strip_tags($value1));
        
        //echo htmlspecialchars($value2[1],ENT_NOQUOTES)."<br>";
        $value3= explode(";",$value2[1]);

        $value3[0]= str_replace("\"","",$value3[0]);
        $value3[0]= str_replace("\'","",$value3[0]);

        
        $media_code[trim($value2[0])]= trim($value3[0]);
        //preg_match_all($pattern, $value3[0], $match);
        //$value3[0] = implode('', $match[0]);
        

      
        }
    }
    //print_r($media_code);
    // $weekPageId="";
    // $weekPageId[1] = $media_code['pageid10'];
    // $weekPageId[2] = $media_code['pageid11'];
    // $weekPageId[3] = $media_code['pageid12'];
    // $weekPageId[4] = $media_code['pageid13'];
    // $weekPageId[5] = $media_code['pageid14'];
    // $weekPageId[6] = $media_code['pageid15'];
    // $weekPageId[0] = $media_code['pageid16'];

    

    $query="SELECT `cb_post_extra_vars`.*
    FROM `cb_post_extra_vars`
    WHERE `cb_post_extra_vars`.`post_id` = :post_id";
    $db_db->bindParam(':post_id', $r['post_id'], PDO::PARAM_INT);
    $db_db->pquery($query);
    
    while($row = $db_db->fetchrow()){


        $extra_vars[$row['pev_key']] = $row['pev_value'];
    }


    $query="SELECT `cb_post_link`.*
    FROM `cb_post_link`
    WHERE `cb_post_link`.`post_id` = :post_id";
    $db_db->bindParam(':post_id', $r['post_id'], PDO::PARAM_INT);
    $db_db->pquery($query);
    
    while($row = $db_db->fetchrow()){


        $post_link[] = $row;
    }
} 
    

if(!empty($extra_vars)){
	$popstate=0;
	if($extra_vars['popstate']==='enable'){
	    $popstate=1;
	    if($extra_vars['view_type']==='time'){
	    	if(!empty($post_link))
	    	foreach($post_link as $value){

	            if($value['pln_start'] <= date('H') && $value['pln_end'] >= date('H') ){

	                $popstate=1;
	                $media_code['popstate_url']= $value['pln_url'];
	                break;
	            }            
	        }
	        
	    } else {
			if(!empty($post_link))
	        $media_code['popstate_url']= $post_link[mt_rand(0,count($post_link)-1)]['pln_url'];
	    }
	
	}
	//미디어 코드 재구성
		if(isset($media_code['sCode']))$sCode = $media_code['sCode'] ;//pv 체크
		if(isset($media_code['sIfrCode1']))$sIfrCode1 = $media_code['sIfrCode1'];	// 전체기사
		if(isset($media_code['sIfrCode2']))$sIfrCode2 = $media_code['sIfrCode2'];	// 포토뉴스
		if(isset($media_code['sIfrCode3']))$sIfrCode3 = $media_code['sIfrCode3'];   // 많이본 뉴스
		if(isset($media_code['sIfrCode4']))$sIfrCode4 = $media_code['sIfrCode4'];	// 베스트 신문보기
		if(isset($media_code['sIfrCode5']))$sIfrCode5 = $media_code['sIfrCode5'];	// 주간 핫 리포트
		if(isset($media_code['sIfrCode7']))$sIfrCode7 = $media_code['sIfrCode7'];	// 요일별 웹툰
		if(isset($media_code['sIfrCode8']))$sIfrCode8 = $media_code['sIfrCode8'];	// 인기웹툰
		if(isset($media_code['sIfrCode9']))$sIfrCode9 = $media_code['sIfrCode9'];	// 베스트TV
		if(isset($media_code['sIfrCode10']))$sIfrCode10 = $media_code['sIfrCode10'];	// 푸터배너
		if(isset($media_code['sIfrCode11']))$sIfrCode11 = $media_code['sIfrCode11'];	// 베스트웹툰 랜덤
	    if(isset($media_code['sIfrCode12']))$sIfrCode12 = $media_code['sIfrCode12'];  //탑배너
		if(isset($media_code['sIfrCode13']))$sIfrCode13 = $media_code['sIfrCode13'];  //신규생활정보
		if(isset($media_code['sIfrCode14']))$sIfrCode14 = $media_code['sIfrCode14'];  //베스트신문보기 배너형
		if(isset($media_code['sIfrCode15']))$sIfrCode15 = $media_code['sIfrCode15'];  //인기 신작
		

	
	if(isset($media_code['popstate_url'])) $sURL= $media_code['popstate_url'];
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


<?php if($popstate === 0){?>

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

</style>
</head>


<!-- body  onload="callScheme('GRP', 6, 'DEFAULT');" -->
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
					<iframe id="top-article" width="100%" height="296" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode1?>&out=iframe" frameborder="0" scrolling="no"></iframe>
		</section>

	<!-- 포토뉴스영역 02-->
		<section class="info02">
				<h2>포토뉴스</h2>
				<iframe src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode2?>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>	 
		</section>

	<!-- 생활정보 영역 03 -->
		<section class="info03" id="scroll02">
			<h2>생활정보</h2>
				<iframe width="100%" height="185" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode3?>&out=iframe" frameborder="0" scrolling="no"></iframe>
		</section>

	<!-- 요일별 웹툰 04 -->
		<section class="info04">
			<h2>요일별 웹툰</h2>
				<div >
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
	<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode4?>&lang=utf-8&out=script'></script>
				
		</section>

	<!-- 인기웹툰 04 -->
		<section class="info04" id="scroll04">
			<h2>인기 웹툰</h2>
			<iframe width="100%" height="348" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode8?>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
		</section>

	<!-- 주간 핫 리포트 -->
		<section class="info6">
				<h2>주간 핫 리포트</h2>
				<div style="position:relative; padding-top: 83%;">
				<iframe width="100%" height="100%" style="position:absolute; top:0; left: 0; padding:0 3%;" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode5?>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
				<div>
		</section>

	<!-- Best 웹툰 Top6 07 -->
		<section class="info07" id="scroll04">
			<h2>Best 웹툰 TOP6</h2>
			<iframe width="100%" height="345" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode11?>&out=iframe" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>	
				
		</section>

	<!-- 하단 배너 08 -->
		<section class="info08">
											<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode10?>&out=script"></script>
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
		<iframe width="0" height="0" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sCode?>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no">
		</iframe>
	</body>
</html>	

		



