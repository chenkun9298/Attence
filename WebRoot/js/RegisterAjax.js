function FaceRegister() {
    setTimeout(function () {
        img = getFace();
        $.ajax({
            type:"post",
            url:"http://localhost:8080/Attence/user/register",//后台接口
            data:{
            	"imgId":$("#imgId").val(),
                "imgStr":img,
                "imgType":"BASE64"
            },
            dataType:"json",
            success:function (data) {
                console.log(data);
                var start = data["start"]
                if(start == true){
                	alert(data["msg"])
                }
                else{
                	alert(data["errorMsg"])
                    Facelogin();
                }
            },
            error:function () {
                alert("连接服务器失败")
            },
            async:true
        })
    },500);
}

