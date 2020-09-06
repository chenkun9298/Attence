<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
     <script language="JavaScript" src="${ pageContext.request.contextPath}/layui/layui.all.js" charset="utf-8"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>考勤管理</title>
<style>
.layui-table-cell{
    height:36px;
    line-height: 36px;
}
</style>

</head>

<body>
	
<table class="layui-table" lay-filter="test">
  <thead>
    <tr>
 
      <th lay-data="{field:'eid', sort:true} ">工号</th>
      <th lay-data="{field:'ename',  }">姓名</th>
        <th lay-data="{field:'dept',  }">部门</th>
      <th lay-data="{field:'oneTimecard'}">上班打卡时间</th>
      <th lay-data="{field:'twoTimecard'}">下班打卡时间</th>
      <th lay-data="{field:'tool'}">操作</th>

    </tr> 
  </thead>
   <tbody>
        	<c:forEach items="${listallClock}" var="listallClock">
				<tr>
				   
					<td width="40">${listallClock.eid }</td>
					<td width="40">${listallClock.ename }</td>
					<td width="40">${listallClock.dept }</td>
					<td width="40"><c:if test="${ empty listallClock.oneTimecard  }">缺勤</c:if> <c:if test="${not empty listallClock.oneTimecard  }">${listallClock.oneTimecard}</c:if></td>
					<td width="40"><c:if test="${ empty listallClock.twoTimecard  }">缺勤</c:if> <c:if test="${not empty listallClock.twoTimecard  }">${listallClock.twoTimecard}</c:if></td>
					
					<td width="80">
					
                    <button type="button" id="funct"class="layui-btn layui-btn-danger" onclick="Del(${listallClock.eid})"><i class="layui-icon"></i></button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
		  
</table>
</body>

<script>
 

 function myFunction(timecard)
{
   if(timecard==null){
   		timecard="queqing";
   }
    return timecard;
}
        
function Del(eid){
		if(window.confirm("是否删除该记录？")){
			window.location.href = "TimecardDel.do?eid="+eid;
		}
	}

layui.use('table', function(){
	  var table = layui.table;
	  table.init('test',{
	    page:true
	  });
	});   
	
</script>

</html>
