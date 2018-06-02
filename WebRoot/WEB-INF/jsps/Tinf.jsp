<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Tinf.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="/MyPractice/JsCheck.js" charset="gb2312"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  	
  </head>
  
  <body>
    <jsp:include page="teacher.jsp"></jsp:include>
    
	<center>
	<form action="UpdateTea.do" method="post" >
	<table  cellpadding="5" cellspacing="5"  frame="void">
	<tr></tr>
		<tr><td>姓名：</td><td><input type="text" name="name" value="${Tinf.name}"></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
		<tr><td>账号：</td><td><input type="text" name="id" readonly="readonly" value="${Tinf.id }"></td></tr>
		<tr><td>密码：</td><td><input type="password" name="password"  value="${Tinf.password }"></td></tr>
		<tr><td>密码确认：</td><td><input type="password" name="password2" value="${Tinf.password2 }"></td></tr>
		<tr><td>年龄：</td><td><input type="text" name="age" value="${Tinf.age }"></td></tr>
		<tr><td>性别：</td><td><input type="text" name="sex" value="${Tinf.sex }"></td></tr>
		<tr><td>电话：</td><td><input type="number" name="phone" value="${Tinf.phone }"></td></tr>
	</table>
		<br>
		<input type="submit" value="修改" style="height: 30px;width: 100px;color: white;border-radius:8px;background-color: darkturquoise;" onclick="return change();">
  	</form>
  	</center>
  	  	<script type="text/javascript">
  		window.onload=function(){
			alert("若要修改信息，可直接在文本框修改信息，然后点击修改即可~~~");
		}
  	</script>
  </body>
</html>
