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
      <script language="JavaScript" src="${ pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>班级管理</title>
<style>
.layui-table-cell{
    height:36px;
    line-height: 36px;
}
</style>
</head>

<body>
	
<table class="layui-table" lay-filter="test" id="test">
  <thead>
    <tr>
 
      <th lay-data="{field:'eid',sort:true,height:80 } ">工号</th>
      <th lay-data="{field:'ename', height:80 }">姓名</th>
      <th lay-data="{field:'dept',height:80 }">部门</th>
      <th lay-data="{field:'sex',height:80}">性别</th>
      <th lay-data="{field:'age',height:80}">年龄</th>
      <th lay-data="{field:'tool'}">操作</th>

    </tr> 
  </thead>
   <tbody>
        	<c:forEach items="${listallEmployee}" var="Employee">
				<tr>
				   
					<td >${Employee.eid }</td>
					<td >${Employee.ename }</td>
					<td >${Employee.dept }</td>
					<td >${Employee.sex}</td>
					<td >${Employee.age}</td>
					
					<td >
					<button type="button" id="edit" class="layui-btn layui-btn-xm " onclick="edit(${Employee.eid})"><i class="layui-icon"></i></button></button>
                    <button type="button" id="funct" class="layui-btn layui-btn-danger layui-btn-xm " onclick="Del(${Employee.eid})"><i class="layui-icon"></i></button></button>
					</td>
					
				</tr>
			</c:forEach>
		</tbody>
		  
</table>
</body>
<script src="layui/layui.js"></script>
<script>
 
 
 function edit(eid){
	
			window.location.href = "toemployeeEdit.do?eid="+eid;
		
	}
 
 
        
function Del(eid){
		if(window.confirm("是否删除该员工？")){
			window.location.href = "employeedel.do?eid="+eid;
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
