var max = $("#number").text();
function checkInfo() {
	if($("#number").text()==0){
		$(".question").val($(".question").val().substr(0,max));
		return;
	}
	$("#number").text(max - $(".question").val().length);
}
