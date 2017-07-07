<?php


$sType = isset($_REQUEST["type"]) ? $_REQUEST["type"] : "moneyW";
$db_db="";
$popstate="";
$link_id="";
$post_id="";
$datescript=0;
$view_type="";
$referer = empty($_SERVER['HTTP_REFERER']) ? '' : trim($_SERVER['HTTP_REFERER']);
$sURL="http://www.popapp.co.kr/tomix/md.php?MD=".$sType;

switch ($sType) {

    case "ajunews": // 아주경제
           $popstate='enable';
            $sURL="http://www.popapp.co.kr/tomix/md.php?MD=ajunews";

            $sCode = "03Fg" ;//pv 체크
            $sIfrCode1 = "03CR" ;// 전체기사
            $sIfrCode2 = "03CU" ;// 포토뉴스
            $sIfrCode3 = "03CM" ;// 많이본 뉴스
            $sIfrCode4 = "03CO" ;// 베스트 신문보기
            $sIfrCode5 = "03CN" ;// 주간 핫 리포트
            $sIfrCode7 = "03CP" ;// 요일별 웹툰
            $sIfrCode8 = "03CQ" ;// 인기웹툰
            $sIfrCode9 = "03CT" ;// 베스트TV
            $sIfrCode10 = "03CV"    ;// 푸터배너
            $sIfrCode11 = "03CT"    ;// 베스트웹툰 랜덤
            $sIfrCode12 = "032y" ;//탑배너
            $sIfrCode13 = "03CW" ;//신규생활정보
            $sIfrCode14 = "03Ff" ;//베스트신문보기 배너형
            $sIfrCode15 = "065U" ;//인기신작

            break;

    case "heraldpop" :// 헤럴드팝
            $popstate = 'disable';
            $post_link[0]['pln_start']=0;
            $post_link[0]['pln_end']=4;
            $post_link[0]['pln_url']="http://www.popapp.co.kr/tomix/md.php?MD=heraldpop";

            $post_link[1]['pln_start']=21;
            $post_link[1]['pln_end']=24;
            $post_link[1]['pln_url']="http://www.popapp.co.kr/tomix/md.php?MD=heraldpop";
            foreach($post_link as $value){

                if($value['pln_start'] <= date('H') && $value['pln_end'] >= date('H') ){

                    $popstate='enable';
                    $sURL= $value['pln_url'];
                    break;
                }            
            }

            

            $sCode = "02pp";//pv 체크
            $sIfrCode1 = "02t6";// 전체기사
            $sIfrCode2 = "02t7";// 포토뉴스
            $sIfrCode3 = "02t1";// 많이본 뉴스
            $sIfrCode4 = "02t3";// 베스트 신문보기
            $sIfrCode5 = "02t2";// 주간 핫 리포트
            $sIfrCode7 = "02t4";// 요일별 웹툰
            $sIfrCode8 = "02t5";// 인기웹툰
            $sIfrCode9 = "02yU";// 베스트게임
            $sIfrCode10 = "02uC";// 푸터배너
            $sIfrCode11 = "02yU";   // 베스트웹툰 랜덤
            $sIfrCode12 = "030p"; //탑배너
            $sIfrCode13 = "032j"; //신규생활정보
            $sIfrCode14 = "03EZ"; //베스트신문보기 배너형
            $sIfrCode15 = "065W"; //인기신작

            
break;
        
    case "me": // 미소설
           $popstate = 'disable';
            
            $sCode = "061U" ;//pv 체크
            $sIfrCode1 = "04LZ" ;// 전체기사
            $sIfrCode2 = "05Em" ;// 포토뉴스
            $sIfrCode3 = "04JL" ;// 많이본 뉴스
            $sIfrCode4 = "04K1" ;// 베스트 신문보기
            $sIfrCode5 = "05E0" ;// 주간 핫 리포트
            $sIfrCode7 = "05EO" ;// 요일별 웹툰
            $sIfrCode8 = "05EW" ;// 인기웹툰
            $sIfrCode9 = "05EG" ;// 베스트게임
            $sIfrCode10 = "05F2"    ;// 푸터배너
            $sIfrCode11 = "05EG"    ;// 베스트웹툰 랜덤
            $sIfrCode12 = "032y" ;//탑배너
            $sIfrCode13 = "04Me" ;//신규생활정보
            $sIfrCode14 = "03EV" ;//베스트신문보기 배너형
            break;

    case "moodeung": // 무등일보
           $popstate = 'disable';
            
            $sCode = "032z" ;//pv 체크
            $sIfrCode1 = "032r" ;// 전체기사
            $sIfrCode2 = "032t" ;// 포토뉴스
            $sIfrCode3 = "032n" ;// 많이본 뉴스
            $sIfrCode4 = "032o" ;// 베스트 신문보기
            $sIfrCode5 = "032m" ;// 주간 핫 리포트
            $sIfrCode7 = "032p" ;// 요일별 웹툰
            $sIfrCode8 = "032q" ;// 인기웹툰
            $sIfrCode9 = "032x" ;// 베스트TV
            $sIfrCode10 = "032u" ;// 푸터배너
            $sIfrCode11 = "032x" ;// 베스트웹툰 랜덤
            $sIfrCode12 = "032y" ;//탑배너
            $sIfrCode13 = "032w" ;//신규생활정보
            $sIfrCode14 = "03Ff" ;//베스트신문보기 배너형
            $sIfrCode15 = "065V" ;//인기신작
            break;
    
    case "jemin": // 제민일보
           $popstate = 'disable';
            
            $sCode = "04YB" ;//pv 체크0.
            $sIfrCode1 = "02cQ" ;// 전체기사
            $sIfrCode2 = "02cR" ;// 포토뉴스
            $sIfrCode3 = "02cN" ;// 많이본 뉴스
            $sIfrCode4 = "02cP" ;// 베스트 신문보기
            $sIfrCode5 = "02cO" ;// 주간 핫 리포트
            $sIfrCode7 = "02mo" ;// 요일별 웹툰
            $sIfrCode8 = "02mp" ;// 인기웹툰
            $sIfrCode9 = "02yV" ;// 베스트TV
            $sIfrCode10 = "02uD" ;// 푸터배너
            $sIfrCode11 = "02yV" ;// 베스트웹툰 랜덤
            $sIfrCode12 = "032y" ;//탑배너
            $sIfrCode13 = "0324" ;//신규생활정보
            $sIfrCode14 = "03Ff" ;//베스트신문보기 배너형
            $sIfrCode15 = "065Y" ;//인기신작
            break;

    case "newstown": // 뉴스타운
           $popstate = 'disable';
            
            $sCode = "04YC" ;//pv 체크0.
            $sIfrCode1 = "033Z" ;// 전체기사
            $sIfrCode2 = "033b" ;// 포토뉴스
            $sIfrCode3 = "033U" ;// 많이본 뉴스
            $sIfrCode4 = "033W" ;// 베스트 신문보기
            $sIfrCode5 = "033V" ;// 주간 핫 리포트
            $sIfrCode7 = "033X" ;// 요일별 웹툰
            $sIfrCode8 = "033Y" ;// 인기웹툰
            $sIfrCode9 = "033a" ;// 베스트TV
            $sIfrCode10 = "033T" ;// 푸터배너
            $sIfrCode11 = "033a" ;// 베스트웹툰 랜덤
            $sIfrCode12 = "032y" ;//탑배너
            $sIfrCode13 = "033d" ;//신규생활정보
            $sIfrCode14 = "03Ff" ;//베스트신문보기 배너형
            $sIfrCode15 = "065X" ;//인기신작
            break;

    case "hubnews": // 허브뉴스
           $popstate = 'disable';
            
            $sCode = "05ix" ;//pv 체크0.
            $sIfrCode1 = "03H0" ;// 전체기사
            $sIfrCode2 = "03H3" ;// 포토뉴스
            $sIfrCode3 = "03Gv" ;// 많이본 뉴스
            $sIfrCode4 = "03Gx" ;// 베스트 신문보기
            $sIfrCode5 = "03Gw" ;// 주간 핫 리포트
            $sIfrCode7 = "03Gy" ;// 요일별 웹툰
            $sIfrCode8 = "03Gz" ;// 인기웹툰
            $sIfrCode9 = "03H1" ;// 베스트TV
            $sIfrCode10 = "03H4" ;// 푸터배너
            $sIfrCode11 = "03H1" ;// 베스트웹툰 랜덤
            $sIfrCode12 = "032y" ;//탑배너
            $sIfrCode13 = "03H5" ;//신규생활정보
            $sIfrCode14 = "03Ff" ;//베스트신문보기 배너형
            $sIfrCode15 = "065Z" ;//인기신작
            break;

        case "bridgeany": // 브릿지경제
           $popstate = 'disable';
            
            $sCode = "02pn" ;//pv 체크0.
            $sIfrCode1 = "02pJ" ;// 전체기사
            $sIfrCode2 = "02pb" ;// 포토뉴스
            $sIfrCode3 = "02pE" ;// 많이본 뉴스
            $sIfrCode4 = "02pG" ;// 베스트 신문보기
            $sIfrCode5 = "02pW" ;// 주간 핫 리포트
            $sIfrCode7 = "02pY" ;// 요일별 웹툰
            $sIfrCode8 = "02pZ" ;// 인기웹툰
            $sIfrCode9 = "02yX" ;// 베스트TV
            $sIfrCode10 = "02uF" ;// 푸터배너
            $sIfrCode11 = "02yX" ;// 베스트웹툰 랜덤
            $sIfrCode12 = "032y" ;//탑배너
            $sIfrCode13 = "0322" ;//신규생활정보
            $sIfrCode14 = "03Ff" ;//베스트신문보기 배너형
            $sIfrCode15 = "065T" ;//인기신작
            break;

        case "moreadd": // 모애드
           $popstate = 'disable';
            
            $sCode = "066z" ;//pv 체크0.
            $sIfrCode1 = "04LZ" ;// 전체기사
            $sIfrCode2 = "04Lo" ;// 포토뉴스
            $sIfrCode3 = "04JL" ;// 많이본 뉴스
            $sIfrCode4 = "04K1" ;// 베스트 신문보기
            $sIfrCode5 = "04JU" ;// 주간 핫 리포트
            $sIfrCode7 = "04Kn" ;// 요일별 웹툰
            $sIfrCode8 = "04L5" ;// 인기웹툰
            $sIfrCode9 = "04KF" ;// 베스트TV
            $sIfrCode10 = "04MF" ;// 푸터배너
            $sIfrCode11 = "04KF" ;// 베스트웹툰 랜덤
            $sIfrCode12 = "032y" ;//탑배너
            $sIfrCode13 = "04Me" ;//신규생활정보
            $sIfrCode15 = "066r" ;//인기신작
            break;

        case "kookje": // 국제신문
           $popstate = 'disable';
            
            $sCode = "05Ps" ;//pv 체크
            $sIfrCode1 = "01Ca" ;// 전체기사
            $sIfrCode2 = "01Cb" ;// 포토뉴스
            $sIfrCode3 = "01Cc" ;// 많이본 뉴스
            $sIfrCode4 = "01Ci" ;// 베스트 신문보기
            $sIfrCode5 = "027J" ;// 주간 핫 리포트
            $sIfrCode7 = "02kX" ;// 요일별 웹툰
            $sIfrCode8 = "02kY" ;// 인기웹툰
            $sIfrCode9 = "02yT" ;// 베스트게임
            $sIfrCode10 = "02u8" ;// 푸터배너
            $sIfrCode11 = "02yP" ;// 베스트웹툰 랜덤
            $sIfrCode12 = "032y" ;//탑배너
            $sIfrCode13 = "0320" ;//신규생활정보
            $sIfrCode14 = "03EV" ;//베스트신문보기 배너형
            $sIfrCode15 = "065Q" ;//인기신작
            break;

 	case "moneyW" : // 머니워크
 			
 			$sCode = "02ca";
 			$sIfrCode1 = "02cI";
 			$sIfrCode2 = "02cJ";
 			$sIfrCode3 = "02cF";
 			$sIfrCode4 = "02cH";
 			$sIfrCode5 = "02cG";
 			$sIfrCode7 = "02ms";
 			$sIfrCode8 = "02mt";
 			$sIfrCode9 = "02u1";
 			$sIfrCode10 = "02u9";
 			$sIfrCode11 = "02yQ"; // 베스트웹툰 랜덤
 			$sIfrCode12 = "030l";  //탑배너
 			$sIfrCode13 = "0321";  //신규배너
 			$sIfrCode14 = "03EV";  //베스트신문보기 배너형
 			break;

 		


 		case "Ofun" :// 오펀
 			
 			$sCode = "03Go";
 			$sIfrCode1 = "02cQ";
 			$sIfrCode2 = "02cR";
 			$sIfrCode3 = "02cN";
 			$sIfrCode4 = "02cP";
 			$sIfrCode5 = "02cO";
 			//sIfrCode6 = "02cS";
 			$sIfrCode7 = "02mo";
 			$sIfrCode8 = "02mp";
 			$sIfrCode9 = "02u5";
 			$sIfrCode10 = "02uD";
 			$sIfrCode11 = "02yV";	// 베스트웹툰 랜덤
 			$sIfrCode12 = "030q";  //탑배너
 			$sIfrCode13 = "0324";  //신규배너
 			$sIfrCode14 = "03Eb";  //베스트신문보기 배너형
break;

 		case "asia2day" ://  아시아투데이
 		
 			$sCode = "03EO";
 			$sIfrCode1 = "02cX";
 			$sIfrCode2 = "02cY";
 			$sIfrCode3 = "02cT";
 			$sIfrCode4 = "02cW";
 			$sIfrCode5 = "02cV";
 			//sIfrCode6 = "02cZ";
 			$sIfrCode7 = "02mq";
 			$sIfrCode8 = "02mr";
 			$sIfrCode9 = "02u6";
 			$sIfrCode10 = "02uE";
 			$sIfrCode11 = "02yW";	// 베스트웹툰 랜덤
 			$sIfrCode12 = "030r";  //탑배너
 			$sIfrCode13 = "0325";  //신규배너
 			$sIfrCode14 = "03EV";  //베스트신문보기 배너형
break;

 		case "asiae" :// 아시아경제
 		
 			$sCode = "02po";
 			$sIfrCode1 = "02pS";
 			$sIfrCode2 = "02pT";
 			$sIfrCode3 = "02pM";
 			$sIfrCode4 = "02pO";
 			$sIfrCode5 = "02pN";
 			//sIfrCode6 = "02pU";
 			$sIfrCode7 = "02pP";
 			$sIfrCode8 = "02pQ";
 			$sIfrCode9 = "02u3";
 			$sIfrCode10 = "02uB";
 			$sIfrCode11 = "02yS";	// 베스트웹툰 랜덤
 			$sIfrCode12 = "030n";  //탑배너
 			$sIfrCode13 = "0323";  //신규배너
 			$sIfrCode14 = "03EX";  //베스트신문보기 배너형
break;

 		case "tvdaily" :// 티브이데일리
 		
 			$sCode = "03CY";
 			$sIfrCode1 = "02pa";
 			$sIfrCode2 = "02pb";
 			$sIfrCode3 = "02pV";
 			$sIfrCode4 = "02pX";
 			$sIfrCode5 = "02pW";
 			$sIfrCode6 = "02pc";
 			$sIfrCode7 = "02pY";
 			$sIfrCode8 = "02pZ";
 			$sIfrCode9 = "02u7";
 			$sIfrCode10 = "02uF";
 			$sIfrCode11 = "02yX";	// 베스트웹툰 랜덤
 			$sIfrCode12 = "030s";  //탑배너
 			$sIfrCode13 = "0326";  //신규생활정보
 			$sIfrCode14 = "03Ea";  //베스트신문보기 배너형
break;

 		

 		case "bridgenews": // 브릿지뉴스
 			
 			$sCode = "02pn";
 			$sIfrCode1 = "02pJ";
 			$sIfrCode2 = "02pb";
 			$sIfrCode3 = "02pE";
 			$sIfrCode4 = "02pG";
 			$sIfrCode5 = "02pW";
 			//sIfrCode6 = "02pL";
 			$sIfrCode7 = "02pY";
 			$sIfrCode8 = "02pZ";
 			$sIfrCode9 = "02u2";
 			$sIfrCode10 = "02uF";
 			$sIfrCode11 = " 02yX";	// 베스트웹툰 랜덤
 			$sIfrCode12 = "030m";  //탑배너
 			$sIfrCode13 = "0322";  //신규배너
 			$sIfrCode14 = "03EW";  //베스트신문보기 배너형
break;


 		case "issuebox": // 이슈박스
 			
 			$sCode = "02w8";
 			$sIfrCode1 = "02vm";	// 전체기사
 			$sIfrCode2 = "02vo";	// 포토뉴스
 			$sIfrCode3 = "02vh";   // 많이본 뉴스
 			$sIfrCode4 = "02vj";	// 베스트 신문보기
 			$sIfrCode5 = "02vi";	// 주간 핫 리포트
 			//sIfrCode6 = "02vq";	// 생활정보
 			$sIfrCode7 = "02vk";	// 요일별 웹툰
 			$sIfrCode8 = "02vl";	// 인기웹툰
 			$sIfrCode9 = "02vn";	// 베스트게임
 			$sIfrCode10 = "02vp";	// 푸터배너
 			$sIfrCode11 = "02yT";	// 베스트웹툰 랜덤
 			$sIfrCode12 = "030o";  //탑배너
 			$sIfrCode13 = "032k";//신규생활정보
 			$sIfrCode14 = "03EY";  //베스트신문보기 배너형
break;

 	

 		case "hiadone": // 자사
 			$popstate = 'enable';
 			$sURL="http://www.popapp.co.kr/anytoon/md.php?MD=".$sType;
 			$sCode = "05uO" ;//pv 체크
 			$sIfrCode1 = "01Ca"	;// 전체기사
 			$sIfrCode2 = "02vo"	;// 포토뉴스
 			$sIfrCode3 = "01Cc"   ;// 많이본 뉴스
 			$sIfrCode4 = "032o"	;// 베스트 신문보기
 			$sIfrCode5 = "02vi"	;// 주간 핫 리포트
 			$sIfrCode7 = "02vk"	;// 요일별 웹툰
 			$sIfrCode8 = "02vl"	;// 인기웹툰
 			$sIfrCode9 = "02yT"	;// 베스트게임
 			$sIfrCode10 = "02vp"	;// 푸터배너
 			$sIfrCode11 = "02yT"	;// 베스트웹툰 랜덤
 			$sIfrCode12 = "032y"  ;//탑배너
 			$sIfrCode13 = "0320"  ;//신규생활정보
 			$sIfrCode14 = "03EV"  ;//베스트신문보기 배너형
break;


 		case "mediapen" :// 미디어펜
 		
 			$sCode = "03Fe" ;//pv 체크
 			$sIfrCode1 = "033Z"	;// 전체기사
 			$sIfrCode2 = "033b"	;// 포토뉴스
 			$sIfrCode3 = "033U"   ;// 많이본 뉴스
 			$sIfrCode4 = "033W"	;// 베스트 신문보기
 			$sIfrCode5 = "033V"	;// 주간 핫 리포트
 			$sIfrCode7 = "033X"	;// 요일별 웹툰
 			$sIfrCode8 = "033Y"	;// 인기웹툰
 			$sIfrCode9 = "033S"	;// 베스트게임
 			$sIfrCode10 = "033T"	;// 푸터배너
 			$sIfrCode11 = "033a"	;// 베스트웹툰 랜덤
 			$sIfrCode12 = "032y"  ;//탑배너
 			$sIfrCode13 = "033d"  ;//신규생활정보
 			$sIfrCode14 = "03EV"  ;//베스트신문보기 배너형
 			break;

 	   

 	    case "sisunnews": // 시선뉴스
 		
 			$sCode = "03PU" ;//pv 체크
 			$sIfrCode1 = "03H0"	;// 전체기사
 			$sIfrCode2 = "03H3"	;// 포토뉴스
 			$sIfrCode3 = "03Gv"   ;// 많이본 뉴스
 			$sIfrCode4 = "03Gx"	;// 베스트 신문보기
 			$sIfrCode5 = "03Gw"	;// 주간 핫 리포트
 			$sIfrCode7 = "03Gy"	;// 요일별 웹툰
 			$sIfrCode8 = "03Gz"	;// 인기웹툰
 			$sIfrCode9 = "03H2"	;// 베스트TV
 			$sIfrCode10 = "03H4"	;// 푸터배너
 			$sIfrCode11 = "03H1"	;// 베스트웹툰 랜덤
 		    $sIfrCode12 = "032y"  ;//탑배너
 			$sIfrCode13 = "03H5"  ;//신규생활정보
 			$sIfrCode14 = "03Ff"  ;//베스트신문보기 배너형
 			break;
		

 		case "moneyWe" :// 머니위
 		
 			$sCode = "02ca" ;//pv 체크
 			$sIfrCode1 = "02cI"	;// 전체기사
 			$sIfrCode2 = "04f2"	;// 포토뉴스
 			$sIfrCode3 = "02cF"   ;// 많이본 뉴스
 			$sIfrCode4 = "02cH"	;// 베스트 신문보기
 			$sIfrCode5 = "04eJ"	;// 주간 핫 리포트
 			$sIfrCode7 = "04ek"	;// 요일별 웹툰
 			$sIfrCode8 = "04en"	;// 인기웹툰
 			$sIfrCode9 = "04eY"	;// 베스트TV
 			$sIfrCode10 = "04f8"	;// 푸터배너
 			$sIfrCode11 = "04eY"	;// 베스트웹툰 랜덤
 		    $sIfrCode12 = "032y"  ;//탑배너
 			$sIfrCode13 = "0321"  ;//신규생활정보
 			$sIfrCode14 = "03Ff"  ;//베스트신문보기 배너형
 			break;
 		
 		
 	


    

 	default:
 		$popstate = 'enable';
 			$sURL="http://www.popapp.co.kr/anytoon/md.php?MD=".$sType;
 			$sCode = "05uO" ;//pv 체크
 			$sIfrCode1 = "01Ca"	;// 전체기사
 			$sIfrCode2 = "02vo"	;// 포토뉴스
 			$sIfrCode3 = "01Cc"   ;// 많이본 뉴스
 			$sIfrCode4 = "032o"	;// 베스트 신문보기
 			$sIfrCode5 = "02vi"	;// 주간 핫 리포트
 			$sIfrCode7 = "02vk"	;// 요일별 웹툰
 			$sIfrCode8 = "02vl"	;// 인기웹툰
 			$sIfrCode9 = "02yT"	;// 베스트게임
 			$sIfrCode10 = "02vp"	;// 푸터배너
 			$sIfrCode11 = "02yT"	;// 베스트웹툰 랜덤
 			$sIfrCode12 = "032y"  ;//탑배너
 			$sIfrCode13 = "0320"  ;//신규생활정보
 			$sIfrCode14 = "03EV"  ;//베스트신문보기 배너형
 		break;
 } 

