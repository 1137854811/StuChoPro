<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="/MyPractice/JsCheck.js" charset="gb2312"></script>
  </head>
  
  <body>
	<jsp:include page="student.jsp"></jsp:include>
    
	<center>
	<form action="ChangeStuInf.do"  method="post">
	<table  cellpadding="5" cellspacing="5">
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr><td>账号：</td><td><input type="text" name="id" readonly="readonly" value="${StuInf.id }" required="required" ></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
		<tr><td>密码：</td><td><input type="password" name="password"  value="${StuInf.password }" required="required"></td></tr>
		<tr><td>密码确认：</td><td><input type="password" name="password1" value="${StuInf.password1 }" required="required"></td></tr>
		<tr><td>姓名：</td><td><input type="text" name="name" value="${StuInf.name }" required="required"></td></tr>
		<tr><td>年龄：</td><td><input type="text" name="age" value="${StuInf.age }" required="required"></td></tr>
		<tr><td>性别：</td><td><input type="text" name="sex" value="${StuInf.sex }" required="required"></td></tr>
		<tr><td>班级：</td><td><input type="text" name="class1" value="${StuInf.class1 }" required="required"></td></tr>
		<tr><td>提示信息：</td><td><input type="text" name="prompt" value="${StuInf.prompt }" required="required"></td></tr>
		<tr><td>email:</td><td><input type="email" name="email" value="${StuInf.email }" required="required"></td></tr>

	</table>
		<br>
		<input id="submit1"  onclick="return change();" type="submit" value="修改" style="height: 30px;width: 100px;color: white;border-radius:8px;background-color: black;">
  	</form>
  	</center>
  	<script type="text/javascript">
  		window.onload=function(){
			alert("若要修改信息，可直接在文本框修改信息，然后点击修改即可~~~");
		}
  	</script>
  </body>
</html>
