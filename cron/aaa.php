<?php 

$pelicanc=['01Ca'];



foreach($pelicanc as $value){
    $content="";
    $html="";
    $fp2="";
    $content = file_get_contents('http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr&pageid='.$value.'&lang=utf-8&out=json');
   
    if ($content !== false) {
     // echo 'http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr&pageid='.$value.'&lang=utf-8&out=json<br>';

       
       $html = explode("tag",$content);
       $html[1]=ltrim($html[1],"\":");
       $html[1]=rtrim($html[1],"})\"");

       echo $html[1];
    //   $html=json_decode($content,false);
       
       //echo ($html->tag);

       // $filename='../include/'.$value.'.php';
       // $fp2= fopen($filename,"w");
       // fwrite($fp2,$html[1]);
       // fclose($fp2);
    } else {
      echo ' error http://ad.ad4989.co.kr/cgi-bin/pelicanc.dll?impr&pageid='.$value.'&lang=utf-8&out=json<br>';
       
    }
}

?>