var d=new Date();
var month=d.getMonth()+1;//当前的月份
var days=d.getDate();//当前月的号数
var years=d.getFullYear();//当前的年份
var monthLength=12-month;
var years1=years+1;
var day = days+1;
var city_Id="";
var tag_Id="";
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
function next2(){
	$("#custform1").css("display","none");
	$("#custform2").css("display","none");
	$("#custform3").css("display","block");
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
}

$.get("region/list",function(data) {
//	alert(JSON.stringify(data));
	$("#fromtop").empty();
	for(var i=0;i<data.length;i++){
		$("#fromtop").append("<a href='javascript:void(0)' class='al1' onclick='checkRegion("+data[i].region_Id+")'><li id='l6'>"+data[i].region_Name+"</li></a>");
	}
},"json");
$.get("city/list",function(data) {
//	alert(JSON.stringify(data));
	$("#fromattric").empty();
	for(var i=0;i<data.length;i++){
		$("#fromattric").append("<a href='javascript:void(0)'  class='al2'  onclick='checkCity(this)' id='"+data[i].city_Id+"'><li id='l8'>"+data[i].city_Name+"</li></a>");
	}
},"json");

function checkRegion(obj){
	$.get("city/cityList?region_Id="+obj,function(data) {
		$("#fromattric").empty();
		for(var i=0;i<data.length;i++){
			$("#fromattric").append("<a href='javascript:void(0)'  class='al2'  onclick='checkCity(this)'  id='"+data[i].city_Id+"'><li id='l8'>"+data[i].city_Name+"</li></a>");
		}
	},"json");

}
function checkCity(obj){
	if($(obj).hasClass("bac")){
		$(obj).removeClass("bac");
	}else{
		$(obj).addClass("bac");
	}
}

$.get("tag/list",function(data) {
	$("#tracelike").empty();
	for(var i=0;i<data.length;i++){
		$("#tracelike").append("<div class='img1'  ><a onclick='checkImg(this)' href='javascript:void(0)'  id='"+data[i].tag_Id+"' ><img src='"+data[i].tag_Pic+"'></a></div>");
	}
},"json");

function checkImg(obj){
	if($(obj).hasClass("bod")){
		$(obj).removeClass("bod");
	}else{
		$(obj).addClass("bod");
	}
}

function checkPeoples(){
	var people = $("#peoples").val();
	var oldman = $("#oldman").val();
	if(people=="请选择"){
		$("#childs").empty();
		$("#oldman").empty();
		$("#childs").append("<option value='请选择'>请选择</option>");
		$("#oldman").append("<option value='请选择'>请选择</option>");
	}else{
		$("#childs").empty();
		$("#oldman").empty();
		$("#childs").append("<option value='无'>无</option>");
		$("#oldman").append("<option value='无'>无</option>");
		
		if(people<9){
			for(var i=1; i<=people;i++){
				$("#childs").append("<option value='"+i+"'>"+i+"人</option>");
				$("#oldman").append("<option value='"+i+"'>"+i+"人</option>");
			}
		}else{
			for(var i=1; i<=8;i++){
				$("#childs").append("<option value='"+i+"'>"+i+"人</option>");
				$("#oldman").append("<option value='"+i+"'>"+i+"人</option>");
			}
			$("#childs").append("<option value='9'>9人及以上</option>");
			$("#oldman").append("<option value='9'>9人及以上</option>");
		}
	}
}
function checkChilds(){
	var people = $("#peoples").val();
	var childs = $("#childs").val();
	if(people != "请选择"){
		$("#oldman").empty();
		$("#oldman").append("<option value='无'>无</option>");
		if(childs  != "无"){
			var str = people-childs;
			if(str==0){
				$("#oldman").append("");
			}else{
				alert(str);
				for(var i=1;i<=str;i++){
					$("#oldman").append("<option value='"+i+"'>"+i+"人</option>");
				}
			}
		}else{
			if(people < 9){
				for(var i=1;i<=people;i++){
					$("#oldman").append("<option value='"+i+"'>"+i+"人</option>");
				}
			}else{
				for(var i=1;i<=8;i++){
					$("#oldman").append("<option value='"+i+"'>"+i+"人</option>");
				}
				$("#oldman").append("<option value='9'>9人及以上</option>");
			}
		}
	}
}

function next1(){
	var mon=$("#month").val();
	var day=$("#day").val();
	var days=$("#days").val();
	var peoples=$("#peoples").val();
	if(mon=="月份" || day=="日期"){
		$("#pp2").html("你需要选择出行的月份日期");
	}else if(days=="请选择"){
		$("#pp2").html("你需要选择出行天数");
	}else if(peoples=="请选择"){
		$("#pp2").html("请选择你们的出行人数情况");
	}else{
		$("#custform1").css("display","none");
		$("#custform2").css("display","block");
		$("#custform3").css("display","none");
	}
}

function commitNeed(){
	var mon=$("#month").val();
	var day=$("#day").val();
	var days=$("#days").val();
	var peoples=$("#peoples").val();
	var childs=$("#childs").val();
	var oldman=$("#oldman").val();
	if(childs=="无"){
		childs=0;
	}
	if(oldman=="无"){
		oldman=0;
	}
	var old = childs+oldman;
	var people=peoples-old;
	if(old==peoples){
		var scenic_Level=4;
	}else if(people>=old && old!=0){
		var scenic_Level=2;
	}else if(people<old){
		var scenic_Level=3;
	}else if(old==0){
		var scenic_Level=1;
	}
	$(".bod").each(function(){
		tag_Id+=$(this).attr('id');
	});
	$(".bac").each(function(){
		city_Id+=$(this).attr('id');
	});
	 window.open('page/success.jsp?scenic_Level='+scenic_Level+'&city_Id='+city_Id+'&tag_Id='+tag_Id,'_self');
}