<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>人脸识别登录</title>
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="css/main.css" />
	</head>
	<body>
		<div class="container">
			<div class="container-fluid centerdiv">
				<!--<form id="loginform" action="Main.html" onsubmit="return check()">-->
				<h2 class="title">人脸识别</h2>
				
				<div class="login-div cen">
					<div id="face-box">
						<video id="video"></video>
					</div>
					<div id="overflow">
						
					</div>
					<div style="display: none;">
						<canvas id="canvas"></canvas>
					</div>
				</div>
				<!--</form>-->
			</div>
		</div>
	</body>
	<script type="text/javascript" src="jquery-3.3.1/jquery-3.3.1.min.js" ></script>
	<script type="text/javascript" src="js/GetFace.js" ></script>
	<script type="text/javascript" src="js/Login.js" ></script>
	<script type="text/javascript" src="js/LoginAjax.js" ></script>
</html>

