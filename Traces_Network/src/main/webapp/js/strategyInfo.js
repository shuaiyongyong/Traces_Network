$(function (){
	getProducts(1);
})
//加载全部的攻略
$.get("strategyInfo/all",function(data){
	for(var i=0;i<data.length;i++){
		//alert(data);
		$(".article_botton .d1").empty();
		$(".article_botton .d1").append('<a href="page/jingxuanxiangqing.jsp"><img src="'+data[i].strategyInfo_Picture+'"></a>'+
                '<a href="page/jingxuanxiangqing.jsp"><p>'+data[i].strategyInfo_Title+'</p></a>');
	}
},"json");

//加载各位攻略分页
function check(obj){
	alert(obj);
	$.get("strategyInfo/part?type="+obj,function(data){
		for(var i=0;i<data.length;i++){
			//alert(data);
			$(".article_botton .d1").empty();
			$(".article_botton .d1").append('<a href="page/jingxuanxiangqing.jsp"><img src="'+data[i].strategyInfo_Picture+'"></a>'+
	                '<a href="page/jingxuanxiangqing.jsp"><p>'+data[i].strategyInfo_Title+'</p></a>');
		}
	},"json");
}


//实现攻略分页
function getProducts(pageNum) {
	$.get("strategyInfo/list?page=" + pageNum+"&rows=12",function(data) {
		$(".article_botton").empty();
		var product = data.rows;
		alert(product);
		for (var i = 0; i < product.length; i++) {
			$(".article_botton").append('<div class="d1"><a href="page/jingxuanxiangqing.jsp"><img src="'+product[i].strategyInfo_Picture+'"></a>'+
	                '<a href="page/jingxuanxiangqing.jsp"><p>'+product[i].strategyInfo_Title+'</p></a></div>');
		}
		$("#pList").empty();
		$("#pList").append("当前页数:["+ data.currPage+ "/"+ data.totalPage+ "]&nbsp;&nbsp; "
				+ "<a href='javascript:void(0)' onclick='getProducts(1)'>首页</a>&nbsp;&nbsp;"
				+ "<a href='javascript:void(0)' onclick='getProducts("+ (data.currPage - 1)+ ")'>上一页</a>&nbsp;&nbsp; "
				+ "<a href='javascript:void(0)' onclick='getProducts("+ (data.currPage + 1)+ ")'>下一页</a>&nbsp;&nbsp;"
				+ "<a href='javascript:void(0)' onclick='getProducts("+ data.totalPage+ ")'>末页</a>&nbsp;&nbsp;");
	}, "json");
}

