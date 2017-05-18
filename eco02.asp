<!--#include virtual="/common/config/config.asp"-->
<%
Dim sType : sType = Is_Null(RequestQuery("type"),"etnews")
Dim sURL, sCode, sIfrCode1, sIfrCode2, sIfrCode3, sIfrCode4, sIfrCode5, sIfrCode6, sIfrCode7, sIfrCode8, sIfrCode9, sIfrCode10, sIfrCode11, wetCode1, wetCode2, wetCode3, wetCode4, wetCode5, wetCode6, wetCode7, wetCode8, wetCode9, sIfrCode12, sIfrCode13, sIfrCode14, nonescript, datescript

nonescript = 1
sURL="http://www.popapp.co.kr/anytoon/md.php?MD="+sType
Select Case sType


   	 Case "sstv" ' sstv
		
		sCode = "04Vk" 'pv 체크
		sIfrCode1 = "04LL"	' 전체기사
		sIfrCode2 = "04Lf"	' 포토뉴스
		sIfrCode3 = "04Ji"   ' 많이본 뉴스
		sIfrCode4 = "04Jn"	' 베스트 신문보기
		sIfrCode5 = "04Jf"	' 주간 핫 리포트
		sIfrCode7 = "04Kg"	' 요일별 웹툰
		sIfrCode8 = "04Ky"	' 인기웹툰
		sIfrCode9 = "04K7"	' 베스트TV
		sIfrCode10 = "04M8"	' 푸터배너
		sIfrCode11 = "04K7"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04MR"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

   	 Case "munhwanews" ' 문화뉴스
		
		sCode = "04W3" 'pv 체크
		sIfrCode1 = "04LX"	' 전체기사
		sIfrCode2 = "04Lv"	' 포토뉴스
		sIfrCode3 = "04JK"   ' 많이본 뉴스
		sIfrCode4 = "04K0"	' 베스트 신문보기
		sIfrCode5 = "04JZ"	' 주간 핫 리포트
		sIfrCode7 = "04Ks"	' 요일별 웹툰
		sIfrCode8 = "04LE"	' 인기웹툰
		sIfrCode9 = "04KK"	' 베스트TV
		sIfrCode10 = "04MK"	' 푸터배너
		sIfrCode11 = "04KK"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Mc"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "beatsports" ' 비트스포츠
		
		sCode = "04W0" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "ggilbohot" ' 금강일보(핫)
		
		sCode = "04Vu" 'pv 체크
		sIfrCode1 = "04LQ"	' 전체기사
		sIfrCode2 = "04Lo"	' 포토뉴스
		sIfrCode3 = "04JG"   ' 많이본 뉴스
		sIfrCode4 = "04Jw"	' 베스트 신문보기
		sIfrCode5 = "04JU"	' 주간 핫 리포트
		sIfrCode7 = "04Kn"	' 요일별 웹툰
		sIfrCode8 = "04L5"	' 인기웹툰
		sIfrCode9 = "04KF"	' 베스트TV
		sIfrCode10 = "04MF"	' 푸터배너
		sIfrCode11 = "04KF"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04MW"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "ggilbo" ' 금강일보
		
		sCode = "04Vv" 'pv 체크
		sIfrCode1 = "04LP"	' 전체기사
		sIfrCode2 = "04Ln"	' 포토뉴스
		sIfrCode3 = "04JF"   ' 많이본 뉴스
		sIfrCode4 = "04Jv"	' 베스트 신문보기
		sIfrCode5 = "04JT"	' 주간 핫 리포트
		sIfrCode7 = "04Km"	' 요일별 웹툰
		sIfrCode8 = "04L3"	' 인기웹툰
		sIfrCode9 = "04KE"	' 베스트TV
		sIfrCode10 = "04MD"	' 푸터배너
		sIfrCode11 = "04KE"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04MV"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "ksilboenter" ' 경상일보(연예)
		
		sCode = "04Vr" 'pv 체크
		sIfrCode1 = "04LO"	' 전체기사
		sIfrCode2 = "04Ll"	' 포토뉴스
		sIfrCode3 = "04JE"   ' 많이본 뉴스
		sIfrCode4 = "04Jt"	' 베스트 신문보기
		sIfrCode5 = "04JS"	' 주간 핫 리포트
		sIfrCode7 = "04Kl"	' 요일별 웹툰
		sIfrCode8 = "04L1"	' 인기웹툰
		sIfrCode9 = "04KC"	' 베스트TV
		sIfrCode10 = "04MB"	' 푸터배너
		sIfrCode11 = "04KC"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04MU"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "starjnhot" ' 스타저널(핫)
		
		sCode = "04Yc" 'pv 체크
		sIfrCode1 = "04LO"	' 전체기사
		sIfrCode2 = "04Ll"	' 포토뉴스
		sIfrCode3 = "04JE"   ' 많이본 뉴스
		sIfrCode4 = "04Jt"	' 베스트 신문보기
		sIfrCode5 = "04JS"	' 주간 핫 리포트
		sIfrCode7 = "04Kl"	' 요일별 웹툰
		sIfrCode8 = "04L1"	' 인기웹툰
		sIfrCode9 = "04KC"	' 베스트TV
		sIfrCode10 = "04MB"	' 푸터배너
		sIfrCode11 = "04KC"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04MU"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "ksilbo" ' 경상일보
		
		sCode = "04Vs" 'pv 체크
		sIfrCode1 = "04LN"	' 전체기사
		sIfrCode2 = "04Lj"	' 포토뉴스
		sIfrCode3 = "04JC"   ' 많이본 뉴스
		sIfrCode4 = "04Jr"	' 베스트 신문보기
		sIfrCode5 = "04JR"	' 주간 핫 리포트
		sIfrCode7 = "04Kk"	' 요일별 웹툰
		sIfrCode8 = "04L0"	' 인기웹툰
		sIfrCode9 = "04KA"	' 베스트TV
		sIfrCode10 = "04MA"	' 푸터배너
		sIfrCode11 = "04KA"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04MT"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "kihoilbohot" ' 기호일보(핫)
		
		sCode = "04Vw" 'pv 체크
		sIfrCode1 = "04LT"	' 전체기사
		sIfrCode2 = "04Lr"	' 포토뉴스
		sIfrCode3 = "04JI"   ' 많이본 뉴스
		sIfrCode4 = "04Jy"	' 베스트 신문보기
		sIfrCode5 = "04JW"	' 주간 핫 리포트
		sIfrCode7 = "04Kp"	' 요일별 웹툰
		sIfrCode8 = "04L8"	' 인기웹툰
		sIfrCode9 = "04KI"	' 베스트TV
		sIfrCode10 = "04MI"	' 푸터배너
		sIfrCode11 = "04KI"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04MY"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "kihoilbo" ' 기호일보
		
		sCode = "04Vx" 'pv 체크
		sIfrCode1 = "04LR"	' 전체기사
		sIfrCode2 = "04Lq"	' 포토뉴스
		sIfrCode3 = "04JH"   ' 많이본 뉴스
		sIfrCode4 = "04Jx"	' 베스트 신문보기
		sIfrCode5 = "04JV"	' 주간 핫 리포트
		sIfrCode7 = "04Ko"	' 요일별 웹툰
		sIfrCode8 = "04L6"	' 인기웹툰
		sIfrCode9 = "04KH"	' 베스트TV
		sIfrCode10 = "04MH"	' 푸터배너
		sIfrCode11 = "04KH"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04MX"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "polinews" ' 폴리뉴스
		
		sCode = "04W2" 'pv 체크
		sIfrCode1 = "04La"	' 전체기사
		sIfrCode2 = "04Lz"	' 포토뉴스
		sIfrCode3 = "04JM"   ' 많이본 뉴스
		sIfrCode4 = "04K2"	' 베스트 신문보기
		sIfrCode5 = "04Jb"	' 주간 핫 리포트
		sIfrCode7 = "04Kw"	' 요일별 웹툰
		sIfrCode8 = "04LH"	' 인기웹툰
		sIfrCode9 = "04KM"	' 베스트TV
		sIfrCode10 = "04MM"	' 푸터배너
		sIfrCode11 = "04KM"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Mg"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "polinewshot" ' 폴리뉴스(핫)
	
		sCode = "04Yd" 'pv 체크
		sIfrCode1 = "04La"	' 전체기사
		sIfrCode2 = "04Lz"	' 포토뉴스
		sIfrCode3 = "04JM"   ' 많이본 뉴스
		sIfrCode4 = "04K2"	' 베스트 신문보기
		sIfrCode5 = "04Jb"	' 주간 핫 리포트
		sIfrCode7 = "04Kw"	' 요일별 웹툰
		sIfrCode8 = "04LH"	' 인기웹툰
		sIfrCode9 = "04KM"	' 베스트TV
		sIfrCode10 = "04MM"	' 푸터배너
		sIfrCode11 = "04KM"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Mg"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "liveen" ' 라이브엔
	
		sCode = "04Vz" 'pv 체크
		sIfrCode1 = "04LV"	' 전체기사
		sIfrCode2 = "04Lt"	' 포토뉴스
		sIfrCode3 = "04JJ"   ' 많이본 뉴스
		sIfrCode4 = "04Jz"	' 베스트 신문보기
		sIfrCode5 = "04JX"	' 주간 핫 리포트
		sIfrCode7 = "04Kq"	' 요일별 웹툰
		sIfrCode8 = "04LC"	' 인기웹툰
		sIfrCode9 = "04KJ"	' 베스트TV
		sIfrCode10 = "04MJ"	' 푸터배너
		sIfrCode11 = "04KJ"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Ma"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "cctvnews" ' cctv뉴스
	
		sCode = "04Vp" 'pv 체크
		sIfrCode1 = "04LM"	' 전체기사
		sIfrCode2 = "04Lh"	' 포토뉴스
		sIfrCode3 = "04Jh"   ' 많이본 뉴스
		sIfrCode4 = "04Jp"	' 베스트 신문보기
		sIfrCode5 = "04Jg"	' 주간 핫 리포트
		sIfrCode7 = "04Ki"	' 요일별 웹툰
		sIfrCode8 = "04Kz"	' 인기웹툰
		sIfrCode9 = "04K8"	' 베스트TV
		sIfrCode10 = "04M9"	' 푸터배너
		sIfrCode11 = "04K8"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04MS"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "cbcnews" ' cbc뉴스
	
		sCode = "04Vo" 'pv 체크
		sIfrCode1 = "04Jj"	' 전체기사
		sIfrCode2 = "04Jo"	' 포토뉴스
		sIfrCode3 = "04It"   ' 많이본 뉴스
		sIfrCode4 = "04J1"	' 베스트 신문보기
		sIfrCode5 = "04Ix"	' 주간 핫 리포트
		sIfrCode7 = "04JQ"	' 요일별 웹툰
		sIfrCode8 = "04JY"	' 인기웹툰
		sIfrCode9 = "04J5"	' 베스트TV
		sIfrCode10 = "04K3"	' 푸터배너
		sIfrCode11 = "04J5"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04K9"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "dailygrid" ' 데일리그리드
	
		sCode = "04Vy" 'pv 체크
		sIfrCode1 = "04Jk"	' 전체기사
		sIfrCode2 = "04Jq"	' 포토뉴스
		sIfrCode3 = "04Iu"   ' 많이본 뉴스
		sIfrCode4 = "04J2"	' 베스트 신문보기
		sIfrCode5 = "04Iy"	' 주간 핫 리포트
		sIfrCode7 = "04JP"	' 요일별 웹툰
		sIfrCode8 = "04Jc"	' 인기웹툰
		sIfrCode9 = "04J6"	' 베스트TV
		sIfrCode10 = "04K4"	' 푸터배너
		sIfrCode11 = "04J6"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04KB"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "upkorea" ' 업코리아

		sCode = "04W1" 'pv 체크
		sIfrCode1 = "04Jl"	' 전체기사
		sIfrCode2 = "04Js"	' 포토뉴스
		sIfrCode3 = "04Iv"   ' 많이본 뉴스
		sIfrCode4 = "04J3"	' 베스트 신문보기
		sIfrCode5 = "04Iz"	' 주간 핫 리포트
		sIfrCode7 = "04JO"	' 요일별 웹툰
		sIfrCode8 = "04Jd"	' 인기웹툰
		sIfrCode9 = "04J7"	' 베스트TV
		sIfrCode10 = "04K5"	' 푸터배너
		sIfrCode11 = "04J7"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04KD"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "gooddailynews" ' 굿데일리
	
		sCode = "04Vt" 'pv 체크
		sIfrCode1 = "04Jm"	' 전체기사
		sIfrCode2 = "04Ju"	' 포토뉴스
		sIfrCode3 = "04Iw"   ' 많이본 뉴스
		sIfrCode4 = "04J4"	' 베스트 신문보기
		sIfrCode5 = "04J0"	' 주간 핫 리포트
		sIfrCode7 = "04JN"	' 요일별 웹툰
		sIfrCode8 = "04Je"	' 인기웹툰
		sIfrCode9 = "04J8"	' 베스트TV
		sIfrCode10 = "04K6"	' 푸터배너
		sIfrCode11 = "04J8"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04KG"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형


	Case "kyungintoday" ' 경인투데이
	
		sCode = "04c5" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "econotalking" ' 경제풍월
	
		sCode = "04c6" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "datanet" ' 데이터넷
	
		sCode = "04c7" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "bithub" ' 비트허브
	
		sCode = "04c8" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "bithubhot" ' 비트허브(핫)
	
		sCode = "04c9" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "itdaily" ' 아이티데일리

		sCode = "04cA" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "worldtoday" ' 월드투데이
	
		sCode = "04cB" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "koreadaily" ' 코리아데일리

		sCode = "04cC" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "koreatimes" ' 코리아타임즈
	
		sCode = "04cD" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형


	Case "kgdm" ' 경기도민일보
	
		sCode = "04cE" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "gnmaeil" ' 경남매일

		sCode = "04dz" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "newsquick" ' 뉴스퀵
	
		sCode = "04e0" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "ujnews" ' 울산종합일보
	
		sCode = "04e1" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "jnewsk" ' 정읍신문

		sCode = "04e2" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "gwnews" ' 강원신문

		sCode = "04e3" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "kcsnews" ' 한국정경신문
	
		sCode = "04e4" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "sportsdongajubunna" ' 스포츠동아/주번나

		sCode = "04hO" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "sportsseoulholic" ' 스포츠서울/홀릭
	
		sCode = "04hQ" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "stoozipper" ' 스포츠투데이/지퍼
	
		sCode = "04hR" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형

	Case "ispluscream" ' 일간스포츠크림
	
		sCode = "04hS" 'pv 체크
		sIfrCode1 = "04LZ"	' 전체기사
		sIfrCode2 = "04Lx"	' 포토뉴스
		sIfrCode3 = "04JL"   ' 많이본 뉴스
		sIfrCode4 = "04K1"	' 베스트 신문보기
		sIfrCode5 = "04Ja"	' 주간 핫 리포트
		sIfrCode7 = "04Ku"	' 요일별 웹툰
		sIfrCode8 = "04LG"	' 인기웹툰
		sIfrCode9 = "04KL"	' 베스트TV
		sIfrCode10 = "04ML"	' 푸터배너
		sIfrCode11 = "04KL"	' 베스트웹툰 랜덤
	    sIfrCode12 = "04DZ"  '탑배너
		sIfrCode13 = "04Me"  '신규생활정보
		sIfrCode14 = "03Ff"  '베스트신문보기 배너형


	Case "hiadone" ' 자사
		nonescript = 0
		sURL="http://www.popapp.co.kr/anytoon/md.php?MD="+sType
		
		sCode = "05uO" 'pv 체크
		sIfrCode1 = "01Ca"	' 전체기사
		sIfrCode2 = "02vo"	' 포토뉴스
		sIfrCode3 = "01Cc"   ' 많이본 뉴스
		sIfrCode4 = "032o"	' 베스트 신문보기
		sIfrCode5 = "02vi"	' 주간 핫 리포트
		sIfrCode7 = "02vk"	' 요일별 웹툰
		sIfrCode8 = "02vl"	' 인기웹툰
		sIfrCode9 = "02yT"	' 베스트게임
		sIfrCode10 = "02vp"	' 푸터배너
		sIfrCode11 = "02yT"	' 베스트웹툰 랜덤
		sIfrCode12 = "032y"  '탑배너
		sIfrCode13 = "0320"  '신규생활정보
		sIfrCode14 = "03EV"  '베스트신문보기 배너형



       Case "jemin" ' 제민일보
	
		sCode = "04YB" 'pv 체크
		sIfrCode1 = "02cQ"
		sIfrCode2 = "02cR"
		sIfrCode3 = "02cN"
		sIfrCode4 = "02cP"
		sIfrCode5 = "02cO"
		'sIfrCode6 = "02cS"
		sIfrCode7 = "02mo"
		sIfrCode8 = "02mp"
		sIfrCode9 = "02u5"
		sIfrCode10 = "02uD"
		sIfrCode11 = "02yV"	' 베스트웹툰 랜덤
		sIfrCode12 = "030q"  '탑배너
		sIfrCode13 = "0324"  '신규배너
		sIfrCode14 = "03Eb"  '베스트신문보기 배너형




	Case "bridgenews" ' 브릿지뉴스
	
		sCode = "02pn"
		sIfrCode1 = "02pJ"
		sIfrCode2 = "02pb"
		sIfrCode3 = "02pE"
		sIfrCode4 = "02pG"
		sIfrCode5 = "02pW"
		'sIfrCode6 = "02pL"
		sIfrCode7 = "02pY"
		sIfrCode8 = "02pZ"
		sIfrCode9 = "02u2"
		sIfrCode10 = "02uF"
		sIfrCode11 = " 02yX"	' 베스트웹툰 랜덤
		sIfrCode12 = "030m"  '탑배너
		sIfrCode13 = "0322"  '신규배너
		sIfrCode14 = "03EW"  '베스트신문보기 배너형







