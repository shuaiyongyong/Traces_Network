
	

	$(".inline-btn").click(function(){
		$(".inline-btn").eq($(this).index()).addClass("active").siblings().removeClass("active");
	})

	$(".inline-btn").mouseover(function(){
	  $(this).css("background-color","red");
	});
	
	$(".inline-btn").mouseout(function(){
		  $(".inline-btn").css("background-color","");
		});
	
	/*$(".inline-btn1").mouseover(function(){
		  $(this).css("background-color","red");
	});
		
	$(".inline-btn1").click(function(){
		 $(this).css("background-color","red");
	});
		
	$(".inline-btn1").mouseout(function(){
		 $(".inline-btn1").css("background-color","");
	});*/
	
	$(".answer").mouseover(function(){
		$(this).css("color","blue");
	});
		
	$(".answer").mouseout(function(){
		$(".answer").css("color","");
	});
	

	$.get("qu/list",function(data){
		var askStr;
		var askTime;
		var askId;
		$("#list-question").empty();
		for(var i=0;i<data.length;i++){
			for(var j=0;j<data[i].askInfo.length;j++){
				askStr=data[i].askInfo[j].ask_Content;
				askTime=data[i].askInfo[j].ask_time;
				if(data[i].user_Id==data[i].askInfo[j].user_Id){
					askId = data[i].askInfo[j].ask_Id;
					$(".right-bottom #list-question").append("<div class='media-list-question'><a class='c-img'><img src='images/quList01.jpg' width='48px' height='48px'></a>"
							+"<div class='content'><a id='User_UserName'>"+data[i].user_UserName+"</a>&nbsp;&nbsp;<span class='jd'>提问：</span>"
					        +"<a id='ask_Content' class='answer' href='page/quDetail.jsp?askId="+askId+"'>"+askStr+"</a></div>"
					        +"<span id='ask_time' class='date'><span class='rq'>日期：</span>"+askTime+"</span>"
					        +"<div class='tag-list'>"
					        +"</div></div>"
					       );
					$.get("qu/listTag?id="+askId,function(data1){
						$(".tag-list").empty();
						for(var i=0;i<data1.length;i++){
							for(var j=0;j<data1[i].tagInfo.length;j++){
								tag=data1[i].tagInfo[j].tagName;
								if(data1[i].tag_Id==data1[i].tagInfo[j].tag_Id){
									$(".tag-list").append(
									        " <button class='tag' id='tagName'>"+tag+"</button>&nbsp;&nbsp;&nbsp;"
									        );
								}
							}
							
						}
					},"json");
				}
			}
			
		}
	},"json");
	
	
function list(){
	$.get("qu/list",function(data){
		var askStr;
		var askTime;
		var askId;
		$("#list-question").empty();
		for(var i=0;i<data.length;i++){
			for(var j=0;j<data[i].askInfo.length;j++){
				askStr=data[i].askInfo[j].ask_Content;
				askTime=data[i].askInfo[j].ask_time;
				if(data[i].user_Id==data[i].askInfo[j].user_Id){
					askId = data[i].askInfo[j].ask_Id;
					$(".right-bottom #list-question").append("<div class='media-list-question'><a class='c-img'><img src='images/quList01.jpg' width='48px' height='48px'></a>"
							+"<div class='content'><a id='User_UserName'>"+data[i].user_UserName+"</a>&nbsp;&nbsp;<span class='jd'>提问：</span>"
					        +"<a id='ask_Content' class='answer' href='page/quDetail.jsp?askId="+askId+"'>"+askStr+"</a></div>"
					        +"<span id='ask_time' class='date'><span class='rq'>日期：</span>"+askTime+"</span>"
					        +"<div class='tag-list'>"
					        +"</div></div>"
					       );
					$.get("qu/listTag?id="+askId,function(data1){
						$(".tag-list").empty();
						for(var i=0;i<data1.length;i++){
							for(var j=0;j<data1[i].tagInfo.length;j++){
								tag=data1[i].tagInfo[j].tagName;
								if(data1[i].tag_Id==data1[i].tagInfo[j].tag_Id){
									$(".tag-list").append(
									        " <button class='tag' id='tagName'>"+tag+"</button>&nbsp;&nbsp;&nbsp;"
									        );
								}
							}
							
						}
					},"json");
				}
			}
			
		}
	},"json");
}
	

