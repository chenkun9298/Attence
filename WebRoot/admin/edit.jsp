<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    
<head>
    <base href="<%=basePath%>">
      <meta charset="UTF-8">
  <title>员工打卡</title>
 <link rel="stylesheet" href="layui/css/layui.css" >

    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

<form class="layui-form" action="employeeEdit.do"  id="form" style="position:absolute; left: 550px;top:50px;"  >

 <div class="layui-form-item">
    <label class="layui-form-label" >工号</label>
    <div class="layui-input-inline">
      <input type="text" id="eid"  name="eid" readonly="readonly" class="layui-input" value="${employee.eid}">
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">姓名</label>
    <div class="layui-input-inline">
      <input type="text" name="ename" required  lay-verify="required" autocomplete="off" class="layui-input">
    </div>
  </div>
  
  
  <div class="layui-form-item">
    <label class="layui-form-label">部门</label>
     <div class="layui-input-inline">
      <input type="text" name="dept" required  lay-verify="required" autocomplete="off" class="layui-input">
    </div>
  </div>
  
  
   <div class="layui-form-item">
    <label class="layui-form-label">性别</label>
     <div class="layui-input-inline">
      <input type="radio" name="sex" value="男" title="男">
      <input type="radio" name="sex" value="女" title="女" checked>
    </div>
  </div>
  
    <div class="layui-form-item">
    <label class="layui-form-label">年龄</label>
     <div class="layui-input-inline">
      <input type="text" name="age" required  lay-verify="required" autocomplete="off" class="layui-input">
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" type="submit" >确 认 修 改</button>

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
	
	
	
	
	