'	Case "tvreport" ' tvreport
'		sURL ="tvreport"  ' root url
'		sCode = "02Y3"  ' pv code
'		sIfrCode1 = "02XQ" '전체기사 8줄
'		sIfrCode2 = "02XR" '포토뉴스 3칸
'		sIfrCode3 = "02XM" '많이본뉴스 5칸
'		sIfrCode4 = "02XP" '베스트신문 3칸
'		sIfrCode5 = "02Xh" '심리테스트
'		sIfrCode6 = "02Xi" '생활정보
End Select
%>
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
		<link rel="shortcut icon" href=" ">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=yes">
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<link href="common/css/normalize.css" rel="stylesheet" type="text/css">
		<link href="common/css/common.css" rel="stylesheet" type="text/css">
		<link href="common/css/main.css" rel="stylesheet" type="text/css">
		<style>
div a img {
    height: auto !important;;
	width:100% !important;;
}


</style>
		<script src="common/js/main.js"></script>

		<script type='text/javascript' src='http://www.mobipopcon.com/js/jquery.cookie.js'></script>
		<script type='text/javascript' src='http://www.mobipopcon.com/js/shortcut.js'></script>



		<link href="css_new/import.css" rel="stylesheet" type="text/css">
		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/jquery-ui.js"></script>
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
	});
		</script>

