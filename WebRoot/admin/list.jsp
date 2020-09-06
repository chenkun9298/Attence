<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
<title>请假证明</title>
<style type="text/css">
    #images{
        width: 50px;
        height: 50px;
    }
    
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
 
      <th lay-data="{field:'pid',sort:true,height:80 } ">序号</th>
      <th lay-data="{field:'eid', height:80 }">工号</th>
      <th lay-data="{field:'ename',height:80 }">姓名</th>
      <th lay-data="{field:'dept',height:80}">部门</th>
      <th lay-data="{field:'pimage',height:80}">请假证明</th>
       <th lay-data="{field:'loadTime',height:80}">上传时间</th>
       <th lay-data="{field:'tool',height:80}">操作</th>
    

    </tr> 
  </thead>
   <tbody>
        	<c:forEach items="${listallProduct}" var="product" >
				<tr>
				   <td >${product.pid}</td>
					<td >${product.eid }</td>
					<td >${product.ename }</td>
					<td >${product.dept }</td>					
					<c:if test="${product.pimage !=null }">
                <td ><img src="images/${product.pimage }" width="55"/></td>
                   
                </c:if>     
					<td >${product.loadTime }</td>	
					<td >
					<button type="button" id="fd"class="layui-btn  layui-btn" onclick="fd(${product.pid})">放大</button>
                    <button type="button" id="funct"class="layui-btn layui-btn-danger layui-btn" onclick="Del(${product.eid})"><i class="layui-icon"></i></button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
		  
</table>
</body>
<script src="layui/layui.js"></script>
<script>
 
function fd(pid){
		
			window.location.href = "fd.do?pid="+pid;
		
	}
        
function Del(eid){
		if(window.confirm("是否删除该记录？")){
			window.location.href = "absentdel.do?eid="+eid;
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