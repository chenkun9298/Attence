function Facelogin() {
    setTimeout(function () {
        img = getFace();
        $.ajax({
            type:"post",
            url:"http://localhost:8080/Attence/user/login",//后台接口
            data:{
                "imgStr":img,
                "imgType":"BASE64"
            },
            dataType:"json",
            success:function (data) {
                console.log(data);
                var start = data["start"]
                if(start == true){
                	alert("用户id:"+data["userId"]+"登录"+data["msg"])
                	
                	window.location.href=("employee/Clockin.jsp?=userId"+data["userId"])
                		
        			
                }
                else{
                	console.log(data["errorMsg"])
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