<% If  nonescript  =  1 Then %>

<% ElseIf datescript = 1 Then  %>
	<% If Time <= #04:00:00 AM# OR Time >= #09:00:00 PM# Then %>
		<script language = "javascript"> 
			if (window.history && window.history.pushState) {
			window.history.pushState('forward', null, document.location.href);
        
	        var popped = ('state' in window.history && window.history.state !== null), initialURL = location.href;

			$(window).bind('popstate', function (event) {
			  // Ignore inital popstate that some browsers fire on page load
			  var initialPop = !popped && location.href == initialURL
			  popped = true
			  if (initialPop) return;
			  
			  parent.top.location.replace("<%=sURL%>");
          

	        });
		 }
		</script>
	<% End If %>

<% Else %>
	<% If Time <= #04:00:00 AM# OR Time >= #07:00:00 AM# Then %>
		<script language = "javascript"> 

			if (window.history && window.history.pushState) {
			window.history.pushState('forward', null, document.location.href);
        
	        var popped = ('state' in window.history && window.history.state !== null), initialURL = location.href;

			$(window).bind('popstate', function (event) {
			  // Ignore inital popstate that some browsers fire on page load
			  var initialPop = !popped && location.href == initialURL
			  popped = true
			  if (initialPop) return;
			  
			  parent.top.location.replace("<%=sURL%>");
          

	        });
		 }
		</script>
	<% End If %>
