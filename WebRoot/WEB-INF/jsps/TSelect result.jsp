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
    
    <title>选题结果</title>
    
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
  <style type="text/css">
		table {
			border-collapse: collapse;
			
			border-bottom: 2px soild;
		}
		table td {
			border-top: 1px solid;
			border-bottom: 1px solid;
			margin-right: 500px auto;
			
		}
			
	</style>
  <body>
    <jsp:include page="teacher.jsp"></jsp:include>
	<center>
	<form action="ManageResult.do" method="post" >
	 <table cellpadding="10">
	 <tr><th>&nbsp;&nbsp;&nbsp;&nbsp;课题id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;课题name&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;学生id&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;学生姓名&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;老师id&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;操作&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th></tr>
		<c:forEach var="n" items="${TSelect }">
	   		<tr><td align="center" >${n.bno }</td><td align="center">${n.bname }</td><td align="center">${n.sno }</td><td align="center">${n.sname }</td><td align="center">${n.tno }</td><td align="center"><button style="background-color: darkturquoise;color: white;height: 30px;width: 50px;border-radius:8px;" name="SchooseKe" type="submit" value="${n.sno }" onclick="return judge1();">删除</button></td></tr>
	   	</c:forEach>
     </table>
     </form>
     </center>
  </body>
</html>
