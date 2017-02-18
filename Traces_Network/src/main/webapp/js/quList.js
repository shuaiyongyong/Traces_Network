	
	$(".inline-btn").mouseover(function(){
	  $(this).css("color","red");
	});
	
	$(".inline-btn").mouseout(function(){
	  $(".inline-btn").css("color","");
	});
	
	$(".tabs-b").click( function () { 
		$(this).css("background-color",""); 
		$(".tabs-a").css("background-color","#ccc");
	});
	
	$(".answer").mouseover(function(){
		$(this).css("color","blue");
	});
		
	$(".answer").mouseout(function(){
		$(".answer").css("color","");
	});
	