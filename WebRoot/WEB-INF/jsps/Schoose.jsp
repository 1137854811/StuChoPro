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
    
    <title>学生选题</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="/MyPractice/JsCheck.js" charset="gb2312"></script>
	<style type="text/css">
		table {
			border-collapse: collapse;
			border-bottom: 2px soild;
		}
		table td {
			border-top: 1px solid;
			border-bottom: 1px solid;
		}
			
	</style>
  </head>
  
  <body>
	 <jsp:include page="student.jsp"></jsp:include>
	<center>
	
	<form action="StudentChoose.do" method="post" >
	 <table  cellpadding="10" cellspacing="10">
	 <tr align="center"><th>&nbsp;&nbsp;&nbsp;&nbsp;课题id&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;课题name&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;老师id&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;老师name&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;操作&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th></tr>

		<c:forEach var="n" items="${StuSproject }">
	   		<tr><td align="center">${n.bno }</td><td align="center">${n.bname }</td><td align="center">${n.tno }</td><td align="center">${n.tname }</td><td align="center"><button style="background-color: darkturquoise;color: white;height: 30px;width: 50px;border-radius:8px;" name="SchooseKe" type="submit" value="${n.bno }" onclick="return judge1();">选择</button></td></tr>
	   	</c:forEach>
     </table>
     </form>
     </center>
  </body>
</html>
