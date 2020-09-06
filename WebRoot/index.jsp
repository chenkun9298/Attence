<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
   
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>公司首页</title>
    <!--Bootstrap  css-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!--Common 样式-->
    <link rel="stylesheet" href="css/common.css">
    <!--index-->
    <link rel="stylesheet" href="css/index.css">
    
</head>
<body>
<!--header start-->
<header class="header">
    <div class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="index.jsp" class="navbar-brand"><img src="images/logo.png" alt=""></a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    
                    <li class="dropdown">
                        
                        
                    </li>
                    <li class="dropdown">
                        
                        <ul class="dropdown-menu dropdown-menu-left" role="menu" style="left: -60px;">
                            <li></li>
                            <li class="divider" role="presentation"></li>
                            <li></li>
                        </ul>
                    </li>
                    <li></li>
                    <li></li>
                    <li><a href="login.jsp">后台登陆</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<!--header end-->
<!--slide start-->
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <!--<li data-target="#myCarousel" data-slide-to="5"></li>-->
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="img/2.jpg" alt="First slide">
        </div>
        <div class="item">
            <img src="img/2.jpg" alt="Second slide">
        </div>
        <div class="item">
            <img src="img/3.jpg" alt="Third slide">
        </div>
        <div class="item">
            <img src="img/4.jpg" alt="Fourth slide">
        </div>
        <div class="item">
            <img src="img/5.jpg" alt="Fifth slide">
        </div>
    </div>
</div>
<!--slide end-->
<!--content start-->
<div id="content">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-lg-3 ">
                <div class="icon-img bg-icon-img ">
                	<a id="center" href="elogin.do">
                		<img src="img/1-1.png" alt="签到"><br><span>打卡</span>
                	</a>
                </div>

            </div>
            <div class="col-xs-12 col-sm-6  col-lg-3">
                <div class="icon-img bg-icon-img ">
                	<a id="e-business" href="employee/absent.jsp">
                		<img src="img/2-1.png" alt="请假"><br><span>请假</span>
                	</a>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-lg-3">
                <div class="icon-img bg-icon-img ">
                	<a id="wisdom" href="eregister.do">
                		<img src="img/3-1.png" alt="资料"><br><span>资料</span>
                	</a>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-lg-3">
                <div class="icon-img">
                	<a id="terminal" href="elogin.do">
                		<img src="img/4-1.png" alt="签退"><br><span>退出</span>
                	</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!--content end-->
<!--footer start-->
<div id="footer">
    <div class="container">
        <div ><span>     湖南理工学院 Copyright © 2020-2030</span></div>
    </div>
</div>
<!--footer end-->
</body>
<script type="text/javascript" src="jquery-3.3.1/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/hover-dropdown.js"></script>
<!--每隔3秒自动播放轮播图-->
<script>
	
    $(function () {
        $("#myCarousel").carousel({
            interval: 3000
        });
    });
</script>
<!--hover 更换图标图片和文字颜色-->
<script>
    //退出到顶层
    if (window != top){
    	top.location.href = "index.jsp";
    	
  		  alert("登陆身份失效，请重新登陆");
    }
    $(document).ready(function () {
        var newImage = new Image();//预载入图片
        var oldImage = $("#terminal img").attr("src");
        newImage.src = 'img/4.png';
        $("#terminal").hover(function () {//鼠标滑过切换图片
            $("#terminal img").attr("src", newImage.src);
            $("#terminal span").addClass("font-color");
        }, function () {
            $("#terminal img").attr("src", oldImage);
            $("#terminal span").removeClass("font-color")
        });
    });
   
    $(document).ready(function () {
        var newImage = new Image();//预载入图片
        var oldImage = $("#center img").attr("src");
        newImage.src = 'img/1.png';
        $("#center").hover(function () {//鼠标滑过切换图片
            $("#center img").attr("src", newImage.src);
            $("#center span").addClass("font-color");
        }, function () {
            $("#center img").attr("src", oldImage);
            $("#center span").removeClass("font-color");
        });
    });
   
    $(document).ready(function () {
        var newImage = new Image();//预载入图片
        var oldImage = $("#wisdom img").attr("src");
        newImage.src = 'img/3.png';
        $("#wisdom").hover(function () {//鼠标滑过切换图片
            $("#wisdom img").attr("src", newImage.src);
            $("#wisdom span").addClass("font-color");
        }, function () {
            $("#wisdom img").attr("src", oldImage);
            $("#wisdom span").removeClass("font-color");
        });
    });
    
    $(document).ready(function () {
        var newImage = new Image();//预载入图片
        var oldImage = $("#e-business img").attr("src");
        newImage.src = 'img/2.png';
        $("#e-business").hover(function () {//鼠标滑过切换图片
            $("#e-business img").attr("src", newImage.src);
            $("#e-business span").addClass("font-color");
        }, function () {
            $("#e-business img").attr("src", oldImage);
            $("#e-business span").removeClass("font-color");
        });
    });
   
</script>
</html>