<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>审核课题</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="/MyPractice/JsCheck.js" charset="gb2312"></script>
	
	<link rel="stylesheet" type="text/css" href="style2.css">
  </head>
  
  <body>
	<jsp:include page="root.jsp"></jsp:include>
	<center>
	<form action="PassProject.do" method="post" >
	 <table cellpadding="10">
	 <tr><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;课题id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;课题name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;课题类型&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;课题老师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老师id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;操作&nbsp;&nbsp;&nbsp;&nbsp;</th></tr>
    	<c:forEach items="${Rcheckketi }" var="n">
     		<tr><td align="center">${n.cno }</td><td align="center">${n.cname }</td><td align="center">${n.ctype }</td><td align="center">${n.cteacher }</td><td align="center">${n.tid }</td><td align="center"><button value="${n.cno }" name="pass" class="jiansuo" type="submit" onclick="return pass();" style="background-color: blue;color: white;height: 30px;width: 50px;border-radius:8px;">通过</button>&nbsp;<button class="delete" value="${n.cno }" name="RdeleteK" type="submit" onclick="return delete1();" style="background-color: black;color: white;height: 30px;width: 50px;border-radius:8px;">删除</button></td></tr>
     	</c:forEach>
     </table>
     </form>
     </center>
  </body>
</html>
