<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="login.css">
	

	</head>
	<body>
		<p align="right"><font color="white">没有账号？，<a href="zhuce.jsp">进行注册</a></font></p>
		<div id="div1">
		    <form action="LoginCheck.do" method="post">
			
				<br><br><br><br><br><br><br><br><br><br /><br />
				<table align="center" cellpadding="5" cellspacing="10" class="f">
					<tr><!--<td>账户</td>--><td align="center"><input type="text" name="id" id="id" class="inp" required="required" placeholder="账号/学号/邮箱"></td></tr>
					<tr><!--<td>密码</td>--><td align="center"><input type="password" name="password" id="password" class="inp" required="required" placeholder="登陆密码" onshow="onshow" ></td></tr>
					<tr><!--<td>身份</td>--><td align="center"><select name="select"><option value="student">学生</option><option value="teacher">老师</option><option value="root">管理员</option></select></td></tr>
				</table>   
				<center>
					<br>
					<input align="center" class="in" type="submit" onclick="" value="login">
					
				</center>
				
			</form>
		</div>
	</body>
</html>
