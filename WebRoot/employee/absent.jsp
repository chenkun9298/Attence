<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>请假证明</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="layui/css/layui.css" >
  </head>

  <body>

    
    
    
     <form class="layui-form" action="addProduct.do"enctype="multipart/form-data" method="post" style="position:absolute; left: 550px;top:50px;"  >

  

  
  <div class="layui-form-item">
    <label class="layui-form-label" >工号</label>
    <div class="layui-input-inline">
      <input type="text" name="eid" required  lay-verify="required"  autocomplete="off" class="layui-input">
    </div>
  </div>
      <div class="layui-form-item">
    <label class="layui-form-label">图片</label>
     
     <div class="layui-input-inline">     
     <input type="file" name="file" class="layui-input">
    </div>
    
     <div class="layui-form-item">
    <label class="layui-form-label">打卡时间</label>
     <div class="layui-input-inline">
      <input type="text" name="loadTime"  id="loadTime" readonly="readonly" class="layui-input">
    </div>
  </div>
    
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" type="submit" >添  加</button>

    </div>
  </div>
 
</form>
</body>
<script src="layui/layui.js"></script>
 <script>

layui.use('form', function(){
  var form = layui.form;   
});


/**
     *获取当前时间
     *format=1精确到天
     *format=2精确到分
    */
    function getCurrentDate(format) {
      var now = new Date();
      var year = now.getFullYear(); //得到年份
      var month = now.getMonth();//得到月份
      var date = now.getDate();//得到日期
      var day = now.getDay();//得到周几
      var hour = now.getHours();//得到小时
      var minu = now.getMinutes();//得到分钟
      var sec = now.getSeconds();//得到秒
      month = month + 1;
      if (month < 10) month = "0" + month;
      if (date < 10) date = "0" + date;
      if (hour < 10) hour = "0" + hour;
      if (minu < 10) minu = "0" + minu;
      if (sec < 10) sec = "0" + sec;
      var time = "";
      //精确到天
      if(format==1){
        time = year + "-" + month + "-" + date;
      }
      //精确到分
      else if(format==2){
        time = year + "-" + month + "-" + date+ " " + hour + ":" + minu + ":" + sec;
      }
      return time;
    }

    document.getElementById('loadTime').value= getCurrentDate(2);
    
</script>
</html>
