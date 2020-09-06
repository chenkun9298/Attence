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

<form class="layui-form" action="Clockout.do" id="form" style="position:absolute; left: 550px;top:50px;"  >

 <div class="layui-form-item">
    <label class="layui-form-label" >工号</label>
    <div class="layui-input-inline">
      <input type="text" id="eid"  name="eid" readonly="readonly" class="layui-input">
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
    <label class="layui-form-label">打卡时间</label>
     <div class="layui-input-inline">
      <input type="text" name="ClocktoutTime"  id="ClocktoutTime" readonly="readonly" class="layui-input">
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" type="submit" >立 即 打 卡</button>

    </div>
  </div>

</form>
<script src="layui/layui.js"></script>

<script>

layui.use('form', function(){
  var form = layui.form;   
});


var url = location.search; //获取url中"?"符后的字串 ?vm_id=2
                                var id;
                                 if(url.indexOf("?") != -1) {
                                  str = url.substr(1);
                                  strs = str.split("=userId");										
                                  id = strs[1];
                                }
document.getElementById('eid').value= id;

	
	

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
 
    document.getElementById('ClocktoutTime').value= getCurrentDate(2);
    
</script>
</body>
</html>
	
	
	
	
	


