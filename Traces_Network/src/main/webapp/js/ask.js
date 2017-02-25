var max = $("#number").text();
function checkInfo() {
	$("#number").text(max - $(".question").val().length);
	if($("#number").text()<=0){
		$(".question").val($(".question").val().substr(0,max));
	}
	$("#number").text(max - $(".question").val().length);
}