function listByClick(){
	$.get("qu/listByClick",function(data){
		var askStr;
		var askTime;
		var askId;
		$("#list-question").empty();
		for(var i=0;i<data.length;i++){
			for(var j=0;j<data[i].askInfo.length;j++){
				askStr=data[i].askInfo[j].ask_Content;
				askTime=data[i].askInfo[j].ask_time;
				if(data[i].user_Id==data[i].askInfo[j].user_Id){
					askId = data[i].askInfo[j].ask_Id;
					$(".right-bottom #list-question").append("<div class='media-list-question'><a class='c-img'><img src='images/quList01.jpg' width='48px' height='48px'></a>"
							+"<div class='content'><a id='User_UserName'>"+data[i].user_UserName+"</a>&nbsp;&nbsp;<span class='jd'>提问：</span>"
					        +"<a id='ask_Content' class='answer' href='page/quDetail.jsp?askId="+askId+"'>"+askStr+"</a></div>"
					        +"<span id='ask_time' class='date'><span class='rq'>日期：</span>"+askTime+"</span>"
					        +"<div class='tag-list'>"
					        +"</div></div>"
					       );
					$.get("qu/listTag?id="+askId,function(data1){
						$(".tag-list").empty();
						for(var i=0;i<data1.length;i++){
							for(var j=0;j<data1[i].tagInfo.length;j++){
								tag=data1[i].tagInfo[j].tagName;
								if(data1[i].tag_Id==data1[i].tagInfo[j].tag_Id){
									$(".tag-list").append(
									        " <button class='tag' id='tagName'>"+tag+"</button>&nbsp;&nbsp;&nbsp;"
									        );
								}
							}
							
						}
					},"json");
				}
			}
			
		}
	},"json")
}

function listByStatus1(){
	$.get("qu/listBySt1",function(data){
		var askStr;
		var askTime;
		var askId;
		$("#list-question").empty();
		for(var i=0;i<data.length;i++){
			for(var j=0;j<data[i].askInfo.length;j++){
				askStr=data[i].askInfo[j].ask_Content;
				askTime=data[i].askInfo[j].ask_time;
				if(data[i].user_Id==data[i].askInfo[j].user_Id){
					askId = data[i].askInfo[j].ask_Id;
					$(".right-bottom #list-question").append("<div class='media-list-question'><a class='c-img'><img src='images/quList01.jpg' width='48px' height='48px'></a>"
							+"<div class='content'><a id='User_UserName'>"+data[i].user_UserName+"</a>&nbsp;&nbsp;<span class='jd'>提问：</span>"
					        +"<a id='ask_Content' class='answer' href='page/quDetail.jsp?askId="+askId+"'>"+askStr+"</a></div>"
					        +"<span id='ask_time' class='date'><span class='rq'>日期：</span>"+askTime+"</span>"
					        +"<div class='tag-list'>"
					        +"</div></div>"
					       );
					$.get("qu/listTag?id="+askId,function(data1){
						$(".tag-list").empty();
						for(var i=0;i<data1.length;i++){
							for(var j=0;j<data1[i].tagInfo.length;j++){
								tag=data1[i].tagInfo[j].tagName;
								if(data1[i].tag_Id==data1[i].tagInfo[j].tag_Id){
									$(".tag-list").append(
									        " <button class='tag' id='tagName'>"+tag+"</button>&nbsp;&nbsp;&nbsp;"
									        );
								}
							}
							
						}
					},"json");
				}
			}
			
		}
	},"json")
}
	
function listByStatus2(){
	$.get("qu/listBySt2",function(data){
		var askStr;
		var askTime;
		var askId;
		$("#list-question").empty();
		for(var i=0;i<data.length;i++){
			for(var j=0;j<data[i].askInfo.length;j++){
				askStr=data[i].askInfo[j].ask_Content;
				askTime=data[i].askInfo[j].ask_time;
				if(data[i].user_Id==data[i].askInfo[j].user_Id){
					askId = data[i].askInfo[j].ask_Id;
					$(".right-bottom #list-question").append("<div class='media-list-question'><a class='c-img'><img src='images/quList01.jpg' width='48px' height='48px'></a>"
							+"<div class='content'><a id='User_UserName'>"+data[i].user_UserName+"</a>&nbsp;&nbsp;<span class='jd'>提问：</span>"
					        +"<a id='ask_Content' class='answer' href='page/quDetail.jsp?askId="+askId+"'>"+askStr+"</a></div>"
					        +"<span id='ask_time' class='date'><span class='rq'>日期：</span>"+askTime+"</span>"
					        +"<div class='tag-list'>"
					        +"</div></div>"
					       );
					$.get("qu/listTag?id="+askId,function(data1){
						$(".tag-list").empty();
						for(var i=0;i<data1.length;i++){
							for(var j=0;j<data1[i].tagInfo.length;j++){
								tag=data1[i].tagInfo[j].tagName;
								if(data1[i].tag_Id==data1[i].tagInfo[j].tag_Id){
									$(".tag-list").append(
									        " <button class='tag' id='tagName'>"+tag+"</button>&nbsp;&nbsp;&nbsp;"
									        );
								}
							}
							
						}
					},"json");
				}
			}
			
		}
	},"json")
}	

	
	
	
	
	
	
	
	
	
	