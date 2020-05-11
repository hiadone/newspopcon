<?php
    //if(empty($_REQUEST["type"])) exit;

    $type = 'mydailyy';
    $type = $_REQUEST["type"] ? $_REQUEST["type"] : 'mydailyy';
    
    if($type === "mydailyy") $pageid='0D9d';
    if($type === "real") $pageid='0D9R';
    if($type === "honeytip") $pageid='0D9W';

    if($type === "picknews") $pageid='0D9a';
    if($type === "hotissue") $pageid='0D9b';
    if($type === "ohnews") $pageid='0D9U';

    if($type === "kkro5") $pageid='0DAP';
    if($type === "newinside") $pageid='0D9N';
    if($type === "couple") $pageid='0D9X';

    if($type === "koreans") $pageid='0D9Y';
    if($type === "blindpost") $pageid='0DAR';
    if($type === "todayissue") $pageid='0D9T';
    
    if($type === "issuebox") $pageid='0DAQ';


?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="/images/favi.png">
<link href="css_new/import.css" rel="stylesheet" type="text/css">
<script type='text/javascript' src="/js/jquery-1.11.1.min.js"></script>
<!-- 구글애널리틱스 끝 -->
<script>


      // (function() {
      //   function async_load(){
      //     var post_md=['ssg_shortcut','ssg_shortcut'];
      //     var val = Math.floor(Math.random() * 2);
      //     var s = document.createElement('script');
      //     s.type = 'text/javascript';
      //     s.async = true;
      //     s.id='hiadone_shortcut';
      //     s.src = "/common/type_shortcut_"+post_md[val]+".js?brd_key=shortcut&post_md=<?php echo $type?>&v=0.21"+val;
      //     var x = document.getElementsByTagName('script')[0];
      //     x.parentNode.insertBefore(s, x);
      //   }
      //   window.attachEvent ? window.attachEvent('onload', async_load) : window.addEventListener('load', async_load, false);
      // })();

    $(document).ready(function(){
      $.ajax({
        type: "GET", 
        async: true,
        data: "pageid=<?php echo $pageid?>&lang=utf-8&out=json", 
        url: "http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr", 
        cache: false, 
        dataType: "jsonp", 
        jsonp: "jquerycallback",
        success: function(data) 
        {
          location.href='https://ref.ad-brix.com/v1/referrallink?ak=927410194&ck=9386725';
        },
        error: function(xhr, status, error) {} 
      });
    });
</script>
</head>




      
      
