<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>教师系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  <frameset rows="20%,*" frameborder="no">
    	<frame src="Teapart1.jsp">
   
    	<frameset cols="15%,*">
    	    <frame src="TeaPart2.jsp">
      		<frame src="TeaPart3.jsp" name="main_right">
    	</frameset>
		<frame />
 	</frameset>
  <body>
   <!-- <h1>欢迎来到老师系统</h1><br /><br />
		<div class="nav">
			<ul>
				li><a href="login.jsp">&nbsp;&nbsp;&nbsp;&nbsp;首页&nbsp;&nbsp;|&nbsp;</a></li
				<li><a href="Tmanageketi.do">课题管理&nbsp;&nbsp;|&nbsp;</a></li>
				<li><a href="Taddketi.do">课题添加&nbsp;&nbsp;|&nbsp;</a></li>
				<li><a href="TSelect result.do">选题结果&nbsp;&nbsp;|&nbsp;</a></li>
				<li><a href="Tstudent.do">学生管理&nbsp;&nbsp;|&nbsp;</a></li>
				<li><a href="Tinf.do">个人信息&nbsp;&nbsp;|&nbsp;</a>	</li>
				<li><a href="login.jsp">退出</a>
			</ul>
		</div><br /><br /><br /><br />
  </body> -->
</html>
