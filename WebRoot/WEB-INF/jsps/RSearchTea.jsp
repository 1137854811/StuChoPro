<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'RSearchTea.jsp' starting page</title>
    
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
  		<form action="ChangeTeaInf.do" method="post">
	  		<table cellpadding="5px" cellspacing="5px">
				<tr><td>姓名：</td><td><input type="text" name="name" value="${JiansuoTeacher.id }"></td></tr>
				<tr><td>账号：</td><td><input type="text" name="id" readonly="readonly" value="${JiansuoTeacher.password }"></td></tr>
				<tr><td>密码：</td><td><input type="password" name="password"  value="${JiansuoTeacher.password2 }"></td></tr>
				<tr><td>密码确认：</td><td><input type="password" name="password2" value="${JiansuoTeacher.name }"></td></tr>
				<tr><td>年龄：</td><td><input type="text" name="age" value="${JiansuoTeacher.age }"></td></tr>
				<tr><td>性别：</td><td><input type="text" name="sex" value="${JiansuoTeacher.sex }"></td></tr>
				<tr><td>电话：</td><td><input type="number" name="phone" value="${JiansuoTeacher.phone }"></td></tr>
	    	</table>
	    		
	    	<button type="submit" value="Change2" class="jiansuo" style="background-color: blue;color: white;height: 30px;width: 100px;border-radius:8px;" name="Change">修改</button>
	    </form>  
  	</center>
  	  	<script type="text/javascript">
  		window.onload=function(){
			alert("若要修改信息，可直接在文本框修改信息，然后点击修改即可~~~");
		}
  	</script>
  </body>
</html>
