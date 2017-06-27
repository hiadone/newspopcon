<?php

include_once "common/dc_dbpdomysql.php";
include_once "common/db_mysql.php";

$sType = isset($_REQUEST["type"]) ? $_REQUEST["type"] : "hiadone";
$db_db="";
$popstate="";
$link_id="";
$post_id="";
$datescript=0;
$outerscript="";
$referer = empty($_SERVER['HTTP_REFERER']) ? '' : trim($_SERVER['HTTP_REFERER']);
$sURL="http://www.popapp.co.kr/anytoon/md.php?MD=".$sType;

switch ($sType) {

    case "hiadone": // 자사
        $popstate = 1;
        $sURL=" http://www.popapp.co.kr/anytoon/md.php?MD=hiadone";

        $sCode = "05uO"; //pv 체크
        $sIfrCode1 = "01Ca" ; // 전체기사
        $sIfrCode2 = "02vo" ; // 포토뉴스
        $sIfrCode3 = "01Cc" ; // 많이본 뉴스
        $sIfrCode4 = "01Ci" ; // 베스트 신문보기
        $sIfrCode5 = "02vi" ; // 주간 핫 리포트
        $sIfrCode7 = "02vk" ; // 요일별 웹툰
        $sIfrCode8 = "02vl" ; // 인기웹툰
        $sIfrCode9 = "02yT" ; // 베스트게임
        $sIfrCode10 = "02vp"; // 푸터배너
        $sIfrCode11 = "02yT"; // 베스트웹툰 랜덤
        $sIfrCode12 = "032y" ; //탑배너
        $sIfrCode13 = "0320" ; //신규생활정보
        $sIfrCode14 = "03EV" ; //베스트신문보기 배너형
        $sIfrCode15 = "065R" ;//인기신작
        break;

    case "community": // 지니어스 커뮤니티
        
        $popstate = 1;
        $sURL="http://www.popapp.co.kr/tomix/md.php?MD=community";
        $outerscript='<script src="http://ad.tjtune.com/cgi-bin/PelicanC.dll?impr?pageid=06T2&out=script"></script>';
        $sCode = "0676"; //pv 체크
        $sIfrCode1 = "04LL" ; // 전체기사
        $sIfrCode2 = "04Lf" ; // 포토뉴스
        $sIfrCode3 = "04Ji" ; // 많이본 뉴스
        $sIfrCode4 = "04Jn" ; // 베스트 신문보기
        $sIfrCode5 = "04Jf" ; // 주간 핫 리포트
        $sIfrCode7 = "04Kg" ; // 요일별 웹툰
        $sIfrCode8 = "04Ky" ; // 인기웹툰
        $sIfrCode9 = "04K7" ; // 베스트게임
        $sIfrCode10 = "04M8"; // 푸터배너
        $sIfrCode11 = "04K7"; // 베스트웹툰 랜덤
        $sIfrCode13 = "04MR" ; //신규생활정보
        $sIfrCode15 = "065c" ; //인기신작
        break;

    case "enewstoday": // 이뉴스투데이
        
        $popstate = 1;
        $sURL="http://www.popapp.co.kr/tomix/md.php?MD=enewstoday";

        $sCode = "06PO"; //pv 체크
        $sIfrCode1 = "04fw" ; // 전체기사
        $sIfrCode2 = "04g2" ; // 포토뉴스
        $sIfrCode3 = "04fG" ; // 많이본 뉴스
        $sIfrCode4 = "04fS" ; // 베스트 신문보기
        $sIfrCode5 = "04fM" ; // 주간 핫 리포트
        $sIfrCode7 = "04fk" ; // 요일별 웹툰
        $sIfrCode8 = "04fq" ; // 인기웹툰
        $sIfrCode9 = "04fY" ; // 베스트게임
        $sIfrCode10 = "04gJ"; // 푸터배너
        $sIfrCode11 = "04fY"; // 베스트웹툰 랜덤
        $sIfrCode13 = "04gD" ; //신규생활정보
        break;

    case "adpop": // 애드팝
        
        $popstate = 0;
        $sURL="http://www.popapp.co.kr/tomix/md.php?MD=adpop";

        $sCode = "04Gd"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL" ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트게임
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode15 = "066r" ; //인기신작
        break;

    case "genius": // 지니어스 언론사
        
        $popstate = 1;
        $sURL="http://www.popapp.co.kr/tomix/md.php?MD=genius";
        $outerscript='<script src="http://ad.tjtune.com/cgi-bin/PelicanC.dll?impr?pageid=06T1&out=script"></script>';
        $sCode = "0675"; //pv 체크
        $sIfrCode1 = "04Jj" ; // 전체기사
        $sIfrCode2 = "04Jo" ; // 포토뉴스
        $sIfrCode3 = "04It" ; // 많이본 뉴스
        $sIfrCode4 = "04J1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ix" ; // 주간 핫 리포트
        $sIfrCode7 = "04JQ" ; // 요일별 웹툰
        $sIfrCode8 = "04JY" ; // 인기웹툰
        $sIfrCode9 = "04J5" ; // 베스트게임
        $sIfrCode10 = "04K3"; // 푸터배너
        $sIfrCode11 = "04J5"; // 베스트웹툰 랜덤
        $sIfrCode13 = "04K9" ; //신규생활정보
        $sIfrCode15 = "065a" ; //인기신작
        break;

    case "non": // 애니툰 논타겟
        
        $popstate = 0;
        $sURL="http://www.popapp.co.kr/anytoon/md.php?MD=non";

        $sCode = "05r7"; //pv 체크
        $sIfrCode1 = "05Ei" ; // 전체기사
        $sIfrCode2 = "05Eq" ; // 포토뉴스
        $sIfrCode3 = "05Dy" ; // 많이본 뉴스
        $sIfrCode4 = "05EC" ; // 베스트 신문보기
        $sIfrCode5 = "05E4" ; // 주간 핫 리포트
        $sIfrCode7 = "05ES" ; // 요일별 웹툰
        $sIfrCode8 = "05Ea" ; // 인기웹툰
        $sIfrCode9 = "05EJ" ; // 베스트게임
        $sIfrCode10 = "05F6"; // 푸터배너
        $sIfrCode11 = "05EJ"; // 베스트웹툰 랜덤
        $sIfrCode13 = "05Ey" ; //신규생활정보
        $sIfrCode15 = "069Q" ; //인기신작
        break;

    case "re": // 애니툰 논타겟
        
        $popstate = 0;
        $sURL="http://www.popapp.co.kr/anytoon/md.php?MD=re";

        $sCode = "05sZ"; //pv 체크
        $sIfrCode1 = "05Ei" ; // 전체기사
        $sIfrCode2 = "05Eq" ; // 포토뉴스
        $sIfrCode3 = "05Dy" ; // 많이본 뉴스
        $sIfrCode4 = "05EC" ; // 베스트 신문보기
        $sIfrCode5 = "05E4" ; // 주간 핫 리포트
        $sIfrCode7 = "05ES" ; // 요일별 웹툰
        $sIfrCode8 = "05Ea" ; // 인기웹툰
        $sIfrCode9 = "05EJ" ; // 베스트게임
        $sIfrCode10 = "05F6"; // 푸터배너
        $sIfrCode11 = "05EJ"; // 베스트웹툰 랜덤
        $sIfrCode13 = "05Ey" ; //신규생활정보
        $sIfrCode15 = "069Q" ; //인기신작
        break;

     case "sstv": // $sstv
        
        $sCode = "04Vk"; //pv 체크
        $sIfrCode1 = "04LL" ; // 전체기사
        $sIfrCode2 = "04Lf" ; // 포토뉴스
        $sIfrCode3 = "04Ji"  ; // 많이본 뉴스
        $sIfrCode4 = "04Jn" ; // 베스트 신문보기
        $sIfrCode5 = "04Jf" ; // 주간 핫 리포트
        $sIfrCode7 = "04Kg" ; // 요일별 웹툰
        $sIfrCode8 = "04Ky" ; // 인기웹툰
        $sIfrCode9 = "04K7" ; // 베스트TV
        $sIfrCode10 = "04M8"; // 푸터배너
        $sIfrCode11 = "04K7"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04MR" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
     case "munhwanews": // 문화뉴스
        
        $sCode = "04W3"; //pv 체크
        $sIfrCode1 = "04LX" ; // 전체기사
        $sIfrCode2 = "04Lv" ; // 포토뉴스
        $sIfrCode3 = "04JK"  ; // 많이본 뉴스
        $sIfrCode4 = "04K0" ; // 베스트 신문보기
        $sIfrCode5 = "04JZ" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ks" ; // 요일별 웹툰
        $sIfrCode8 = "04LE" ; // 인기웹툰
        $sIfrCode9 = "04KK" ; // 베스트TV
        $sIfrCode10 = "04MK"; // 푸터배너
        $sIfrCode11 = "04KK"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Mc" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "beatsports": // 비트스포츠
        
        $sCode = "04W0"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "ggilbohot": // 금강일보(핫)
        
        $sCode = "04Vu"; //pv 체크
        $sIfrCode1 = "04LQ" ; // 전체기사
        $sIfrCode2 = "04Lo" ; // 포토뉴스
        $sIfrCode3 = "04JG"  ; // 많이본 뉴스
        $sIfrCode4 = "04Jw" ; // 베스트 신문보기
        $sIfrCode5 = "04JU" ; // 주간 핫 리포트
        $sIfrCode7 = "04Kn" ; // 요일별 웹툰
        $sIfrCode8 = "04L5" ; // 인기웹툰
        $sIfrCode9 = "04KF" ; // 베스트TV
        $sIfrCode10 = "04MF"; // 푸터배너
        $sIfrCode11 = "04KF"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04MW" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "ggilbo": // 금강일보
        
        $sCode = "04Vv"; //pv 체크
        $sIfrCode1 = "04LP" ; // 전체기사
        $sIfrCode2 = "04Ln" ; // 포토뉴스
        $sIfrCode3 = "04JF"  ; // 많이본 뉴스
        $sIfrCode4 = "04Jv" ; // 베스트 신문보기
        $sIfrCode5 = "04JT" ; // 주간 핫 리포트
        $sIfrCode7 = "04Km" ; // 요일별 웹툰
        $sIfrCode8 = "04L3" ; // 인기웹툰
        $sIfrCode9 = "04KE" ; // 베스트TV
        $sIfrCode10 = "04MD"; // 푸터배너
        $sIfrCode11 = "04KE"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04MV" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "ksilboenter": // 경상일보(연예)
        
        $sCode = "04Vr"; //pv 체크
        $sIfrCode1 = "04LO" ; // 전체기사
        $sIfrCode2 = "04Ll" ; // 포토뉴스
        $sIfrCode3 = "04JE"  ; // 많이본 뉴스
        $sIfrCode4 = "04Jt" ; // 베스트 신문보기
        $sIfrCode5 = "04JS" ; // 주간 핫 리포트
        $sIfrCode7 = "04Kl" ; // 요일별 웹툰
        $sIfrCode8 = "04L1" ; // 인기웹툰
        $sIfrCode9 = "04KC" ; // 베스트TV
        $sIfrCode10 = "04MB"; // 푸터배너
        $sIfrCode11 = "04KC"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04MU" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "starjnhot": // 스타저널(핫)
        
        $sCode = "04Yc"; //pv 체크
        $sIfrCode1 = "04LO" ; // 전체기사
        $sIfrCode2 = "04Ll" ; // 포토뉴스
        $sIfrCode3 = "04JE"  ; // 많이본 뉴스
        $sIfrCode4 = "04Jt" ; // 베스트 신문보기
        $sIfrCode5 = "04JS" ; // 주간 핫 리포트
        $sIfrCode7 = "04Kl" ; // 요일별 웹툰
        $sIfrCode8 = "04L1" ; // 인기웹툰
        $sIfrCode9 = "04KC" ; // 베스트TV
        $sIfrCode10 = "04MB"; // 푸터배너
        $sIfrCode11 = "04KC"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04MU" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "ksilbo": // 경상일보
        
        $sCode = "04Vs"; //pv 체크
        $sIfrCode1 = "04LN" ; // 전체기사
        $sIfrCode2 = "04Lj" ; // 포토뉴스
        $sIfrCode3 = "04JC"  ; // 많이본 뉴스
        $sIfrCode4 = "04Jr" ; // 베스트 신문보기
        $sIfrCode5 = "04JR" ; // 주간 핫 리포트
        $sIfrCode7 = "04Kk" ; // 요일별 웹툰
        $sIfrCode8 = "04L0" ; // 인기웹툰
        $sIfrCode9 = "04KA" ; // 베스트TV
        $sIfrCode10 = "04MA"; // 푸터배너
        $sIfrCode11 = "04KA"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04MT" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "kihoilbohot": // 기호일보(핫)
        
        $sCode = "04Vw"; //pv 체크
        $sIfrCode1 = "04LT" ; // 전체기사
        $sIfrCode2 = "04Lr" ; // 포토뉴스
        $sIfrCode3 = "04JI"  ; // 많이본 뉴스
        $sIfrCode4 = "04Jy" ; // 베스트 신문보기
        $sIfrCode5 = "04JW" ; // 주간 핫 리포트
        $sIfrCode7 = "04Kp" ; // 요일별 웹툰
        $sIfrCode8 = "04L8" ; // 인기웹툰
        $sIfrCode9 = "04KI" ; // 베스트TV
        $sIfrCode10 = "04MI"; // 푸터배너
        $sIfrCode11 = "04KI"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04MY" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "kihoilbo": // 기호일보
        
        $sCode = "04Vx"; //pv 체크
        $sIfrCode1 = "04LR" ; // 전체기사
        $sIfrCode2 = "04Lq" ; // 포토뉴스
        $sIfrCode3 = "04JH"  ; // 많이본 뉴스
        $sIfrCode4 = "04Jx" ; // 베스트 신문보기
        $sIfrCode5 = "04JV" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ko" ; // 요일별 웹툰
        $sIfrCode8 = "04L6" ; // 인기웹툰
        $sIfrCode9 = "04KH" ; // 베스트TV
        $sIfrCode10 = "04MH"; // 푸터배너
        $sIfrCode11 = "04KH"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04MX" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "polinews": // 폴리뉴스
        
        $sCode = "04W2"; //pv 체크
        $sIfrCode1 = "04La" ; // 전체기사
        $sIfrCode2 = "04Lz" ; // 포토뉴스
        $sIfrCode3 = "04JM"  ; // 많이본 뉴스
        $sIfrCode4 = "04K2" ; // 베스트 신문보기
        $sIfrCode5 = "04Jb" ; // 주간 핫 리포트
        $sIfrCode7 = "04Kw" ; // 요일별 웹툰
        $sIfrCode8 = "04LH" ; // 인기웹툰
        $sIfrCode9 = "04KM" ; // 베스트TV
        $sIfrCode10 = "04MM"; // 푸터배너
        $sIfrCode11 = "04KM"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Mg" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "polinewshot": // 폴리뉴스(핫)
    
        $sCode = "04Yd"; //pv 체크
        $sIfrCode1 = "04La" ; // 전체기사
        $sIfrCode2 = "04Lz" ; // 포토뉴스
        $sIfrCode3 = "04JM"  ; // 많이본 뉴스
        $sIfrCode4 = "04K2" ; // 베스트 신문보기
        $sIfrCode5 = "04Jb" ; // 주간 핫 리포트
        $sIfrCode7 = "04Kw" ; // 요일별 웹툰
        $sIfrCode8 = "04LH" ; // 인기웹툰
        $sIfrCode9 = "04KM" ; // 베스트TV
        $sIfrCode10 = "04MM"; // 푸터배너
        $sIfrCode11 = "04KM"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Mg" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "liveen": // 라이브엔
    
        $sCode = "04Vz"; //pv 체크
        $sIfrCode1 = "04LV" ; // 전체기사
        $sIfrCode2 = "04Lt" ; // 포토뉴스
        $sIfrCode3 = "04JJ"  ; // 많이본 뉴스
        $sIfrCode4 = "04Jz" ; // 베스트 신문보기
        $sIfrCode5 = "04JX" ; // 주간 핫 리포트
        $sIfrCode7 = "04Kq" ; // 요일별 웹툰
        $sIfrCode8 = "04LC" ; // 인기웹툰
        $sIfrCode9 = "04KJ" ; // 베스트TV
        $sIfrCode10 = "04MJ"; // 푸터배너
        $sIfrCode11 = "04KJ"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Ma" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "cctvnews": // cctv뉴스
    
        $sCode = "04Vp"; //pv 체크
        $sIfrCode1 = "04LM" ; // 전체기사
        $sIfrCode2 = "04Lh" ; // 포토뉴스
        $sIfrCode3 = "04Jh"  ; // 많이본 뉴스
        $sIfrCode4 = "04Jp" ; // 베스트 신문보기
        $sIfrCode5 = "04Jg" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ki" ; // 요일별 웹툰
        $sIfrCode8 = "04Kz" ; // 인기웹툰
        $sIfrCode9 = "04K8" ; // 베스트TV
        $sIfrCode10 = "04M9"; // 푸터배너
        $sIfrCode11 = "04K8"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04MS" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "cbcnews": // cbc뉴스
    
        $sCode = "04Vo"; //pv 체크
        $sIfrCode1 = "04Jj" ; // 전체기사
        $sIfrCode2 = "04Jo" ; // 포토뉴스
        $sIfrCode3 = "04It"  ; // 많이본 뉴스
        $sIfrCode4 = "04J1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ix" ; // 주간 핫 리포트
        $sIfrCode7 = "04JQ" ; // 요일별 웹툰
        $sIfrCode8 = "04JY" ; // 인기웹툰
        $sIfrCode9 = "04J5" ; // 베스트TV
        $sIfrCode10 = "04K3"; // 푸터배너
        $sIfrCode11 = "04J5"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04K9" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "dailygrid": // 데일리그리드
    
        $sCode = "04Vy"; //pv 체크
        $sIfrCode1 = "04Jk" ; // 전체기사
        $sIfrCode2 = "04Jq" ; // 포토뉴스
        $sIfrCode3 = "04Iu"  ; // 많이본 뉴스
        $sIfrCode4 = "04J2" ; // 베스트 신문보기
        $sIfrCode5 = "04Iy" ; // 주간 핫 리포트
        $sIfrCode7 = "04JP" ; // 요일별 웹툰
        $sIfrCode8 = "04Jc" ; // 인기웹툰
        $sIfrCode9 = "04J6" ; // 베스트TV
        $sIfrCode10 = "04K4"; // 푸터배너
        $sIfrCode11 = "04J6"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04KB" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "upkorea": // 업코리아

        $sCode = "04W1"; //pv 체크
        $sIfrCode1 = "04Jl" ; // 전체기사
        $sIfrCode2 = "04Js" ; // 포토뉴스
        $sIfrCode3 = "04Iv"  ; // 많이본 뉴스
        $sIfrCode4 = "04J3" ; // 베스트 신문보기
        $sIfrCode5 = "04Iz" ; // 주간 핫 리포트
        $sIfrCode7 = "04JO" ; // 요일별 웹툰
        $sIfrCode8 = "04Jd" ; // 인기웹툰
        $sIfrCode9 = "04J7" ; // 베스트TV
        $sIfrCode10 = "04K5"; // 푸터배너
        $sIfrCode11 = "04J7"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04KD" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "gooddailynews": // 굿데일리
    
        $sCode = "04Vt"; //pv 체크
        $sIfrCode1 = "04Jm" ; // 전체기사
        $sIfrCode2 = "04Ju" ; // 포토뉴스
        $sIfrCode3 = "04Iw"  ; // 많이본 뉴스
        $sIfrCode4 = "04J4" ; // 베스트 신문보기
        $sIfrCode5 = "04J0" ; // 주간 핫 리포트
        $sIfrCode7 = "04JN" ; // 요일별 웹툰
        $sIfrCode8 = "04Je" ; // 인기웹툰
        $sIfrCode9 = "04J8" ; // 베스트TV
        $sIfrCode10 = "04K6"; // 푸터배너
        $sIfrCode11 = "04J8"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04KG" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;

    case "kyungintoday": // 경인투데이
    
        $sCode = "04c5"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "econotalking": // 경제풍월
    
        $sCode = "04c6"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "datanet": // 데이터넷
    
        $sCode = "04c7"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "bithub": // 비트허브
    
        $sCode = "04c8"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "bithubhot": // 비트허브(핫)
    
        $sCode = "04c9"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "itdaily": // 아이티데일리

        $sCode = "04cA"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "worldtoday": // 월드투데이
    
        $sCode = "04cB"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "koreadaily": // 코리아데일리

        $sCode = "04cC"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "koreatimes": // 코리아타임즈
    
        $sCode = "04cD"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;

    case "kgdm": // 경기도민일보
    
        $sCode = "04cE"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "gnmaeil": // 경남매일

        $sCode = "04dz"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "newsquick": // 뉴스퀵
    
        $sCode = "04e0"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "ujnews": // 울산종합일보
    
        $sCode = "04e1"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "jnewsk": // 정읍신문

        $sCode = "04e2"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "gwnews": // 강원신문

        $sCode = "04e3"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "kcsnews": // 한국정경신문
    
        $sCode = "04e4"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "sportsdongajubunna": // 스포츠동아/주번나

        $sCode = "04hO"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "sportsseoulholic": // 스포츠서울/홀릭
    
        $sCode = "04hQ"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "stoozipper": // 스포츠투데이/지퍼
    
        $sCode = "04hR"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;
    case "ispluscream": // 일간스포츠크림
    
        $sCode = "04hS"; //pv 체크
        $sIfrCode1 = "04LZ" ; // 전체기사
        $sIfrCode2 = "04Lx" ; // 포토뉴스
        $sIfrCode3 = "04JL"  ; // 많이본 뉴스
        $sIfrCode4 = "04K1" ; // 베스트 신문보기
        $sIfrCode5 = "04Ja" ; // 주간 핫 리포트
        $sIfrCode7 = "04Ku" ; // 요일별 웹툰
        $sIfrCode8 = "04LG" ; // 인기웹툰
        $sIfrCode9 = "04KL" ; // 베스트TV
        $sIfrCode10 = "04ML"; // 푸터배너
        $sIfrCode11 = "04KL"; // 베스트웹툰 랜덤
        $sIfrCode12 = "04DZ" ; //탑배너
        $sIfrCode13 = "04Me" ; //신규생활정보
        $sIfrCode14 = "03Ff" ; //베스트신문보기 배너형
        break;

       case "jemin": // 제민일보
    
        $sCode = "04YB"; //pv 체크
        $sIfrCode1 = "02cQ";
        $sIfrCode2 = "02cR";
        $sIfrCode3 = "02cN";
        $sIfrCode4 = "02cP";
        $sIfrCode5 = "02cO";
        //sIfrCode6 = "02cS"
        $sIfrCode7 = "02mo";
        $sIfrCode8 = "02mp";
        $sIfrCode9 = "02u5";
        $sIfrCode10 = "02uD";
        $sIfrCode11 = "02yV"; // 베스트웹툰 랜덤
        $sIfrCode12 = "030q" ; //탑배너
        $sIfrCode13 = "0324" ; //신규배너
        $sIfrCode14 = "03Eb" ; //베스트신문보기 배너형
        break;


    case "bridgenews": // 브릿지뉴스
    
        $sCode = "02pn";
        $sIfrCode1 = "02pJ";
        $sIfrCode2 = "02pb";
        $sIfrCode3 = "02pE";
        $sIfrCode4 = "02pG";
        $sIfrCode5 = "02pW";
        //sIfrCode6 = "02pL"
        $sIfrCode7 = "02pY";
        $sIfrCode8 = "02pZ";
        $sIfrCode9 = "02u2";
        $sIfrCode10 = "02uF";
        $sIfrCode11 = " 02yX"   ; // 베스트웹툰 랜덤
        $sIfrCode12 = "030m" ; //탑배너
        $sIfrCode13 = "0322" ; //신규배너
        $sIfrCode14 = "03EW" ; //베스트신문보기 배너형
        break;

    
        
default:
        $popstate = 1;
        $sCode = "02ca"; //pv 체크
        $sIfrCode1 = "02cI";    // 전체기사
        $sIfrCode2 = "04f2";    // 포토뉴스
        $sIfrCode3 = "02cF";   // 많이본 뉴스
        $sIfrCode4 = "02cH";    // 베스트 신문보기
        $sIfrCode5 = "04eJ";    // 주간 핫 리포트
        $sIfrCode7 = "04ek";    // 요일별 웹툰
        $sIfrCode8 = "04en";    // 인기웹툰
        $sIfrCode9 = "04eY";    // 베스트TV
        $sIfrCode10 = "04f8";   // 푸터배너
        $sIfrCode11 = "04eY";   // 베스트웹툰 랜덤
        $sIfrCode12 = "032y";  //탑배너
        $sIfrCode13 = "0321";  //신규생활정보
        $sIfrCode14 = "03Ff";  //베스트신문보기 배너형
        break;
 } 


