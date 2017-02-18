<<<<<<< HEAD
var d=new Date();
var month=d.getMonth()+1;//当前的月份
var days=d.getDate();//当前月的号数
var years=d.getFullYear();//当前的年份
var monthLength=12-month;
var years1=years+1;
var day = days+1;
$(function(){
	$("#custform1").css("display","block");
	$("#custform2").css("display","none");
	$("#custform3").css("display","none");
	$("#year").append("<option value='"+years+"'>"+years+"年</option><option value='"+years1+"'>"+years1+"年</option>");
	for(var i=0;i<=monthLength;i++){
		var months=month+i;
		$("#month").append("<option value='"+months+"'>"+months+"月</option>");
	}
});
function checkYear(){
	$("#month").empty();
	$("#month").append("<option value='月份'>月份</option><option value='不确定'>不确定</option>");
	var year=$("#year").val();
	if(year==years){
		for(var i=0;i<=monthLength;i++){
			var months=month+i;
			$("#month").append("<option value='"+months+"'>"+months+"月</option>");
		}
	}else{
		for(var i=1;i<=12;i++){
			$("#month").append("<option value='"+i+"'>"+i+"月</option>");
			var months=i;
		}
	}
	
}
function checkMon(){
	var year=$("#year").val();
	var mon=$("#month").val();
	$("#day").empty();
	$("#day").append("<option value='日期'>日期</option><option value='不确定'>不确定</option>");
	if(mon=="不确定"){
		$("#day").append("");
	}else if(year==years && mon==month){
		if(year%4==0&&year%100==0){
			if(mon==1||mon==3||mon==5||mon==7||mon==8||mon==10||mon==12){
				for(var i=day;i<=31;i++){
					$("#day").append("<option value='"+i+"'>"+i+"日</option>");
				}
			}else if(mon==4||mon==6||mon==9||mon==11){
				for(var i=day;i<=30;i++){
					$("#day").append("<option value='"+i+"'>"+i+"日</option>");
				}
			}else if(mon=2){
				for(var i=day;i<=29;i++){
					$("#day").append("<option value='"+i+"'>"+i+"日</option>");
				}
			}
		}else{
			if(mon==1||mon==3||mon==5||mon==7||mon==8||mon==10||mon==12){
				for(var i=day;i<=31;i++){
					$("#day").append("<option value='"+i+"'>"+i+"日</option>");
				}
			}else if(mon==4||mon==6||mon==9||mon==11){
				for(var i=day;i<=30;i++){
					$("#day").append("<option value='"+i+"'>"+i+"日</option>");
				}
			}else if(mon=2){
				for(var i=day;i<=28;i++){
					$("#day").append("<option value='"+i+"'>"+i+"日</option>");
				}
			}
		}
	}else if(year%4==0&&year%100==0){
		if(mon==1||mon==3||mon==5||mon==7||mon==8||mon==10||mon==12){
			for(var i=1;i<=31;i++){
				$("#day").append("<option value='"+i+"'>"+i+"日</option>");
			}
		}else if(mon==4||mon==6||mon==9||mon==11){
			for(var i=1;i<=30;i++){
				$("#day").append("<option value='"+i+"'>"+i+"日</option>");
			}
		}else if(mon=2){
			for(var i=1;i<=29;i++){
				$("#day").append("<option value='"+i+"'>"+i+"日</option>");
			}
		}
	}else{
		if(mon==1||mon==3||mon==5||mon==7||mon==8||mon==10||mon==12){
			for(var i=1;i<=31;i++){
				$("#day").append("<option value='"+i+"'>"+i+"日</option>");
			}
		}else if(mon==4||mon==6||mon==9||mon==11){
			for(var i=1;i<=30;i++){
				$("#day").append("<option value='"+i+"'>"+i+"日</option>");
			}
		}else if(mon=2){
			for(var i=1;i<=28;i++){
				$("#day").append("<option value='"+i+"'>"+i+"日</option>");
			}
		}
	}
}
function next1(){
	$("#custform1").css("display","none");
	$("#custform2").css("display","block");
	$("#custform3").css("display","none");
}
function next2(){
	$("#custform1").css("display","none");
	$("#custform2").css("display","none");
	$("#custform3").css("display","block");
}
function commitNeed(){
	 window.open('page/success.jsp','_self');
}
function return1(){
	$("#custform1").css("display","block");
	$("#custform2").css("display","none");
	$("#custform3").css("display","none");
}
function return2(){
	$("#custform1").css("display","none");
	$("#custform2").css("display","block");
	$("#custform3").css("display","none");
}
function check(){
	$(".al2").css("color","black");
	$(".al2").css("background-color","blue");
=======
var d=new Date();
var month=d.getMonth()+1;//当前的月份
var days=d.getDate();//当前月的号数
var years=d.getFullYear();//当前的年份
var monthLength=12-month;
var years1=years+1;
var day = days+1;
$(function(){
	$("#custform1").css("display","block");
	$("#custform2").css("display","none");
	$("#custform3").css("display","none");
	$("#year").append("<option value='"+years+"'>"+years+"年</option><option value='"+years1+"'>"+years1+"年</option>");
	for(var i=0;i<=monthLength;i++){
		var months=month+i;
		$("#month").append("<option value='"+months+"'>"+months+"月</option>");
	}
});
function checkYear(){
	$("#month").empty();
	$("#month").append("<option value='月份'>月份</option><option value='不确定'>不确定</option>");
	var year=$("#year").val();
	if(year==years){
		for(var i=0;i<=monthLength;i++){
			var months=month+i;
			$("#month").append("<option value='"+months+"'>"+months+"月</option>");
		}
	}else{
		for(var i=1;i<=12;i++){
			$("#month").append("<option value='"+i+"'>"+i+"月</option>");
			var months=i;
		}
	}
	
}
function checkMon(){
	var year=$("#year").val();
	var mon=$("#month").val();
	$("#day").empty();
	$("#day").append("<option value='日期'>日期</option><option value='不确定'>不确定</option>");
	if(mon=="不确定"){
		$("#day").append("");
	}else if(year==years && mon==month){
		if(year%4==0&&year%100==0){
			if(mon==1||mon==3||mon==5||mon==7||mon==8||mon==10||mon==12){
				for(var i=day;i<=31;i++){
					$("#day").append("<option value='"+i+"'>"+i+"日</option>");
				}
			}else if(mon==4||mon==6||mon==9||mon==11){
				for(var i=day;i<=30;i++){
					$("#day").append("<option value='"+i+"'>"+i+"日</option>");
				}
			}else if(mon=2){
				for(var i=day;i<=29;i++){
					$("#day").append("<option value='"+i+"'>"+i+"日</option>");
				}
			}
		}else{
			if(mon==1||mon==3||mon==5||mon==7||mon==8||mon==10||mon==12){
				for(var i=day;i<=31;i++){
					$("#day").append("<option value='"+i+"'>"+i+"日</option>");
				}
			}else if(mon==4||mon==6||mon==9||mon==11){
				for(var i=day;i<=30;i++){
					$("#day").append("<option value='"+i+"'>"+i+"日</option>");
				}
			}else if(mon=2){
				for(var i=day;i<=28;i++){
					$("#day").append("<option value='"+i+"'>"+i+"日</option>");
				}
			}
		}
	}else if(year%4==0&&year%100==0){
		if(mon==1||mon==3||mon==5||mon==7||mon==8||mon==10||mon==12){
			for(var i=1;i<=31;i++){
				$("#day").append("<option value='"+i+"'>"+i+"日</option>");
			}
		}else if(mon==4||mon==6||mon==9||mon==11){
			for(var i=1;i<=30;i++){
				$("#day").append("<option value='"+i+"'>"+i+"日</option>");
			}
		}else if(mon=2){
			for(var i=1;i<=29;i++){
				$("#day").append("<option value='"+i+"'>"+i+"日</option>");
			}
		}
	}else{
		if(mon==1||mon==3||mon==5||mon==7||mon==8||mon==10||mon==12){
			for(var i=1;i<=31;i++){
				$("#day").append("<option value='"+i+"'>"+i+"日</option>");
			}
		}else if(mon==4||mon==6||mon==9||mon==11){
			for(var i=1;i<=30;i++){
				$("#day").append("<option value='"+i+"'>"+i+"日</option>");
			}
		}else if(mon=2){
			for(var i=1;i<=28;i++){
				$("#day").append("<option value='"+i+"'>"+i+"日</option>");
			}
		}
	}
}
function next1(){
	$("#custform1").css("display","none");
	$("#custform2").css("display","block");
	$("#custform3").css("display","none");
}
function next2(){
	$("#custform1").css("display","none");
	$("#custform2").css("display","none");
	$("#custform3").css("display","block");
}
function commitNeed(){
	 window.open('page/success.jsp','_self');
}
function return1(){
	$("#custform1").css("display","block");
	$("#custform2").css("display","none");
	$("#custform3").css("display","none");
}
function return2(){
	$("#custform1").css("display","none");
	$("#custform2").css("display","block");
	$("#custform3").css("display","none");
}
function check(){
	$(".al2").css("color","black");
	$(".al2").css("background-color","blue");
>>>>>>> e3a68c0b8eb64352c58f1f7c4181734cce96194c
}