<% End If %>



	</head>

<body  onload="callScheme('GRP', 6, 'DEFAULT');">

<!-- 구글애널리틱스 시작 -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-88829342-3', 'auto');
  ga('send', 'pageview');

</script>
<!-- 구글애널리틱스 끝 -->



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
					<iframe id="top-article" width="100%" height="260" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode1%>&out=iframe" frameborder="0" scrolling="no"></iframe>
		</section>

	<!-- 포토뉴스영역 02-->
		<section class="info02">
				<h2>포토뉴스</h2>
				<iframe src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>	 
		</section>

	<!-- 생활정보 영역 03 -->
		<section class="info03" id="scroll02">
			<h2>생활정보</h2>
				<iframe width="100%" height="185" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode3%>&out=iframe" frameborder="0" scrolling="no"></iframe>
		</section>

<!-- 요일별 웹툰 04 -->
		<section class="info04">
			<h2>요일별 웹툰</h2>
			
				<iframe width="100%" height="348px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode7%>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
			
		</section>

	<!-- 핫토픽 02-->
		<section class="info02" id="scroll03">
			<h2>핫토픽</h2>
			<div>
				<iframe width="100%" height="120px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode13%>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
			</div>
		</section>

	<!-- Best 신문보기 05 -->
		<section class="info05">
			<h2>BEST 신문보기</h2>

				<script type='text/javascript' src='http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode4%>&lang=utf-8&out=script'></script>
		</section>

	<!-- 인기웹툰 04 -->
		<section class="info04" id="scroll04">
			<h2>인기 웹툰</h2>
			<iframe width="100%" height="348" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode8%>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
		</section>

	<!-- 주간 핫 리포트 -->
		<section class="info6">
				<h2>주간 핫 리포트</h2>
				<div style="position:relative; padding-top: 83%;">
				<iframe width="100%" height="100%" style="position:absolute; top:0; left: 0; padding:0 3%;" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode5%>&out=iframe" allowtransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
				<div>
		</section>

	<!-- Best 웹툰 Top6 07 -->
		<section class="info07" id="scroll04">
			<h2>Best 웹툰 TOP6</h2>
			<iframe width="100%" height="330px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode11%>&out=iframe" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>	
				
		</section>

	<!-- 하단 배너 08 -->
		<section class="info08">
			<a href="javascript:goLink02u8('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02u8%26bannerid=1x00%26campaignid=0FOv');">
				<img src="http://cdn3.ad4989.co.kr:80/02_q3/0FO_v/1484030415362.png">
			</a>
		</section>
 	</div>

 	<!-- 하단 푸터 -->
	 	<footer>
	 		<a href="tel:02-2105-7498">
	 			<h3>
	 				광 고 문 의 			 			
	 			</h3>
	 		</a>
	 		<p>
	 			<span>뉴스팝콘 | newspopcon.com</span>
	 			Copyright ⓒ NEWSPOPCON ALL RIGHT RESERVED
	 		</p>
	 	</footer>