/*
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
WHERE `cb_board`.`brd_key` = 'eco'
";


if($db_db->pquery($query)){
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

        $post_id=$r['post_id'];

        $query="SELECT `cb_post_extra_vars`.*
        FROM `cb_post_extra_vars`
        WHERE `cb_post_extra_vars`.`post_id` = :post_id";
        $db_db->bindParam(':post_id', $post_id, PDO::PARAM_INT);
        $db_db->pquery($query);
        
        while($row = $db_db->fetchrow()){


            $extra_vars[$row['pev_key']] = $row['pev_value'];
        }


        $query="SELECT `cb_post_link`.*
        FROM `cb_post_link`
        WHERE `cb_post_link`.`post_id` = :post_id";
        $db_db->bindParam(':post_id', $post_id, PDO::PARAM_INT);
        $db_db->pquery($query);
        
        while($row = $db_db->fetchrow()){


            $post_link[] = $row;
        }
    } 
        


    if(!empty($extra_vars)){
    	$popstate=0;
    	if($extra_vars['popstate']==='enable'){
    	    
    	    if($extra_vars['view_type']==='time'){
                if(!empty($post_link))
    	    	foreach($post_link as $value){

    	            if($value['pln_start'] <= date('H') && $value['pln_end'] >= date('H') ){

    	                $popstate=1;
    	                $media_code['popstate_url']= $value['pln_url'];
                        $link_id=$value['pln_id'];
    	                break;
    	            }            
    	        }
    	        
    	    } else {
                if(!empty($post_link)) {
                $popstate=1;
                    $rand = mt_rand(0,count($post_link)-1);
                    $media_code['popstate_url']= $post_link[$rand]['pln_url'];
                    $link_id= $post_link[$rand]['pln_id'];
                }
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

    $db_db->disconnect();

}
*/

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
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type='text/javascript' src='http://www.mobipopcon.com/js/jquery.cookie.js'></script>
		<script type='text/javascript' src='http://www.mobipopcon.com/js/shortcut.js'></script>
        
        <?php if(isset($outerscript)) echo $outerscript;?>
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

</style>


	</head>

<body  onload="callScheme('GRP', 6, 'DEFAULT');">




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
			
				<iframe width="100%" height="348px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode7?>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
			
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
			<iframe width="100%" height="330px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode11?>&out=iframe" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>	
				
		</section>

	<!-- 하단 배너 08 -->
		<section class="info08">
			<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sIfrCode10?>&out=script"></script>
		</section>
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
		<iframe width="0" height="0" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<?php echo $sCode?>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no">
		</iframe>
	</body>
</html>	
