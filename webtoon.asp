<?php 
$sType = isset($_REQUEST["type"]) ? $_REQUEST["type"] : "default";
$webtoon_type = isset($_REQUEST["webtoon_type"]) ? $_REQUEST["webtoon_type"] : "default";

// 성인웹툰
$pageid30 = "06dW"; // 성인_실시간인기웹툰_6슬롯_328X200
$pageid31 = "06d8"; // PD 강력추천작_302X200
$pageid32 = "06ey"; // 성인_배너_1_360X15
$pageid33 = "06eG"; // 정주행 추천작_9슬롯_214X200
$pageid34 = "06ez"; // 성인_배너_2_360X150
$pageid35 = "06dv"; // 성인_당신의 판타지를 이뤄줄 그녀들_214X200
$pageid36 = "06eb"; // 성인_하단배너_670X400



if($webtoon_type==="default") include_once "common/type_hiadone_newspopcon.php";
elseif($webtoon_type==="eco") include_once "common/type_eco.php";
elseif($webtoon_type==="any") include_once "common/type_any.php";
elseif($webtoon_type==="pop") include_once "common/type_pop.php";
else include_once "common/type_hiadone_newspopcon.php";



?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Newspopcon</title>

<!-- 구글애널리틱스 시작 -->

<script>
$(document).ready(function(){
            /*로맨스영역*/
            $.ajax({
            type: "GET", 
            async: true,
            data: "pageid=<?=$pageid30?>&lang=utf-8&out=json", 
            url: "http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr", 
            cache: false, 
            dataType: "jsonp", 
            jsonp: "jquerycallback", 
            success: function(data) 
            {
              $("#pageid30").html(data.tag); 
            },
            error: function(xhr, status, error) { ; } 
            });
            
            /*액션영역*/
            $.ajax({
            type: "GET", 
            async: true,
            data: "pageid=<?=$pageid31?>&lang=utf-8&out=json", 
            url: "http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr", 
            cache: false, 
            dataType: "jsonp", 
            jsonp: "jquerycallback", 
            success: function(data) 
            {
              $("#pageid31").html(data.tag); 
            },
            error: function(xhr, status, error) { ; } 
            });

            /*광고1*/
            $.ajax({
            type: "GET", 
            async: true,
            data: "pageid=<?=$pageid32?>&lang=utf-8&out=json", 
            url: "http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr", 
            cache: false, 
            dataType: "jsonp", 
            jsonp: "jquerycallback", 
            success: function(data) 
            {
              $("#pageid32").html(data.tag); 
            },
            error: function(xhr, status, error) { ; } 
            });

            /*스포츠영역*/
            $.ajax({
            type: "GET", 
            async: true,
            data: "pageid=<?=$pageid33?>&lang=utf-8&out=json", 
            url: "http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr", 
            cache: false, 
            dataType: "jsonp", 
            jsonp: "jquerycallback", 
            success: function(data) 
            {
              $("#pageid33").html(data.tag); 
            },
            error: function(xhr, status, error) { ; } 
            });
            
            /*드라마영역*/
            $.ajax({
            type: "GET", 
            async: true,
            data: "pageid=<?=$pageid34?>&lang=utf-8&out=json", 
            url: "http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr", 
            cache: false, 
            dataType: "jsonp", 
            jsonp: "jquerycallback", 
            success: function(data) 
            {
              $("#pageid34").html(data.tag); 
            },
            error: function(xhr, status, error) { ; } 
            });
            
            /*광고2*/
            $.ajax({
            type: "GET", 
            async: true,
            data: "pageid=<?=$pageid35?>&lang=utf-8&out=json", 
            url: "http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr", 
            cache: false, 
            dataType: "jsonp", 
            jsonp: "jquerycallback", 
            success: function(data) 
            {
              $("#pageid35").html(data.tag); 
            },
            error: function(xhr, status, error) { ; } 
            });

            /*무협/판타지영역*/
            $.ajax({
            type: "GET", 
            async: true,
            data: "pageid=<?=$pageid36?>&lang=utf-8&out=json", 
            url: "http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr", 
            cache: false, 
            dataType: "jsonp", 
            jsonp: "jquerycallback", 
            success: function(data) 
            {
              $("#pageid36").html(data.tag); 
            },
            error: function(xhr, status, error) { ; } 
            });
            
            
            
            /*하단 푸터 광고 영역
            $.ajax({
            type: "GET", 
            async: true,
            data: "pageid=03vw&out=json", 
            url: "http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr", 
            cache: false, 
            dataType: "jsonp", 
            jsonp: "jquerycallback", 
            success: function(data) 
            {
              $("#footer_ad").html(data.tag); 
            },
            error: function(xhr, status, error) { ; } 
            });
            /**/

            
});

</script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-88829342-3', 'auto');
  ga('send', 'pageview');

</script>

<!-- 구글애널리틱스 끝 -->


<style>



/*투믹스 독점작*/
	.info09 > div{
		padding:0 5% !important;
	}

	.info09 .layout{
		height: auto !important;
	}

	.info09 .layout:nth-child(5),
	.info09 .layout:nth-child(6){
		margin-bottom:0 !important;
	}

/*pd강력추천*/
	.info10 > div > div{
		width: 100% !important;
		padding:0 5% !important;
		box-sizing: border-box;
	}

	.info10 .layout{
		height: 100% !important;
		margin-bottom: 0!important;
		display: inline-block !important;
	}

/*정주행 추천작*/
	.info04 > div > div{
		padding:0 5%;
	}

	.info04 .layout:nth-child(7),
	.info04 .layout:nth-child(8),
	.info04 .layout:nth-child(9){
		margin-bottom:0 !important;
	}








</style>
</head>

<body>
    <?php  
        $top_toon_type=array(
        'tvdaily',
        
        'hkbs',
        'ecomedia',
        'youngnong',
        'webdaily',
        'sisunnnews',
        'siminilbo',
        'basketkorea',
        'mydaily',
        'thefirstmedia',
        'obs',
        'kns'
        );
    ?>
	<div>

		<!-- 투믹스 독점작 영역-->
			<section class="info09">
				<?php  
                  if(in_array($sType,$top_toon_type))
                    echo '<h2>탑툰 독점작</h2>';
                  else if($sType==='ajunews')
                    echo '<h2>투믹스 독점작</h2>';
                  else echo '<h2>독점 연재작</h2>';
                ?>
				<!-- 스크립트 영역 -->
					<div id="pageid30" >
						
					</div>

			</section>

		<!-- PD 강력추천 영역-->
			<section class="info10">
				<h2>PD 강력추천</h2>

				<div id="pageid31">
				
				</div>

			</section>

		<!-- 광고영역  -->
			<section class="info08">
                <div id="pageid32" >
				
				</div>
			</section>

		<!-- 정주행 추천작 영역 -->
			<section class="info04">
				<h2>정주행 추천작</h2>
					<div id="pageid33">
						
					</div>
			</section>

		<!-- 광고영역  -->
			<section class="info08">
                <div id="pageid34">
				
				</div>
			</section>

		<!-- 당신의 판타지를 이뤄줄 그녀들 -->
			<section class="info04">
				<h2>당신의 판타지를 이뤄줄 그녀들</h2>
					<div id="pageid35">
						
					</div>
			</section>
		

		<!-- 하단 배너 08 -->
			<section class="info08" style="margin-bottom: 0">
                <div id="pageid36">
				
                <div>
			</section>
 	</div>
</body>
</html>
