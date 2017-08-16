<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Newspopcon</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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

</head>

<body>
	<header>
		<h1>
			<img src="images/logo.png" alt="logo">
			<span><img src="images/home.png" alt="home"></span>
		</h1>
		<nav>
			<ul>
				<li data-id="scroll01">뉴 스</li>
				<li data-id="scroll02">생활정보</li>
			</ul>
		</nav>
	</header>

	<div class="wrap">
	<!-- 전체기사 영역 01 -->
		<section class="info01" id="scroll01">
			<h2>전체기사</h2>
				<!-- iframe 영역 -->
				<div id="foin_pageid01">
 					<div class="title_area">
  						<div class="title">
  							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Ca%26bannerid=23Pb%26campaignid=0FnJ');">
  							150억 부자가 사는집, 어떤가 봤더니.. 입이 쩍!!
  							</a>
  						</div>
					</div>

  					<div class="title_area">
  						<div class="title">
  							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Ca%26bannerid=25vl%26campaignid=0Fxg');">
  							로또1등 3장 "63억" 동시당첨! 모두 한곳에서 번호받아..
  							</a>
  						</div>
 					</div>

  					<div class="title_area">
  						<div class="title">
  							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Ca%26bannerid=23SA%26campaignid=0Fng');">
  							샴푸 버리고 "이것"감으니 98% 충격 발모!
  							</a>
  						</div>
 					</div>

  					<div class="title_area">
  						<div class="title">
  							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Ca%26bannerid=23S4%26campaignid=0Fnr');">
  							맘껏먹고 잠만자도 2달 -18kg폭풍감량!
  							</a>
  						</div>
 					</div>

  					<div class="title_area">
  						<div class="title">
  							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Ca%26bannerid=23TF%26campaignid=0Fnv');">
  							용써도 안 서던 남性 , 24시간 서 있어?
  							</a>
  						</div>
 					</div>

   					<div class="title_area">
  						<div class="title">
  							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Ca%26bannerid=236g%26campaignid=0Fm5');">
  								니코틴 제거하니 30년 꼴초도 평생금연..충격!
  							</a>
  						</div>
 					</div>

   					<div class="title_area">
  						<div class="title">
  							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Ca%26bannerid=23I7%26campaignid=0Fml');">
  								자연산인줄 알았던 글래머 아이돌 알고보니…?</a>
  						</div>
 					</div>

   					<div class="title_area">
  						<div class="title">
  								<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Ca%26bannerid=23Ry%26campaignid=0Fnq');">"발기부전약"사라지나.. 끼우면 끝? 경악!
  								</a>
  						</div>
 					</div>
				</div>
		</section>

	<!-- 포토뉴스 영역 02-->
		<section class="info02">
			<h2>포토뉴스</h2>
				<!-- iframe 영역
				<div id="foin_pageid02">
						<div>
							<div class="layout">
								<div class="thum">
									<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Cb%26bannerid=23Pz%26campaignid=0FnP');">
										<img src="http://cdn3.ad4989.co.kr:80/02YS/0F_nP/1487149881413.gif">
									</a>
								</div>

								<div class="summary">
									<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Cb%26bannerid=23Pz%26campaignid=0FnP');">
										20대 알바女,<br>주식으로 27억 벌어!
									</a>
								</div>
							</div>
						</div>

						<div>
						 	<div class="layout">
								<div class="thum">
									<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Cb%26bannerid=1ShB%26campaignid=0D7T');">
										<img src="http://cdn1.ad4989.co.kr:80/02V4/0D7T/1478522329341.jpg">
									</a>
								</div>
								<div class="summary">
									<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Cb%26bannerid=1ShB%26campaignid=0D7T');">
										나도 몰랐던<br>아내의 발정기
									</a>
								</div>
							</div>
						</div>

						<div>
							<div class="layout">
								<div class="thum">
									<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Cb%26bannerid=25vn%26campaignid=0Fxg');">
										<img src="http://cdn2.ad4989.co.kr:80/01_p5/0F_x_g/1488434654549.gif">
									</a>
								</div>
								<div class="summary">
									<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Cb%26bannerid=25vn%26campaignid=0Fxg');">
										로또1등 14억 당첨자,<br>"패턴 정해져 있다!"
									</a>
								</div>
							</div>
						</div>
				</div>
				 -->
			<div>
			<iframe src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=01Cb&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>	 
			</div>
		</section>

	<!-- 생활정보 영역 03 -->
		<section class="info03" id="scroll02">
			<h2>생활정보</h2>
				<div id="foin_pageid03">
					<div class="title_area">  
					    <div class="title">
							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Cc%26bannerid=23S8%26campaignid=0Fng');">
								탈모! 유전자 바꿔 98% 발모성공 비법공개..충격!
							</a>
							</div>  
						</div>  

					<div class="title_area">
						<div class="title">
							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Cc%26bannerid=236c%26campaignid=0Fm5');">
								니코틴 제거하니 30년 꼴초도 평생금연..충격!
							</a>
						</div>
					</div> 

					<div class="title_area">
						<div class="title">
							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Cc%26bannerid=23I4%26campaignid=0Fml');">
								답없던 절벽가슴女, 2주만에 C컵돼..충격!
							</a>
						</div>
					</div>  

					<div class="title_area">
						<div class="title">
							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Cc%26bannerid=23S2%26campaignid=0Fnr');">
								40대주부, 2달만에 남편 몰라볼 정도 살빼..
							</a>
						</div>
					</div>  

					<div class="title_area">
						<div class="title">
							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Cc%26bannerid=23TB%26campaignid=0Fnv');">
								남性 고민,'이것'복용 후 매일 밤 끈덕지게..하악
							</a>
						</div>
					</div>
				</div>
		</section>

	<!-- 요일별 웹툰 04 -->
		<section class="info04">
			<h2>요일별 웹툰</h2>
				<div id="foin_pageid04">
					<ul> 
						<li>
							<div class="hi_list01">
									<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02kX%26bannerid=1T5O%26campaignid=0Crd');">
										<img src="http://cdn2.ad4989.co.kr:80/02V4/0C_r_d/1475232749815.jpg" border="0">
											<p>남편을<br>동생에게 주었다</p>
									</a>
							</div> 
						</li>

						<li>
							<div class="hi_list01">
									<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02kX%26bannerid=1T5n%26campaignid=0Cre');">
										<img src="http://114.108.185.137:80/02V4/0C_r_e/1475232927686.jpg" border="0">
											<p>한번만…한번만<br>널 안아봤으면….</p>
									</a>
							</div>
						</li>                

						<li>
							<div class="hi_list01">   
									<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02kX%26bannerid=1T5X%26campaignid=0Crf');">
										<img src="http://cdn3.ad4989.co.kr:80/02V4/0C_r_f/1483421324809.png" border="0">
											<p>나지금 하고싶어<br>바로 나가자</p>
									</a>
							</div>  
						</li>                

						<li>
							<div class="hi_list01">   
									<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02kX%26bannerid=1T5l%26campaignid=0Crg');">
										<img src="http://cdn1.ad4989.co.kr:80/02V4/0C_r_g/1486101509773.png" border="0">
											<p>사실 널 생각하며<br>한적도 있어…</p>
									</a>
							</div>  
						</li>
					 </ul>
				</div>
		</section>

	<!-- 핫토픽 02-->
		<section class="info02" id="scroll03">
			<h2>핫토픽</h2>
			<div>
				<iframe src="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?impr?pageid=0320&out=iframe" allowTransparency = "true" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" ></iframe>
			</div>
			<!--
			<div id="foin_pageid02">
				<div>
						<div class="layout">
							<div class="thum">
								<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=0320%26bannerid=23T9%26campaignid=0Fnr');">
									<img src="http://cdn3.ad4989.co.kr:80/01_oY/0F_n_r/1487209736670.gif" width="100" height="85" border="0">
								</a>
							</div>

							<div class="summary">
								<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=0320%26bannerid=23T9%26campaignid=0Fnr');">
									굶지않고 잠만자도<br>2달,68→50kg감량!
								</a>
							</div>
						</div>
				</div>    

				<div>
					<div class="layout">
						<div class="thum">
							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=0320%26bannerid=23Ph%26campaignid=0FnM');">
								<img src="http://211.221.160.100:80/02YS/0F_nM/1487149586594.gif" width="100" height="85" border="0">
							</a>
						</div>

						<div class="summary">
							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=0320%26bannerid=23Ph%26campaignid=0FnM');">
								150억 부자가 사는집,<br>어떤가 봤더니..헉!!
							</a>
						</div>
					</div>
				</div>

				<div>
					<div class="layout">
						<div class="thum">
							<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=0320%26bannerid=23S0%26campaignid=0Fnq');">
								<img src="http://cdn1.ad4989.co.kr:80/02S5/0F_n_q/1487154644858.gif" width="100" height="85" border="0">
							</a>
						</div>
						<div class="summary">
						<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=0320%26bannerid=23S0%26campaignid=0Fnq');">
							"발기부전약"사라지나?<br>끼우면 끝? 경악!
						</a>
						</div>
					</div>
				</div>
			</div>
			-->
		</section>

	<!-- Best 신문보기 05 -->
		<section class="info05">
			<h2>BEST 신문보기</h2>
			<div id="foin_pageid05">
				<div style="border-bottom:solid 1px #e5e5e5;"> 
					<a href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Ci%26bannerid=25vp%26campaignid=0Fxg" target="_blank">
						<img src="http://cdn1.ad4989.co.kr:80/01_p5/0F_x_g/1488434654580.gif">
					</a>
				</div>
				
				<div style="border-bottom:solid 1px #e5e5e5;">
					<a href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Ci%26bannerid=236e%26campaignid=0Fm5" target="_blank">
						<img src="http://cdn2.ad4989.co.kr:80/02_v_p/0F_m5/1487065285125.jpg">
					</a>
				</div>
				
				<div style="border-bottom:solid 1px #e5e5e5;">
					<a href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=01Ci%26bannerid=23TD%26campaignid=0Fnv" target="_blank">
						<img src="http://cdn3.ad4989.co.kr:80/02WW/0F_n_v/1487207386875.gif">
					</a>
				</div>
			</div>
		</section>

	<!-- 인기웹툰 04 -->
		<section class="info04" id="scroll04">
			<h2>인기 웹툰</h2>
			<div id="foin_pageid04">
				<ul> 
					<li>
						<div class="hi_list01">
								<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02kY%26bannerid=1T5V%26campaignid=0Crh');">
									<img src="http://cdn2.ad4989.co.kr:80/02V4/0C_r_h/1478165963719.png" border="0">
										<p>
											아내에게 애인이 생겼다<br>그것도 피자 배달원
										</p>
								</a>
						</div>
					</li>

					<li>
						<div class="hi_list01">
								<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02kY%26bannerid=1T5Z%26campaignid=0Cri');">
									<img src="http://cdn3.ad4989.co.kr:80/02V4/0C_r_i/1475233616208.jpg" border="0">
										<p>사장님 비서인<br>아내의 과거</p>
								</a>
						</div>
					</li>

					<li>
						<div class="hi_list01">
								<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02kY%26bannerid=1T5j%26campaignid=0Crj');">
									<img src="http://211.221.160.100:80/02V4/0C_r_j/1478165991815.png" border="0">
										<p>거지같은 인생,내 몸으로<br>새 삶을 살거야</p>
								</a>
						</div>
					</li>

					<li>
						<div class="hi_list01">
								<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02kY%26bannerid=1T5p%26campaignid=0Crk');">
									<img src="http://cdn1.ad4989.co.kr:80/02V4/0C_r_k/1479886622712.png" border="0">
										<p>내 글을 훔친 스승이<br>내 여자까지 빼앗아갔다.</p>
								</a>
						</div>
					</li>
				</ul>
			</div>
		</section>

	<!-- 주간 핫리포트 06 -->
		<section class="info6">
			<h2>주간 핫 리포트</h2>
			<a id="foin_pageid06" href="http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=027J%26bannerid=1RoY%26campaignid=0D2m" target="_blank">
				<img src="http://cdn2.ad4989.co.kr:80/02V4/0D2_m/1483602017071.png">
			</a>
		</section>

	<!-- Best 웹툰 Top6 07 -->
		<section class="info07" id="scroll04">
			<h2>Best 웹툰 TOP6</h2>
				<div id="foin_pageid07">
					<ul> 
						<li>
							<div class="hi_list02">
								<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02u0%26bannerid=1caU%26campaignid=0E4N');">
									<img src="http://114.108.185.138:80/02V4/0E4N/1483422572858...png" border="0">
										<p>남자,여자 둘다의<br> 성을 가진 사방지!</p>
								</a>
							</div>
						</li>

						<li>
							<div class="hi_list02">
								<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02u0%26bannerid=1caW%26campaignid=0E4O');">
									<img src="http://cdn2.ad4989.co.kr:80/02V4/0E4O/1483419690474.png" border="0">
										<p>정말 오늘<br>한번만이죠?</p>
								</a>
							</div>
						</li>

						<li>
							<div class="hi_list02">
								<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02u0%26bannerid=1caY%26campaignid=0E4P');">
									<img src="http://cdn3.ad4989.co.kr:80/02V4/0E4P/1483419911957.png" border="0">
										<p>부드럽게<br>해주세요..</p>
								</a>
							</div>
						</li>

						<li>
							<div class="hi_list02">
								<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02u0%26bannerid=1caa%26campaignid=0E4Q');">
									<img src="http://211.221.160.100:80/02V4/0E4Q/1485161329380.png" border="0">
										<p>네가 부르면<br>어디든 간다</p>
								</a>
							</div>
						</li>

						<li>
							<div class="hi_list02">
								<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02u0%26bannerid=1cac%26campaignid=0E4R');">
									<img src="http://cdn1.ad4989.co.kr:80/02V4/0E4R/1483420081164...png" border="0">
										<p>나를아껴주는<br>여상사 3명과..</p>
								</a>
							</div>
						</li>

						<li>
							<div class="hi_list02">
								<a href="javascript:goLink('http://ad.ad4989.co.kr/cgi-bin/PelicanC.dll?CLK?pageid=02u0%26bannerid=1cae%26campaignid=0E4S');">
									<img src="http://114.108.185.138:80/02V4/0E4S/1483420998362.png" border="0">
										<p>넌 내게<br>끌릴것이야</p>
								</a>
							</div>
						</li>
					</ul>
				</div>
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
</body>
</html>
