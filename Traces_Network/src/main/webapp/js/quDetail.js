
		
		 function showblock(){
			 $(".area").toggle();
			 $(".right-top").toggleClass('long');
			 $(".right-bottom").toggleClass('long2');
		 }
		 
//		 function showComment(obj){
//			 $(obj).parent().parent().find(".add-comments-editor").toggle();
//			 
//		 }
		 
$.get("qu/listDetail"+location.href.substring(location.href.indexOf("?")),function(data){
	var askStr;
	var askTime;
//	var askId;
	$(".askDetail").empty();
	for(var i=0;i<data.length;i++){
		for(var j=0;j<data[i].askInfo.length;j++){
			askStr=data[i].askInfo[j].ask_Content;
			askTime=data[i].askInfo[j].ask_time;
			/*if(data[i].user_Id==data[i].askInfo[j].user_Id){*/
				/*askId = data[i].askInfo[j].ask_Id;*/
				$(".askDetail").append("<a class='img1'><img width='48' height='48' src='images/quDetailA01.png'></a>"
					+"<div class='txt'>"
					+"<div class='title' id='ask_Content'>"+askStr+"</div>"
					+"<ul class='list-a'>"
					+"<li><a class='fc3' id='userName'>"+data[i].userName+"</a></li>"
					+"<li>|</li>"
					+"<li id='ask_time'>"+askTime+"</li>"
					+"</ul>"
					+"</div>"
				       );
				
		}
		
	}
},"json");	

$.get("qu/listAnswerTag"+location.href.substring(location.href.indexOf("?")),function(data){
		$(".tag-list").empty();
		for(var i=0;i<data.length;i++){
			for(var j=0;j<data[i].tagInfo.length;j++){
				tag=data[i].tagInfo[j].tagName;
				if(data[i].tag_Id==data[i].tagInfo[j].tag_Id){
					$(".tag-list").append(
							" <button>"+tag+"</button>&nbsp;&nbsp;&nbsp;"
					);
				}
			}
			
		}
},"json");

$.get("qu/listAnswerContent"+location.href.substring(location.href.indexOf("?")),function(data){
	$(".comment_list").empty();
	var contentStr;
	var answerTime;
	/*alert(data[i].answer.length);*/
	for(var i=0;i<data.length;i++){
		for(var j=0;j<data[i].answer.length;j++){
			contentStr=data[i].answer[j].answer_Content;
			answerTime=data[i].answer[j].tagName;
			if(data[i].user_Id==data[i].answer[j].user_Id){
				alert(contentStr);
				$(".comment_list").append("<a class='img2'><img width='48' height='48' src='images/quDetailW02.jpg'></a>"
					+"<div class='c-txt'>"
					+"<div class='info-list'>"
					+"<a class='item name link2'>"+data[i].userName+"</a>&nbsp;&nbsp;&nbsp; " 
					+"<span class='item'>"+answerTime+"</span>"
					+"</div>"
					+"<div class='content js_content'>"+contentStr+"</div>"
					+"<div class='fn-list'>"
					+"<ul class='fn'>"
					+"<li class='like js_like'><span><img src='images/zan.jpg'>"
					+"<i class='like' title='赞'></i> 赞</span>"
					+"</li>" 
					+"</ul>"
					+"</div>"
					+"</div>");
			}
		}
		
	}
},"json");




		 
		