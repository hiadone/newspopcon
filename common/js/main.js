/* MAIN.JS */

$(document).ready(function() {
	$("#int-pagination").each(function() {
		var This = this;
		var select_no = 0;
		var count = $("> p > a.int-pagination-button", this).length; 
		var Select_Action = function(no) {
			$("> p > a.int-pagination-button:eq(" + no + ")", This).each(function() {
				select_no = no;
				var href = $(this).attr("href");
				if(href) {
					$("#int-page-iframe-view").each(function() {
						$(this).get(0).src = href;
					});
				}
				if(!$(this).hasClass("select")) $(this).addClass("select");
				$(this).siblings().removeClass("select");
			});
		};
		
		$("> p > a.int-pagination-button", this).each(function(i) {
			$(this).unbind("click").bind("click", function() {
				Select_Action(i);
				return false;
			});
		});
		$("> p > a.prev", this).each(function() {
			$(this).unbind("click").bind("click", function() {
				if(select_no - 1 >= 0) {
					select_no--;
				}
				Select_Action(select_no);
				return false;
			});
		});
		$("> p > a.next", this).each(function() {
			$(this).unbind("click").bind("click", function() {
				if(select_no + 1 < count) {
					select_no++;
				}
				Select_Action(select_no);
				return false;
			});
		});
	});
});

/* END JS */