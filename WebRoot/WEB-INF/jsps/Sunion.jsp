<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'union.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<frameset rows="20%,*" frameborder="no">
    	<frame src="part1.jsp">
   
    	<frameset cols="15%,*">
    	    <frame src="parttwo.jsp">
      		<frame src="part3.jsp" name="main_right">
    	</frameset>
		<frame />
 	</frameset>
  </head>
  
  <body>
   
  </body>
</html>
