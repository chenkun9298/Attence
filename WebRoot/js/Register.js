$(function(){
	$("#face-box").show();
    openUserMedia();
	var register = $("#register").click(function(){
		alert("开始注册")
        FaceRegister();
	})
		
})
