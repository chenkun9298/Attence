<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>公司考勤后台</title>
</head>
<frameset rows="50,*" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="${ pageContext.request.contextPath}/admin/top.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="200,*" frameborder="no" border="0" framespacing="0">
    <frame src="${ pageContext.request.contextPath}/admin/left.jsp" name="leftFrame" scrolling="no" noresize="noresize" id="leftFrame" title="leftFrame" />
    <frame src="${ pageContext.request.contextPath}/admin/index.jsp" name="rightFrame" id="rightFrame" title="rightFrame" />
  </frameset> 
</frameset>
<noframes><body>
</body></noframes>
</html>
