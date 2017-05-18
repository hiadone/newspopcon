#!/usr/bin/php -q
<?php /*
echo "createfile start";
?>
<script src="../js/jquery-1.11.1.min.js"></script>
<script>
var pelicanc="";
pelicanc=['01Ca','01Cb','042a','01Cc','02kX','0320','01Ci','02kY','027J','02u0','02u8'];
    


$(document).ready(function() {
    
    pelicanc.forEach(ShowResults);
    
});

function ShowResults(value, index) {

  //  if (index < 1) { return; }
    $.ajax({
        type: "GET", 
        async: true,
        data: "pageid="+value+"&lang=utf-8&out=json", 
        url: "http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr", 
        cache: false, 
        dataType: "jsonp", 
        jsonp: "jquerycallback", 
        success: function(data) 
        {
         
          createFile(data.tag,value+'.php');
         if(index <1) $("#"+value).html(data.tag); 

        },
        error: function(xhr, status, error) { ; } 
    });
}

function createFile(data,filename)
{

    $.ajax({
        type: "POST", 
        async: true,
        data : {data :data,filename :filename},
        url: "../createfile.php", 
        success: function(data) 
        {
        },
        error: function(xhr, status, error) { ; } 
    });
}
</script>
<?php 
echo "createfile end";
*/



//$pelicanc=['01Ca','01Cb','042a','01Cc','02kX','0320','01Ci','02kY','027J','02u0','02u8'];
//$pelicanc=['01Ca','01Cb','01Cc','02kX','0320','01Ci','02kY','027J','02u0','02u8','058a','058f','058Y','058b','058d','058k','058a','058f','058W'];

//$pelicanc=['01Cb','042a'];


$ctx = stream_context_create(array(   
   'http' => array(   
       'timeout' => 1 
       )   
   )   
);   


foreach($pelicanc as $value){
    $content="";
    $html="";
    $fp2="";
    $content = file_get_contents('http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr&pageid='.$value.'&lang=utf-8&out=json',0,$ctx);

    if ($content !== false) {
      
        $filename=dirname(__FILE__).'/../include/foin_'.$value.'.php';
        $fp2= fopen($filename,"w");

        
        // $html = explode("\"tag\":",$content);        
        // $html[1]=rtrim($html[1],"})\"");
        // $html[1]=str_replace("\\r\\n","",$html[1]);

        $content= ltrim($content,"(");
        $content= rtrim($content,")");




      //$content =  iconv(mb_detect_encoding($content, mb_detect_order(), true), "UTF-8", $content);

         $html=json_decode($content,false);
         

switch (json_last_error()) {
    case JSON_ERROR_NONE:
   // echo $html->tag;
        
        fwrite($fp2,$html->tag);

        $html->tag = ltrim($html->tag,"\"");
        $html->tag = rtrim($html->tag,"\"");
        fclose($fp2);
    break;
    case JSON_ERROR_DEPTH:
        echo ' - Maximum stack depth exceeded';
    break;
    case JSON_ERROR_STATE_MISMATCH:
        echo ' - Underflow or the modes mismatch';
    break;
    case JSON_ERROR_CTRL_CHAR:
        echo $value.' - Unexpected control character found';

        $content=stripcslashes($content);
        $tag=explode("\"tag\":",$content);
        
        $html= rtrim($tag[1],"\"}");

        $html = ltrim($html,"\"");
        $html = rtrim($html,"\"");

        fwrite($fp2,$html);
        fclose($fp2);

    break;
    case JSON_ERROR_SYNTAX:
        echo $value.' - Syntax error, malformed JSON';
        $content=stripcslashes($content);
        $tag=explode("\"tag\":",$content);
        $html= rtrim($tag[1],"\"}");

        $html = ltrim($html,"\"");
        $html = rtrim($html,"\"");
        fwrite($fp2,$html);
        fclose($fp2);
    break;
    case JSON_ERROR_UTF8:
        echo ' - Malformed UTF-8 characters, possibly incorrectly encoded';
    break;
    default:
        echo ' - Unknown error';
    break;
}


        
    } else {
      echo ' error http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr&pageid='.$value.'&lang=utf-8&out=json<br>';
       
    }
}




?>