<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${ pageContext.request.contextPath}/layui/css/layui.css" rel="stylesheet" type="text/css" />

<script language="JavaScript" src="${ pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>


</head>

<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">公司考勤后台</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
   
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="../img/ymh.png" class="layui-nav-img">
         管理员
        </a>
       
      </li>
      <li class="layui-nav-item"><a href="${ pageContext.request.contextPath}/Exit.do" target="_parent">退出</a></li>
    </ul>
  </div>

</body>

</html>
