<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'part1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <style>
		.h{
			font-family: 华文行楷;
			text-align: center;
			font-size: 40px;
			margin: 0;
		}
		h5{
			float: right;
		}
	</style>
	<body >
		<div>
			<h1 class="h">学生毕业设计选题系统</h1>
			
			
			<h5>你好,<%=request.getSession().getAttribute("student") %></h5>
			<hr />
		</div>
		
	</body>
</html>
