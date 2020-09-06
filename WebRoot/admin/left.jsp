<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 
 <link href="${ pageContext.request.contextPath}/layui/css/layui.css" rel="stylesheet" type="text/css" />

 <script type="text/javascript" src="${ pageContext.request.contextPath}/js/jquery.js"></script>
  <script type="text/javascript" src="${ pageContext.request.contextPath}/layui/layui.js"></script>
  </head>
  
  <body>
   <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">员工管理</a>
          <dl class="layui-nav-child">
            <dd><a href="${ pageContext.request.contextPath}/add.do" target="rightFrame">添加员工</a></dd>
            
            <dd><a href="${ pageContext.request.contextPath}/listall.do" target="rightFrame">管理员工</a></dd>
        
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">考勤管理</a>
          <dl class="layui-nav-child">
            <dd><a href="${ pageContext.request.contextPath}/listallClock.do" target="rightFrame">考勤信息</a></dd>
  			<dd><a href="${ pageContext.request.contextPath}/list.do" target="rightFrame">请假信息</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">时间设置</a>
          <dl class="layui-nav-child">
         
            <dd><a href="${ pageContext.request.contextPath}/SetTime.do" target="rightFrame">上下班时间设置</a></dd>
            
          </dl>
        </li>
      </ul>
    </div>
  </div>
  
  </body>
  <script>
//注意：导航 依赖 element 模块，否则无法进行功能性操作
layui.use('element', function(){
  var element = layui.element;
  
  //…
});
</script>
</html>
