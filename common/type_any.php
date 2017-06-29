<?php
if($sType=='adpop'){
$sCode = "04Gd" ;//pv 체크
$sIfrCode1 = "04LZ";	// 전체기사
$sIfrCode2 = "04Lx";	// 포토뉴스
$sIfrCode3 = "04JL";   // 많이본 뉴스
$sIfrCode4 = "04K1";	// 베스트 신문보기
$sIfrCode5 = "04Ja";	// 주간 핫 리포트
$sIfrCode7 = "04Ku";	// 요일별 웹툰
$sIfrCode8 = "04LG";	// 인기웹툰
$sIfrCode9 = "04KL";	// 베스트TV
$sIfrCode10 = "04ML";	// 푸터배너
$sIfrCode11 = "04KL";	// 베스트웹툰 랜덤
$sIfrCode12 = "032y";  //탑배너
$sIfrCode13 = "04Me";  //신규생활정보
$sIfrCode14 = "03Ff";  //베스트신문보기 배너형
$sIfrCode15 = "069Q";  // 인기신작
$popstate='disable';
$press_url='http://newspopcon.com/any.asp?type=adpop';
$view_type='random';
$post_link[0]['pln_start']=0;
$post_link[0]['pln_end']=0;
$post_link[0]['pln_url']='http://www.popapp.co.kr/anytoon/md.php?MD=adpop';
}
if($sType=='moneyWe'){
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
$sIfrCode15 = "065S";  //인기신작
$popstate='disable';
$press_url='http://newspopcon.com/any.asp?type=moneyWe';
$view_type='random';
$post_link[0]['pln_start']=0;
$post_link[0]['pln_end']=0;
$post_link[0]['pln_url']='http://www.popapp.co.kr/anytoon/md.php?MD=moneyWe';
}
?>