include_once "common/type_pop.php";

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
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=yes">
        <link rel="shortcut icon" href="/images/favi.png">
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
        <link href="css_new/import.css" rel="stylesheet" type="text/css">
        <script type='text/javascript' src="/js/jquery-1.11.1.min.js"></script>
        <!-- <script type='text/javascript' src='/js/jquery.cookie.js'></script>
        <script type='text/javascript' src='/js/shortcut.js'></script> -->
        <!-- 구글애널리틱스 시작 -->
        <script type='text/javascript'>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-88829342-3', 'auto');
          ga('send', 'pageview');

        </script>
        <!-- 구글애널리틱스 끝 -->
		<script>
			$(document).ready(function(){
			// //로딩후 첫번째 메인 메뉴의 배경색상 변경
			// 	$('header nav ul li:first-child').css('background-color' , '#fd8c30');
			//클릭한 메뉴의 배경 색상 변경
				$('header nav ul li').click(function(){
                    if($(this).index()==1){
                        $("#webtoon").load('./webtoon.asp?type=<?php echo $_REQUEST["type"]?>&webtoon_type=pop');
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


			//서브메뉴 클릭시 scroll bar 이동 
				
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


<!-- <body  onload="callScheme('GRP', 6, 'DEFAULT');"> -->
<body>



<!-- 추가 -->
	<!-- header -->
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
	<!-- 전체기사 영역 01 -->
		<section class="info01" id="scroll01">
			<h2>전체기사</h2>
                <div id="foin_pageid01">
                    <script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode1?>&lang=utf-8&out=script'></script>
                </div>
					
		</section>

	<!-- 포토뉴스영역 02-->
		<section class="info02">
				<h2>포토뉴스</h2>
				<iframe src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode2?>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>	 
		</section>

	<!-- 생활정보 영역 03 -->
		<section class="info03" id="scroll02">
			<h2>생활정보</h2>
				<div id="foin_pageid03">
                    <script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode3?>&lang=utf-8&out=script'></script>
                       
                </div>
		</section>

	<!-- 요일별 웹툰 04 -->
		<section class="info04">
			<h2>요일별 웹툰</h2>
				<div>
				<iframe width="100%" height="348px"  src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode7?>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
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
				<iframe width="100%" height="100%" style="position:absolute; top:0; left: 0; padding:0%;" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode5?>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
				<div>
		</section>

	<!-- Best 웹툰 Top6 07 -->
		<section class="info07" id="scroll04">
			<h2>Best 웹툰 TOP6</h2>
			<iframe width="100%" height="330" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode11?>&out=iframe" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>	
				
		</section>

	<!-- 하단 배너 08 -->
		<section class="info08">
			<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode10?>&out=script"></script>
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
		<iframe width="0" height="0" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sCode?>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" >
		</iframe>
	</body>
</html>