<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <title>Document</title>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
 </head>
 <body>
  

<a onclick="javascript:fn_login()">[로그인하자]</a>


<br><br><br><br>

<form id="regForm" name="regForm" method="post"  action="inja-dev2.asp" target="loginIframe">
  <input type="hidden" id="callback_url2" name="callback_url2" value="inja-dev.asp">
  <input type="hidden" id="callback_url" name="callback_url" value="http://www.with-me.co.kr/include/loginPopup.asp">

</form>
<form id="fm_popup" name="fm_popup" method="post">
  <input type="text" id="url_popup" name="url_popup">
</form>
<iframe name="loginIframe" id="loginIframe" src="about:blank" height="0px" width="0px" border="0" frameborder='0' scrolling='no' marginwidth='0' marginheight='0'></iframe>




<script>
var glVal = false;

function fn_login() {
	  glVal = true;
	  //document.getElementById("regForm").setAttribute("target", "comIframe");
	  //document.getElementById("regForm").setAttribute("action", "/m/include/loginProc.asp").submit();
   // $("#regForm").attr('target','loginIframe');
	//$("#regForm").attr('action','inja-dev2.asp');
	//$("#regForm").submit();

	document.regForm.submit();


		//openToken(function a(u) {
		//	var option = "width=370, height=200, resizeble=no, scrollbars=no, status=no;"
		//	window.open(u, "", option);
		//});
	}



function getSubmitResult(status, data) {
    if(glVal) {
      if(status == "200") {
        //var url = "http://splogin.shinsegaepoint.com/login/servlet/withme/withmelogin.do?action=withmeweblogin_init&access_token=" + data;
        //var url = "https://splogin.shinsegaepoint.com:443/login/servlet/withme/withmelogin.do?action=withmeweblogin_init&access_token=" + data;
        //window.open(url, "", "width=450, height=380, left=100, top=50, resizeble=no, scrollbars=no, status=no"); 
        //window.open(url, "", "toolbar=no, menubar=no, resizeble=no, scrollbars=no, status=no, width=450, height=380, left=100, top=50");
        openPopup(status, data);
      } else {
        alert(status);
      }
    }
  }

  function openPopup(status, data) {
    var w = 500;
    var h = 556;
    var url = "https://shinsegaepoint.emart.com/login/servlet/withme/withmelogin.do?action=withmelogin_init&access_token=" + data;
    //var url = "https://splogin.shinsegaepoint.emart.com/login/servlet/withme/withmelogin.do?action=withmelogin_init&access_token=" + data;
    
    document.getElementById("url_popup").value = data;
    var width;
    var height;
    $("#url_popup").val(data);
    
    var dualScreenLeft = window.screenLeft != undefined ? window.screenLeft : screen.left;
	var dualScreenTop = window.screenTop != undefined ? window.screenTop : screen.top;
	width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
	height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;

		var left = ((width / 2) - (w / 2)) + dualScreenLeft;
		var top = ((height / 2) - (h / 2)) + dualScreenTop;
		
		var left = 0;
		var top = 0;
		
    //var newWindow =
	
	// window.open(url, '', 'scrollbars=yes, width=' + w + ', height=' + h + ', top=' + top + ', left=' + left);
	window.alert("팝업차잉야!!!");
    
/*		if (window.focus) {
			newWindow.focus();
		}*/
  }




</script>
 </body>
</html>
