<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
      <frameset rows="20%,*" frameborder="no">
    	<frame src="Rootpart1.jsp">
   
    	<frameset cols="15%,*">
    	    <frame src="RootPart2.jsp">
      		<frame src="RootPart3.jsp" name="main_right">
    	</frameset>
		<frame />
 	</frameset>
  <body>

  </body>
</html>
