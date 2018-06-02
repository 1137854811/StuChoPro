<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'input.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    	<h1>用户数据</h1>
    	<table border="1">
    		<tr>
    			<th>ID</th>
    			<th>Username</th>
    			<th>Birthday</th>
    			<th>Sex</th>
    			<th>Address</th>
    		</tr>
    		<tr>
    			<td>${user.id }</td>
    			<td>${user.username }</td>
    			<td>${user.birthday }</td>
    			<td>${user.sex }</td>
    			<td>${user.address }</td>
    		</tr>
    	</table>

  </body>
</html>
