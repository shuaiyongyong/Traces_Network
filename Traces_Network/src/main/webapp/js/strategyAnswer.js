//加载全部的攻略
$.get("strategyAnswer/message",function(data){
	alert(data);
	/*for(var i=0;i<data.length;i++){
	
		
		$(".article_top .article_top_left").empty();
		$(".article_top .article_top_left").append('<p>'+data[0].user_UserName+'</p>'+
                +'<img src="'+data[0].user_Pic+'">'+
               +'<p>注册：'+data[0].user_Date+'</p>');
		
		$(".article_top .article_top_right .article_top_right_top").empty();
		$(".article_top .article_top_right .article_top_right_top").append('<li class="li1">'+data[0].strategyInfo[0].strategyInfo_AddTime+'</li>');
		
		$(".article_top .article_top_right .article_top_right_center").append('<img src="'+data[0].strategyInfo[0].strategyInfo_Picture+'">');
	}*/
},"json");