<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>NEWSPOPCON</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="format-detection" content="telephone=no, email=no, address=no">
<!-- 자동 링크 적용 안되게 -->
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
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>





<!-- 페이지 버튼 스크립트 -->
<script src="common/js/main.js"></script>
<script type='text/javascript' src='http://www.mobipopcon.com/js/jquery.cookie.js'></script>
<script type='text/javascript' src='http://www.mobipopcon.com/js/shortcut.js'></script>
<script src="js/jquery.bxslider.js"></script>
<script src="plugins/jquery.fitvids.js"></script>
<script type="text/javascript">
      window.addEventListener('load', function() { window.scrollTo(0,1); }, false);//주소창 숨기기
    </script>

<!--
<script language = "javascript"> 
  if (window.history && window.history.pushState) {
    window.history.pushState('forward', null, document.location.href);

    $(window).on('popstate', function() {
      parent.top.location.replace("http://www.popapp.co.kr/tomix/md.php?MD=default");
    });
  }
-->
<script language = "javascript"> 
function autoResize(i)
{
    var iframeHeight=
    (i).contentWindow.document.body.scrollHeight;
    $("#sliders").css('height',iframeHeight);
    
 
}
</script>



</head>
<body >

<!-- 구글애널리틱스 시작 --> 
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-88829342-3', 'auto');
  ga('send', 'pageview');
</script> 









<!-- header -->
<header>
  <h1><img src="image/logo.png" alt="logo"></h1>
  <ul class="thumbPager">
    <li> <a data-slide-index="0" href=""> 뉴 스 </a> </li>
    <li> <a data-slide-index="1" href=""> 쇼 핑 </a> </li>
  </ul>
</header>

