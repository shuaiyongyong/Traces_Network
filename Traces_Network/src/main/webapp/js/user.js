//加载全部的用户信息
$.get("user/all",function(data){
//	alert(JSON.stringify(data[1]));
	for(var i=0;i<data.length;i++){
//		alert(data[i]);
//		alert(JSON.stringify(data[i]));
		$(".article_bottom .d1").empty();
		$(".article_bottom .d1").append('<a href="page/jingxuanxiangqing.jsp"><img src="'+data[i].user_Pic+'"></a>');
	}
},"json");