<!--
		<div id="skip-navigation">
			<ol>
				<li><a href="#navi-main">주 메뉴 바로 가기</a></li>
				<li><a href="#contents">본문 내용 바로 가기</a></li>
			</ol>
		</div>

		<div id="int-global-wrapper">
			<div id="int-global-header">
				<div class="int-wrap-320px">
					<div class="int-gh-top">
						<div id="int-header">
							<a href="/any.asp?type=<%=sURL%>" class="header-menu" title="메뉴를엽니다"><img src="common/image/header_menu.png" alt="메뉴버튼"/></a>
							<h1><a href="/any.asp?type=<%=sURL%>" title="메인홈으로이동"><img src="common/image/header_logo.png" alt="로고"/></a></h1>
							<a href="/any.asp?type=<%=sURL%>" class="header-srh" title="검색합니다"><img src="common/image/header_srh.png" alt="검색버튼"/></a>
						</div>
					</div>
					<div class="int-gh-bottom">	
						<div id="int-gh-gnb">
							<h2 class="marker"><a id="navi-main">주메뉴</a></h2>
							<ul>
								<li class="guide"><a id="int-gnb-button-01" href="/any.asp?type=<%=sURL%>" title="많이 본 뉴스로 이동합니다.">많이 본 뉴스</a></li>
								<li><a id="int-gnb-button-02" href="/any.asp?type=<%=sURL%>" title="실시간토픽로 이동합니다.">실시간토픽</a></li>
								<li><a id="int-gnb-button-03" href="/any.asp?type=<%=sURL%>" title="베스트댓글로 이동합니다.">베스트댓글</a></li>
								<li><a id="int-gnb-button-04" href="/any.asp?type=<%=sURL%>" title="포토로 이동합니다.">포토</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			
			<div id="int-body-wrapper">
				<h2 class="marker"><a id="contents">본문 내용</a></h2>
				<div id="int-container">
					<div id="int-main-container">
						<div id="int-main-section">
                        

                        
							<div id="banner_top">
								<iframe width="320" height="80" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode12%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
							</div>
                                             



							<div class="int-section">
								<div>
									<h2><img src="common/image/all_news.png" alt="전체기사"/></h2>
									<span class="more"><a href="/any.asp?type=<%=sURL%>" title="더보기"><img src="common/image/arrow.png" alt="더보기"/></a></span>
								</div>
								<div>
									<iframe id="top-article" width="100%" height="260" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode1%>&out=iframe" frameborder="0" scrolling="no"></iframe>
								</div>
							</div>
							<div class="int-section">
								<div>
									<h2><img src="common/image/photo_news.png" alt="포토뉴스"/></h2>
								</div>
								<div>
									<iframe id="int-page-iframe-view" width="100%" height="120" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" frameborder="0" scrolling="no" ></iframe>

								</div>
							</div>
							<div id="int-pagination">
								<p> <a href="/any.asp?type=<%=sURL%>" class="prev" title="이전페이지가 보입니다."><img src="common/image/prev.png" alt="이전으로"/></a>
									<a class="int-pagination-button select" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a class="int-pagination-button" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode2%>&out=iframe" title="해당페이지가 보입니다."><img src="common/image/bullet.png" alt="페이지버튼"/></a>
									<a href="/any.asp?type=<%=sURL%>" class="next" title="다음페이지가 보입니다."><img src="common/image/next.png" alt="다음으로"/></a>
								</p>
							</div>
							<div class="int-section">
								<div>
									<h2><img src="common/image/popular_news.png" alt="많이 본 뉴스"/></h2>
									<span class="more"><a href="/any.asp?type=<%=sURL%>" title="더보기"><img src="common/image/arrow.png" alt="더보기"/></a></span>
								</div>
									<iframe width="100%" height="150" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode3%>&out=iframe" frameborder="0" scrolling="no" ></iframe>
								<div>
								</div>
							</div>

	
                            <div class="int-section">
								<div>
									<h2><img src="common/image/week_webtoon.png" alt="요일별 웹툰"/></h2></a></span>
								</div>
								<div class="S-iframe">
									<iframe width="100%" height="340px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode7%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div>

							
							<div class="int-section">
								<div>
									<h2><img src="common/image/title_mylife.png" alt="my 생활정보"/></h2>
								</div>
								<div>
									<iframe width='100%' height='120px' src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode13%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div>


							<div class="int-section no-margin">
								<div>
									<h2><img src="common/image/best_item.png" alt="베스트 아이템"/></h2>
								</div>
								<div class="f-iframe">
									<iframe width="100%" height="273" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode4%>&out=iframe" frameborder="0" scrolling="no" ></iframe>
								</div>
							</div>

							

                            <div class="int-section">
								<div>
									<h2><img src="common/image/popular_webtoon.png" alt="인기 웹툰"/></h2>
									<span class="more"><a href="/" title="더보기"></a></span>
								</div>
								<div class="S-iframe">
									<iframe width="100%" height="340px" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode8%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"  ></iframe>
								</div>
							</div>
							<div class="int-section">
								<div>
									<h2><img src="common/image/title_weekhot.png" alt="주간핫리포트"/></h2>
								</div>
								<div class="f-iframe">
									<iframe width="100%" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode5%>&out=iframe" allowTransparency="true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
								</div>
							</div>


<%
Randomize
Dim randomInt
'Response.write  int(Rnd() * 2  +1)
randomInt = int(Rnd() * 2  +1)
'Response.write randomInt
If randomInt = 1 Then 
%>
<% Else %>

<% End If %>

							<section id="banner_bottom" style="border-bottom:5px solid #ddd;">
								
								<script src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sIfrCode10%>&out=script"></script>
							</section>

						</div>
					</div>
				</div>
			</div>
			
			<div id="int-global-footer">
				
                
                
				<div id="int-footer-copyright">
					<div class="int-wrap-320px">
						<span class="copyright"><img src="common/image/copyright.png" alt="카피라이터"/></span>
                          <iframe src='http://script.theprimead.co.kr/winggoSetCookiePage.php?code=MzkyMA%3D%3D&_NMNCODE_=&_NMNURL_=http%3A%2F%2Fwww.popapp.co.kr%2Fanytoon%2Findex.php%3FMD%3Dadpop' height='0' width='0'></iframe>

					</div>
				</div>
			</div>
		</div>
		<iframe width="0" height="0" src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=<%=sCode%>&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
		-->
	</body>
</html>	




