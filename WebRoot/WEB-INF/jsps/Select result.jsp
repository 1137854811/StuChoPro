<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
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
	
	<script charset="gb2312" type="text/javascript" src="/MyPractice/JsCheck.js"></script>
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
	<form action="SDeleteKT.do" method="post" >
	 <table cellpadding="10px" cellspacing="10px">
	 <tr><th>&nbsp;&nbsp;&nbsp;&nbsp;课题id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;课题name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学生id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学生姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老师id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;操作&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th></tr>
		<c:if test="${not empty StudentProjectOne}">
     		<tr><td align="center">${StudentProjectOne.bno }</td><td align="center">${StudentProjectOne.bname }</td><td align="center">${StudentProjectOne.sno }</td><td align="center">${StudentProjectOne.sname }</td><td align="center">${StudentProjectOne.tno }</td><td align="center"><button name="SDeleteKT" value="${StudentProjectOne.sno }" type="submit" style="background-color: blue;color: white;height: 30px;width: 50px;border-radius:8px;" onclick="return check();">退选</button></td></tr>
     	</c:if>
     </table>
     </form>
     </center>
  </body>
</html>
