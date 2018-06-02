<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'RSearchStu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="style2.css">

  </head>
  
  <body>
  	<jsp:include page="root.jsp"></jsp:include>
    <center>
	<form action="ChangeStudent.do"  method="post">
	<table  cellpadding="5" cellspacing="5">
		<tr><td>账号：</td><td><input type="text" name="id" readonly="readonly" value="${student.id }" required="required" ></td></tr>
		<tr><td>密码：</td><td><input type="password" name="password"  value="${student.password }" required="required"></td></tr>
		<tr><td>密码确认：</td><td><input type="password" name="password1" value="${student.password1 }" required="required"></td></tr>
		<tr><td>姓名：</td><td><input type="text" name="name" value="${student.name }" required="required"></td></tr>
		<tr><td>年龄：</td><td><input type="text" name="age" value="${student.age }" required="required"></td></tr>
		<tr><td>性别：</td><td><input type="text" name="sex" value="${student.sex }" required="required"></td></tr>
		<tr><td>班级：</td><td><input type="text" name="class1" value="${student.class1 }" required="required"></td></tr>
		<tr><td>提示信息：</td><td><input type="text" name="prompt" value="${student.prompt }" required="required"></td></tr>
		<tr><td>email:</td><td><input type="email" name="email" value="${student.email }" required="required"></td></tr>
		
	</table>
		<br>
		<button name="change" type="submit" value="Change" style="background-color: blue;color: white;height: 30px;width: 100px;border-radius:8px;">修改</button>
  		
  	</form>
  	</center>
  	<script type="text/javascript">
  		window.onload=function(){
			alert("若要修改信息，可直接在文本框修改信息，然后点击修改即可~~~");
		}
  	</script>
  </body>
</html>
