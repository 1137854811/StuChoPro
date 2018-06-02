<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'RAddStu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	

  </head>
  
  <body>
  <jsp:include page="root.jsp"></jsp:include>
  <center>
  
    <form action="RAddStu.do" method="post">
    	  <table cellpadding="5px" cellspacing="5px">
	    		<tr><td>学号：</td><td><input type="text" name="id" id="input1" placeholder="输入学号" required="required"></td></tr>
	    		<tr><td>密码：</td><td><input type="password" name="password" required="required"></td></tr>
	    		<tr><td>密码确认：</td><td><input type="password" name="password1" placeholder="密码确认" required="required"></td></tr>
	    		<tr><td>姓名：</td><td><input type="text" name="name" placeholder="要输入自己的真实姓名" required="required"></td></tr>
	    		<tr><td>性别：</td><td><font  color="black" size="3" >男</font><input type="radio" class="radio" name="sex" value="男" required="required"><font color="black" size="3">女</font><input class="radio" type="radio" name="sex" required="required" value="女"></td></tr>
	    		<tr><td>年龄：</td><td><input type="number" name="age" required="required"></td></tr>
	    		<tr><td>班级：</td><td><input type="text" name="class1" required="required"></td></tr>
	    		<tr><td>提示：</td><td><input type="text" name="prompt" placeholder="密码忘记时提示" required="required"></td></tr>
	    		<tr><td>邮箱：</td><td><input type="email" name="email" required="required"></tr>
	    </table>
    	<button type="submit" name="submit" value="submit" style="height: 30px;width:100px;color: white;border-radius:8px;background-color: green;">提交</button>
    </form>
    </center>
  </body>
</html>
