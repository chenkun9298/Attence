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
<title>班级管理</title>


</head>

<body>
	
<table class="layui-table" lay-filter="test" id="test">
  <thead>
    <tr>
 
      <th lay-data="{field:'eid',  sort:true}">工号</th>
      <th lay-data="{field:'ename',  }">姓名</th>
      <th lay-data="{field:'dept',  }">部门</th>
      <th lay-data="{field:'sex',}">性别</th>
      <th lay-data="{field:'age',}">年龄</th>
     

    </tr> 
  </thead>
   <tbody>
        	<c:forEach items="${listallEmployee}" var="Employee">
				<tr>
				   
					<td width="40">${Employee.eid }</td>
					<td width="40">${Employee.ename }</td>
					<td width="40">${Employee.dept }</td>
					<td width="40">${Employee.sex}</td>
					<td width="40">${Employee.age}</td>
					
					
				</tr>
			</c:forEach>
		</tbody>
		  
</table>
</body>
<script src="layui/layui.js"></script>
<script>
 

layui.use('table', function(){
	  var table = layui.table;
	  table.init('test',{
	    page:true
	  });
	});   
</script>
</html>
