/* MAIN.JS */
/*페이지 버튼 관련 스크립트*/


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