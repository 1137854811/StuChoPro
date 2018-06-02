<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>课题添加</title>
    
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
	<%
		String id=(String)session.getAttribute("teacher");
		System.out.println(id);
	 %>
    <center>
		<form action="InsertProject.do" method="post" >
			<table cellpadding="5" cellspacing="5" >
				<tr></tr>
				<tr></tr>
				<tr></tr>
				<tr></tr>	
				<tr><td>课题编号：</td><td><input type="text" name="cno" required="required"></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
				<tr><td>课题名称：</td><td><input type="text" name="cname" required="required"></td></tr>
				<tr><td>课题类型：</td><td><input type="text" name="ctype" required="required"></td></tr>
				<tr><td>课题老师号：</td><td><input type="text" name="tid" value=<%=id %> readonly="readonly"></td></tr>
				<tr><td>课题老师：</td><td><input type="text" name="cteacher" value="${TeaName }" readonly="readonly"></td></tr>
				
			</table>
			
				<br><input type="submit" value="提交" onclick="return submit1();" style="background-color: blue;color: white;height: 30px;width: 50px;border-radius:8px;">
	  </form>
  	</center>
  </body>
</html>
