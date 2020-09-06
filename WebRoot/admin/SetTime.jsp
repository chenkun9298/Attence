<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="layui/css/layui.css" >
  </head>
  
  <body>
  <form class="layui-form" action="toSetTime.do" method="post" style="position:absolute; left: 550px;top:50px;"  >

 <div class="layui-form-item">
    <label class="layui-form-label" >上班时间</label>
    <div class="layui-input-inline">
      <input type="text" name="uptime" required  lay-verify="required"   class="layui-input" value="${worktime.up}" >
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">下班时间</label>
    <div class="layui-input-inline">
      <input type="text" name="downtime" required  lay-verify="required"  class="layui-input" value="${worktime.down}" >
    </div>
  </div>
 
  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" type="submit" >设 置</button>

    </div>
  </div>

</form>
<script src="layui/layui.js"></script>
<script>

layui.use('form', function(){
  var form = layui.form; 
 form.render();
 
form.on('select(sub)', function(data){

 var select=data.elem[data.elem.selectedIndex].value;
 
});


});

</script>
  </body>
</html>
