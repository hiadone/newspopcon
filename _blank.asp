<?php
    if(empty($_REQUEST["type"])) exit;
        
    $type = '';
    $type = $_REQUEST["type"];
    if($type === "honey") $pageid='0Czg';
    if($type === "10post") $pageid='0Czi';
    if($type === "realpost") $pageid='0Czj';
    if($type === "couplepost") $pageid='0D0H';

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


      (function() {
        function async_load(){
          var post_md=['ssg_shortcut','ssg_shortcut'];
          var val = Math.floor(Math.random() * 2);
          var s = document.createElement('script');
          s.type = 'text/javascript';
          s.async = true;
          s.id='hiadone_shortcut';
          s.src = "/common/type_shortcut_"+post_md[val]+".js?brd_key=shortcut&post_md=<?php echo $type?>&v=0.21"+val;
          var x = document.getElementsByTagName('script')[0];
          x.parentNode.insertBefore(s, x);
        }
        window.attachEvent ? window.attachEvent('onload', async_load) : window.addEventListener('load', async_load, false);
      })();

     

   


</script>


<iframe width="0" height="0" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $pageid ?>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
</head>