<ul class="bxslider">

  <li>
    <div class="wrap" > 
      <!-- 전체뉴스 -->
      <div  class="all" >
        <div>
          <h2>전체기사</h2>
          <div id="foin_01Ca">
            <?php 
            include './include/foin_01Ca.php';
             ?>
          </div>
        </div>
      </div>
      
      <!-- 포토뉴스 -->
     <div  class="all">
        <div>
          <h2>포토뉴스</h2>
          <div id="foin_01Cb">
            <?php 
            include './include/foin_01Cb.php';
          
             ?>
          </div>
        </div>
      </div>
      
      <!-- 페이지 버튼 -->
      <div id="int-pagination" >
        
        <p> <a href="/" class="prev" title="이전페이지가 보입니다."> <img src="common/image/prev.png" alt="이전으로"/> </a> <a class="int-pagination-button select" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Cb&out=iframe" title="해당페이지가 보입니다."> <img src="common/image/bullet.png" alt="페이지버튼"/> </a> <a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Cb&out=iframe" title="해당페이지가 보입니다."> <img src="common/image/bullet.png" alt="페이지버튼"/> </a> <a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Cb&out=iframe" title="해당페이지가 보입니다."> <img src="common/image/bullet.png" alt="페이지버튼"/> </a> <a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Cb&out=iframe" title="해당페이지가 보입니다."> <img src="common/image/bullet.png" alt="페이지버튼"/> </a> <a href="/" class="next" title="다음페이지가 보입니다."> <img src="common/image/next.png" alt="다음으로"/> </a> </p>
      </div>
      
      <!-- 많이본뉴스 -->
      <div  class="all">
        <div>
          <h2>많이 본 뉴스</h2>
          <span class="more"><a href="/" title="더보기"> <!--<img src="common/image/arrow.png" alt="더보기"/> --></a></span> </div>
          <div id="foin_01Cc">
            <?php 
            include './include/foin_01Cc.php';
             ?>
          </div>
      </div>
      
      <!-- 요일별 웹툰 -->
      <div  class="all">
        <div>
          <h2>요일별 웹툰</h2>
          <span class="more"><a href="/" title="더보기"><!--<img src="common/image/arrow.png" alt="더보기"/> --></a></span> </div>
          <div id="foin_02kX">
            <?php 
            include './include/foin_02kX.php';
             ?>
          </div>
      </div>
      
      <!-- my 생활정보 -->
      <div  class="all" >
        <div>
          <h2>MY 생활정보</h2>
          <div id="foin_0320">
          <?php 
            include './include/foin_0320.php';
          ?>
          </div>
        </div>
      </div>
      
      <!-- best 신문보기 -->
    <div  class="all" >
        <div>
          <h2>BEST 신문보기</h2>
          <div id="foin_01Ci" >
          <?php 
          include './include/foin_01Ci.php';
           ?>
          </div>
        </div>
      </div>
      
      <!-- 인기웹툰 -->
      <div  class="all" >
        <div>
          <h2>인기 웹툰</h2>
          <div id="foin_02kY">
            <?php 
            include './include/foin_02kY.php';
             ?>
          </div>
        </div>
      </div>
      
      <!-- 주간핫리포트 -->
       <div  class="all">
        <div>
          <h2>주간 핫 리포트</h2>
          <div id="foin_027J">
            <?php 
            include './include/foin_027J.php';
             ?>
          </div>
        </div>
      </div>
      
      <!-- best 웹툰 top6 -->
       <div  class="all">
        <div>
          <h2> BEST웹툰 TOP6 </h2>
          <div id="foin_02u0">
            <?php 
            include './include/foin_02u0.php';
             ?>
          </div>
        </div>
      </div>
      
      <!-- 하단 배너 -->
      <div  class="all" id="foin_02u8">         
      <?php 
         include './include/foin_02u8.php';
      ?>
     </div>
  </li>
  <li>
  <div class="wrap">
    <!-- 이미지 슬라이드 -->

      <iframe id="sliders" style="width:100%;" onload="autoResize(this)" src="./include/sliders.php" frameborder="0" scrolling="no" ></iframe>
      
      
    <!-- 실시간 핫딜! -->
      <div class="all">
          <div>
            <h2>실시간 핫딜!</h2>
          </div>
          <div class="prod_list" id="foin_058a">
          <?php 
            include './include/foin_058a.php';
          ?>
          </div>
      </div>
        
    <!-- 배너영역    
      <div class="banner" id="foin_058f">
        <?php 
          include './include/foin_058f.php';
        ?>
      </div> --> 


    <iframe id="sliders2" style="width:100%;" onload="autoResize(this)" src="./include/sliders2.php" frameborder="0" scrolling="no" ></iframe>
        
    <!-- 상품리스트 영역 -->
      <div class="all">
        <div>
          <h2>대박DEAL</h2>
        </div>
        <div class="prod_list" id="foin_058Y">
        <?php 
        include './include/foin_058Y.php';
        ?>
        </div>

      </div>
     <!-- 배너영역 -->    
       <!-- <div class="banner">
          <img src="image/banner_bottom.png" alt="banner">
        </div>--> 

   <iframe id="sliders2" style="width:100%;" onload="autoResize(this)" src="./include/sliders2.php" frameborder="0" scrolling="no" ></iframe>

    <!-- 핫딜 베스트 -->
      <div class="all">
        <div>
          <h2>베스트잇템</h2>
        </div>
        <div class="prod_list" id="foin_058b">
        <?php 
        include './include/foin_058b.php';
        ?>
        </div>
      </div>
  


   <!-- 배너영역 -->    
         <!--<div class="banner">
          <img src="image/banner_bottom.png" alt="banner">
        </div>

   </div> -->

 <iframe id="sliders2" style="width:100%;" onload="autoResize(this)" src="./include/sliders2.php" frameborder="0" scrolling="no" ></iframe>

   <!--  상품리스트 영역 -->
      <div class="all">
          <div>
            <h2>패션/뷰티</h2>
          </div>
          <div class="prod_list" id="foin_058d">
          <?php 
            include './include/foin_058d.php';
          ?>
          </div>
      </div>

    



        <!-- 순위영역 -->    
      <div class="all">
        <div><h2>인기기획전 TOP5</h2></div>
        <div class="top_05" id="foin_058k">
        <?php 
     include './include/foin_058k.php';
        ?>
        </div>
      </div>       

  </div>
   
   <!-- 배너영역 -->    
       <!--    <div class="banner">
          <img src="image/list05.png" alt="banner">
        </div>  --> 



  </li>
</ul>
           <div class="newPager"></div>
           <div class="newAutoControl"></div>
           <span class="btn prev"></span>
           <span class="btn next"></span>

</div>
<!-- footer -->
<div id="int-footer-copyright"> <span class="copyright"><img src="common/image/copyright.png" alt="카피라이터"/></span>
  <iframe src='http://script.theprimead.co.kr/winggoSetCookiePage.php?code=MzkzNw%3D%3D&_NMNCODE_=&_NMNURL_=http%3A%2F%2Fnewspopcon.com%2Fany.asp%3Ftype%3Dadpop' height='0' width='0'></iframe>
</div>


</body>
</html>
