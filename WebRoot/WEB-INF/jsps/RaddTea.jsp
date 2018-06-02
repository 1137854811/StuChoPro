<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加教师</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
  <jsp:include page="root.jsp"></jsp:include>
    <center>
  		
  		<form action="AddTeas.do" method="post">
	  		<table cellpadding="5px" cellspacing="5px">
	    		<tr><td>账号：</td><td><input type="text" name="id"  placeholder="输入注册账号" required="required"></td></tr>
	    		<tr><td>密码：</td><td><input type="password" name="password" required="required"></td></tr>
	    		<tr><td>密码确认：</td><td><input type="password" name="password2" placeholder="密码确认" required="required"></td></tr>
	    		<tr><td>姓名：</td><td><input type="text" name="name" placeholder="输入真实姓名" required="required"></td></tr>
	    		<tr><td>年龄：</td><td><input type="number" name="age" required="required"></td></tr>
	    		<tr><td>性别：</td><td><font  color="black" size="3" >男</font><input type="radio" class="radio" name="sex" value="男" required="required"><font color="black" size="3">女</font><input class="radio" type="radio" name="sex" required="required" value="女"></td></tr>
	    		<tr><td>电话：</td><td><input type="number" name="phone" required="required"></td></tr>
	    	</table>
	    		
	    	<input type="submit" value="提交" class="submit" style="height: 30px;width:100px;color: white;border-radius:8px;background-color: green;">
	    </form>  
  	</center>
  </body>
</html>
