<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
      <meta charset="UTF-8">
  <title>后台登陆</title>
  <link rel="stylesheet" href="css/login.css">

    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" href="layui/css/layui.css" >
  </head>
  
  <body>

<div class="login-box">
  <h2>管理员登录</h2>
  <form action="login.do" method="post" >
    <div class="user-box">
      <input type="text" name="username" id="username"  required="" autocomplete="off" >
      <label>用户名</label>
    </div>
    <div class="user-box">
      <input type="password" name="password" id="password" required="">
      <label>密码</label>
    </div>
   
      <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" type="submit" >登陆</button>

    </div>
  </div>
    
    
</form>
</div>


  
</body>
</html>
